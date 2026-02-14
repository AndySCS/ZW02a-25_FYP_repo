class mxu_monitor extends uvm_monitor;

    virtual mxu_intf mxu_if;
    virtual top_intf top_if;

    `uvm_component_utils(mxu_monitor)
    function new(string name = "mxu_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

endclass //mxu_monitor extends superClass

function void mxu_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual mxu_intf)::get(this, "", "mxu_if", mxu_if))begin
        `uvm_fatal(get_name(), "mxu monitor fail to get mxu if")
    end
    if(!uvm_config_db#(virtual top_intf)::get(this, "", "top_if", top_if))begin
        `uvm_fatal(get_name(), "mxu monitor fail to get top if")
    end
endfunction

task mxu_monitor::main_phase(uvm_phase phase);
    
    int iram_cnt;
    int wram_cnt;
    int perceptron_cnt [15:0];
    int pack_cnt [15:0];
    int num_of_pack = 4;
    int input_size = 785;
    int perceptron_size = 56;
    int input_check_cnt;
    bit [785*4-1:0][7:0] iram_data;
    bit [785*16-1:0][7:0] wram_data;
    bit [127:0] wram_data_tmp;
    bit [784:0] [7:0] iram_data_all;
    bit mon_begin;

    model_read_transaction tr;

    tr = model_read_transaction::type_id::create("tr");
    iram_data_all = {8'b1, tr.img_array};

    while (1) begin 
        @(posedge mxu_if.clk);
        if (mxu_if.lsu_mxu_iram_vld[0]) begin
            iram_data[iram_cnt] = mxu_if.lsu_mxu_iram_pld[7:0];
            if(iram_data[iram_cnt] !== iram_data_all[iram_cnt%input_size]) begin
                `uvm_error(get_name(), $sformatf("data mismatch at index %0d, img index %d: iram_data = 0x%0h, img_array = 0x%0h", iram_cnt,iram_cnt%input_size, iram_data[iram_cnt], iram_data_all[iram_cnt%input_size]))
            end
            iram_cnt++;
        end
        for(int i = 0; i < 16; i++)begin
            if (mxu_if.lsu_mxu_wram_vld[i]) begin
                if(perceptron_cnt[i] == input_size) begin
                    perceptron_cnt[i] = 0; 
                    pack_cnt[i]++; 
                end
                wram_data_tmp =  mxu_if.lsu_mxu_wram_pld >> i*8;
                wram_data[perceptron_cnt[i] + i*input_size + pack_cnt[i]*input_size*16] = wram_data_tmp[7:0];
                wram_cnt++;
                perceptron_cnt[i]++;
            end
        end
        if(!(top_if.wfi & mon_begin))begin
        end
        else if(iram_cnt != input_size * num_of_pack) begin
            `uvm_error(get_name(), $sformatf("iram_cnt out of range: %0d", iram_cnt))
        end
        else if(wram_cnt != input_size*perceptron_size) begin
            `uvm_error(get_name(), $sformatf("wram_cnt out of range: %0d", wram_cnt))
        end
        else begin
            for (int i = 0; i < input_size; i++) begin
                if(wram_data[i] !== tr.first_layer_weight[i]) begin
                    `uvm_error(get_name(), $sformatf("data mismatch at index %0d: wram_data = 0x%0h, weight_array = 0x%0h", i, wram_data[i], tr.first_layer_weight[i]))
                end
            end
        end
        if(top_if.start_vld)begin
           mon_begin = 1;
        end
    end

endtask

