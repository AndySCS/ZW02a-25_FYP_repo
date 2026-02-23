class top_rm extends uvm_component;

    uvm_blocking_get_port #(model_output_transaction) port;
    uvm_analysis_port #(model_output_transaction) ap;
    
    int first_layer_output[55:0];
    int second_layer_output[9:0];
    bit [784:0] [7:0] first_layer_input;
    bit [56:0]  [7:0] second_layer_input;
    int test_tmp;
    
    bit [9:0]  [7:0]  final_output;
    bit [9:0]  [15:0] final_output_int16;

    model_read_transaction model_rd_tr;

    function new(string name = "top_rm", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()

    `uvm_component_utils(top_rm)

    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

    extern function void cal_first_layer(model_output_transaction tr);
    extern function void cal_second_layer(model_output_transaction tr);

endclass //className extends superClass

function void top_rm::build_phase(uvm_phase phase);
    super.build_phase(phase);
    port = new("port", this);
    ap = new("ap", this);
    model_rd_tr = new();
endfunction

task top_rm::main_phase(uvm_phase phase);
    
    model_output_transaction tr;
    bit [9:0][7:0] model_output;

    super.main_phase(phase);

    while(1)begin
        port.get(tr);
        cal_first_layer(tr);
        if($test$plusargs("ffn_clip")) ap.write(tr);
        cal_second_layer(tr);
        ap.write(tr);
    end

endtask

function void top_rm::cal_first_layer(model_output_transaction tr);


    first_layer_input = {8'b1, model_rd_tr.img_array};
 
    `uvm_info(get_name(), $sformatf("test_tmp before act = %16b", test_tmp[15:0]), UVM_NONE)

    for(int i = 0; i < 56; i++)begin
        for(int j = 0; j < 785; j++)begin
            first_layer_output[i] += int'($signed(first_layer_input[j]) * $signed(model_rd_tr.first_layer_weight[j+i*785]));
            if(first_layer_output[i] > 32767)  first_layer_output[i] = 32767;
            if(first_layer_output[i] < -32768) first_layer_output[i] = -32768;
        end
        if(first_layer_output[i] < 0) first_layer_output[i] = 0;
        tr.first_layer_output[i] = first_layer_output[i][15:0];
       // `uvm_info(get_name(), $sformatf("first_layer_output before act [%d] = %d", i, first_layer_output[i]), UVM_NONE)
    end
        
    if($test$plusargs("ffn_clip")) begin
        first_layer_output = tr.rescale_data();
    end
        
    for(int i = 0; i < 56; i++)begin
        second_layer_input[i] = first_layer_output[i][7:0];
        if(first_layer_output[i] > 127)  second_layer_input[i] = 127;
        if(first_layer_output[i] < -128) second_layer_input[i] = -128;

        `uvm_info(get_name(), $sformatf("second layer input[%0d] = %8b, first_layer_output[%0d] = %0d", i, second_layer_input[i], i, first_layer_ouptut[i]), UVM_NONE)
    end

endfunction

function void top_rm::cal_second_layer(model_output_transaction tr);
    second_layer_input[56] = 8'b1;

    for(int i = 0; i < 10; i++)begin
        for(int j = 0; j < 57; j++)begin
            second_layer_output[i] += int'($signed(second_layer_input[j]) * $signed(model_rd_tr.second_layer_weight[j+i*57]));
            if(second_layer_output[i] > 32767)  second_layer_output[i] = 32767;
            if(second_layer_output[i] < -32768) second_layer_output[i] = -32768;
        end
        
        final_output[i] = second_layer_output[i][7:0];
        final_output_int16[i] = second_layer_output[i][15:0];
        if(second_layer_output[i] > 127)  final_output[i] = 127;
        if(second_layer_output[i] < -128) final_output[i] = -128;
        
        //`uvm_info(get_name(), $sformatf("final_output[%0d] = %8b, second_layer_output[%0d] = %0d", i, final_output[i], i, second_layer_output[i]), UVM_NONE)
        `uvm_info(get_name(), $sformatf("final_output_int16[%0d] = %0d, second_layer_output[%0d] = %0d", i, final_output_int16[i], i, second_layer_output[i]), UVM_NONE)
        //`uvm_info(get_name(), $sformatf("final_output_int16[%0d] = %0b, second_layer_output[%0d] = %0b", i, final_output_int16[i], i, second_layer_output[i]), UVM_NONE)
    end

    tr.model_output = final_output;
    tr.model_output_int16 = final_output_int16;

endfunction
