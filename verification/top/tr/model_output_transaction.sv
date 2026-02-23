class model_output_transaction extends uvm_sequence_item;

    bit [55:0][15:0] model_first_layer_output_int16;
    bit [9:0][7:0]   model_output;
    bit [9:0][15:0]  model_output_int16;

    function new(string name = "model_output_transaction");
       super.new(name);
    endfunction //new()

    extern function int[55:0] rescale_data();

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
