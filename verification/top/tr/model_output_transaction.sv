class model_output_transaction extends uvm_sequence_item;

    bit [55:0][15:0] model_first_layer_output_int16;
    bit [9:0][7:0]   model_output;
    bit [9:0][15:0]  model_output_int16;

    function new(string name = "model_output_transaction");
       super.new(name);
    endfunction //new()

    extern function int[55:0] rescale_data();
    extern function bit [55:0][7:0] cal_first_layer(model_read_transaction model_rd_tr);
    extern function void cal_second_layer(model_read_transaction model_rd_tr, bit [56:0][7:0] second_layer_input);

    `uvm_object_utils(model_output_transaction)

endclass //top_tr extends superClass

function int[55:0] model_output_transaction::rescale_data();

    int max_val = model_first_layer_output_int16[0];
    int min_val = model_first_layer_output_int16[0];
    real scale_fac;
    int z_fac;

    int output_data[55:0];

    for(int i = 0; i < 56; i++)begin
        if(model_first_layer_output_int16[i] > max_val) max_val = model_first_layer_output_int16[i];
        if(model_first_layer_output_int16[i] < min_val) min_val = model_first_layer_output_int16[i];
    end

    scale_fac = (max_val - min_val)/255.0;
    z_fac = -128 + $rtoi(min_val/scale_fac);



    for(int i = 0; i < 56; i++)begin
        output_data[i] = $rtoi((model_first_layer_output_int16[i] - min_val)/scale_fac) + z_fac;
        if (output_data[i] > 127) output_data[i] = 127;
        if (output_data[i] < -128) output_data[i] = -128;
    end

    return output_data;

endfunction

function bit [55:0][7:0] model_output_transaction::cal_first_layer(model_read_transaction model_rd_tr);

    bit [784:0][7:0] first_layer_input;
    bit [55:0][7:0] second_layer_input;
    int first_layer_output[55:0];

    first_layer_input = {8'b1, model_rd_tr.img_array};
 
    `uvm_info(get_name(), $sformatf("test_tmp before act = %16b", test_tmp[15:0]), UVM_NONE)

    for(int i = 0; i < 56; i++)begin
        for(int j = 0; j < 785; j++)begin
            first_layer_output[i] += int'($signed(first_layer_input[j]) * $signed(model_rd_tr.first_layer_weight[j+i*785]));
            if(first_layer_output[i] > 32767)  first_layer_output[i] = 32767;
            if(first_layer_output[i] < -32768) first_layer_output[i] = -32768;
        end
        if(first_layer_output[i] < 0) first_layer_output[i] = 0;
        model_first_layer_output_int16[i] = first_layer_output[i][15:0];
       // `uvm_info(get_name(), $sformatf("first_layer_output before act [%d] = %d", i, first_layer_output[i]), UVM_NONE)
    end
        
    if($test$plusargs("ffn_clip")) begin
        first_layer_output = rescale_data();
    end
        
    for(int i = 0; i < 56; i++)begin
        second_layer_input[i] = first_layer_output[i][7:0];
        if(first_layer_output[i] > 127)  second_layer_input[i] = 127;
        if(first_layer_output[i] < -128) second_layer_input[i] = -128;

        `uvm_info(get_name(), $sformatf("second layer input[%0d] = %8b, first_layer_output[%0d] = %0d", i, second_layer_input[i], i, first_layer_ouptut[i]), UVM_NONE)
    end

    return second_layer_input;

endfunction

function void model_output_transaction::cal_second_layer(model_read_transaction model_rd_tr, bit [56:0][7:0] second_layer_input);
    second_layer_input[56] = 8'b1;
    bit [9:0][7:0] final_output;
    int second_layer_output[9:0];

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

    model_output = final_output;
    model_output_int16 = final_output_int16;

endfunction