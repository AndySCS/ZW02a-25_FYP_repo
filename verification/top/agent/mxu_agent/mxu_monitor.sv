class mxu_monitor extends uvm_monitor;

    virtual mxu_intf mxu_if;
    virtual top_intf top_if;

    `uvm_component_utils(mxu_monitor)
    function new(string name = "mxu_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
    extern virtual task collect_in();

endclass //mxu_monitor extends superClass

function void mxu_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual mxu_intf)::get(this, "", "mxu_if", mxu_if))begin
        `uvm_fatal(get_name(), "mxu monitor fail to get mxu if")
    end
    if(!uvm_config_db#(virtual top_intf)::get(this, "", "top_if", top_if_if))begin
        `uvm_fatal(get_name(), "mxu monitor fail to get top if")
    end
endfunction

task mxu_monitor::main_phase(uvm_phase phase);
    
    int iram_cnt;
    int wram_cnt;
    int input_size = 785;
    bit [784:0][7:0] iram_data;
    bit [784:0][7:0] wram_data;

    model_read_transaction tr;

    tr = model_read_transaction::type_id::create("tr");

    while (1) begin 
        @(posedge mxu_if.clk);
        if (mxu_if.lsu_mxu_iram_vld[0]) begin
            iram_data[iram_cnt] = mxu_if.lsu_mxu_iram_pld[7:0];
            iram_cnt++;
        end
        if (mxu_if.lsu_mxu_wram_vld[0]) begin
            wram_data[wram_cnt] = mxu_if.lsu_mxu_wram_pld[7:0];
            wram_cnt++;
        end
        if(!top_if.wfi)begin
        end
        else if(iram_cnt != input_size) begin
            `uvm_error(get_name(), $sformatf("iram_cnt out of range: %0d", iram_cnt))
        end
        else if(wram_cnt != input_size) begin
            `uvm_error(get_name(), $sformatf("wram_cnt out of range: %0d", wram_cnt))
        end
        else begin
            for (int i = 0; i < input_size-1; i++) begin
                if(iram_data[i] !== tr.img_array[i]) begin
                    `uvm_error(get_name(), $sformatf("data mismatch at index %0d: iram_data = 0x%0h, img_array = 0x%0h", i, iram_data[i], tr.img_array[i]))
                end
            end
            for (int i = 0; i < input_size-1; i++) begin
                if(wram_data[i] !== tr.first_layer_weight[i]) begin
                    `uvm_error(get_name(), $sformatf("data mismatch at index %0d: wram_data = 0x%0h, weight_array = 0x%0h", i, wram_data[i], tr.first_layer_weight[i]))
                end
            end
        end
    end

endtask

