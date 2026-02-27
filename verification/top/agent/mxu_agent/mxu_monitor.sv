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
    int second_layer_input_size = 57;
    int perceptron_size = 56;

    bit [785*4+57-1:0] [7:0] iram_data;
    bit [785*56+569:0] [7:0] wram_data;
    bit [127:0]              wram_data_tmp;
    bit [784:0]        [7:0] iram_data_all;

    int                   first_layer_ouput [55:0];

    bit [56:0][7:0] second_layer_input;
    int mon_begin;
    bit [2:0] input_fsm;
    bit [2:0] perceptron0to15  = 3'b000;
    bit [2:0] perceptron16to31 = 3'b001;
    bit [2:0] perceptron32to47 = 3'b010;
    bit [2:0] perceptron48to55 = 3'b011;
    bit [2:0] second_layer     = 3'b100;

    int wram_data_idx;
    int wram_data_idx_scd_layer;
    int cur_pack;
    int cur_pack_addr;

    model_read_transaction tr;
    model_output_transaction tr_out;

    int mon_thd = ($test$plusargs("ffn_clip")) ? 1 : 0;

    tr = model_read_transaction::type_id::create("tr");
    tr_out = model_output_transaction::type_id::create("tr_out");

    iram_data_all      = {8'b1, tr.img_array};

    second_layer_input[55:0] = tr_out.cal_first_layer(tr);

    second_layer_input[56] = 8'b1;

    while (1) begin 
        @(posedge mxu_if.clk);
        if (mxu_if.lsu_mxu_iram_vld[0]) begin
            iram_data[iram_cnt] = mxu_if.lsu_mxu_iram_pld[7:0];
            if(input_fsm != second_layer)begin
                if(iram_data[iram_cnt] !== iram_data_all[iram_cnt%input_size]) begin
                    `uvm_error(get_name(), $sformatf("data mismatch at index %0d, img index %0d: iram_data = 0x%0h, img_array = 0x%0h"
                              , iram_cnt,iram_cnt%input_size, iram_data[iram_cnt], iram_data_all[iram_cnt%input_size]))
                end
            end
            else begin
                if(iram_data[iram_cnt] !== second_layer_input[iram_cnt - input_size * num_of_pack]) begin
                    `uvm_error(get_name(), $sformatf("data mismatch at index %0d, input index %0d: iram_data = 0x%0h, second_layer_input = 0x%0h"
                               , iram_cnt,iram_cnt - input_size * num_of_pack, iram_data[iram_cnt], second_layer_input[iram_cnt - input_size * num_of_pack]))
                end
            end
            iram_cnt++;
            if ((iram_cnt % input_size) == 0 && iram_cnt != 0) begin
                input_fsm++;
            end
        end
        for(int i = 0; i < 16; i++)begin
            if (mxu_if.lsu_mxu_wram_vld[i]) begin
                wram_data_tmp =  mxu_if.lsu_mxu_wram_pld >> i*8;
                if(wram_cnt < input_size * perceptron_size) begin
                    cur_pack = pack_cnt[i] / input_size;
                    cur_pack_addr = pack_cnt[i] % input_size;
                    wram_data_idx = cur_pack_addr + cur_pack*input_size*16 + input_size*i;
                    wram_data[wram_data_idx] = wram_data_tmp[7:0];
                    if(wram_data[wram_data_idx] !== tr.first_layer_weight[wram_data_idx]) begin
                        `uvm_error(get_name(), $sformatf("data mismatch at index %0d, pack_cnt %0d, idx %0d: wram_data = 0x%0h, weight_array = 0x%0h"
                                   , wram_data_idx,pack_cnt[i], i, wram_data[wram_data_idx], tr.first_layer_weight[wram_data_idx]))
                    end
                    pack_cnt[i]++;
                end
                else begin
                    cur_pack      = pack_cnt[i] / second_layer_input_size;
                    cur_pack_addr = pack_cnt[i] % second_layer_input_size;
                    wram_data_idx = cur_pack_addr + cur_pack*second_layer_input_size*16 + second_layer_input_size*i;
                    wram_data_idx_scd_layer = wram_data_idx + input_size*perceptron_size;
                    wram_data[wram_data_idx_scd_layer] = wram_data_tmp[7:0];
                    if(wram_data[wram_data_idx_scd_layer] !== tr.second_layer_weight[wram_data_idx]) begin
                        `uvm_error(get_name(), $sformatf("data mismatch at index %0d, %0d, pack_cnt %0d, idx %0d: wram_data = 0x%0h, weight_array = 0x%0h"
                                   ,wram_data_idx_scd_layer, wram_data_idx, pack_cnt[i], i, wram_data[wram_data_idx_scd_layer], tr.second_layer_weight[wram_data_idx]))
                    end
                    pack_cnt[i]++;
                end
                wram_cnt++;
                if(wram_cnt == input_size * perceptron_size) begin
                    foreach(pack_cnt[j]) pack_cnt[j] = 0;
                end
            end
        end
        if(!(top_if.wfi & mon_begin > mon_thd))begin
        end
        else if(iram_cnt != input_size * num_of_pack + 57) begin
            `uvm_error(get_name(), $sformatf("iram_cnt out of range: %0d", iram_cnt))
        end
        else if(wram_cnt != input_size*perceptron_size + 570) begin
            `uvm_error(get_name(), $sformatf("wram_cnt out of range: %0d", wram_cnt))
        end
        if(top_if.start_vld)begin
           mon_begin++;
        end
    end

endtask

