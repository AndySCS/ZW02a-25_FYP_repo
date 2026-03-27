class ffn_operator extends uvm_sequence_item;

    int quant_rng;
    int layer_output[][];
    int quant_data[][];

    function new(string name = "ffn_operator");
       super.new(name);
       $value$plusargs("quant_rng=%0d", quant_rng);
    endfunction //new()

    extern function void rescale_data(ref int input_data[]);
    extern function void rescale_layer();
    extern function void cal_layer(int input_data[][], int wgt_data[][], bit relu, bit add_last_wgt);
    extern function void copy(ffn_operator rhs);

    `uvm_object_utils(ffn_operator)

endclass //top_tr extends superClass

function void ffn_operator::rescale_data(ref int input_data[]);
    
    int max_val = input_data[0];
    int min_val = 0;
    real scale_fac;
    int z_fac;
    int input_size = input_data.size();
    int quant_max = 2**(quant_rng-1) - 1;
    int quant_min = -(2**(quant_rng-1));
    
    for(int i = 0; i < input_size; i++)begin
        if(input_data[i] > max_val) max_val = input_data[i];
        if(input_data[i] < min_val) min_val = input_data[i];
    end
    
    scale_fac = (max_val - min_val)/(2**quant_rng - 1);
    z_fac = 0;//-128 + $rtoi(min_val/scale_fac);
    
    for(int i = 0; i < input_size; i++)begin
        input_data[i] = $rtoi((input_data[i] - min_val)/scale_fac + z_fac);
        if (input_data[i] > quant_max) input_data[i] = quant_max;
        if (input_data[i] < quant_min) input_data[i] = quant_min;
    end
    
endfunction

function void ffn_operator::rescale_layer();
    quant_data = new[layer_output.size()][layer_output[0].size()];
    foreach (layer_output[i]) begin
        quant_data[i] = rescale_data(layer_output[i]);
    end
endfunction

function void ffn_operator::cal_layer(int input_data[][], int wgt_data[][], bit relu, bit add_last_wgt);

    layer_output = new[input_data.size()][wgt_data.size()];
    quant_data = new[input_data.size()][wgt_data.size()];

    for(int i = 0; i < layer_output.size(); i++)begin
        for(int j = 0; j < wgt_data.size(); j++)begin
            for(int k = 0; k < input_data[0].size(); k++)begin
                layer_output[i][j] += input_data[i][k] * wgt_data[k][j];
                if(layer_output[i][j] > 32767)  layer_output[i][j] = 32767;
                if(layer_output[i][j] < -32768) layer_output[i][j] = -32768;
            end
            if (add_last_wgt) begin
                layer_output[i][j] += wgt_data[i][wgt_data[0].size()-1];
                if(layer_output[i][j] > 32767)  layer_output[i][j] = 32767;
                if(layer_output[i][j] < -32768) layer_output[i][j] = -32768;
            end
            if(relu && layer_output[i][j] < 0) layer_output[i][j] = 0;
        end
    end

    foreach (layer_output[i,j]) begin
        quant_data[i][j] = layer_output[i][j];
    end
    
    foreach (quant_data[i]) begin
        rescale_data(quant_data[i]);
    end

endfunction

function void ffn_operator::copy(ffn_operator rhs);
    this.quant_rng = rhs.quant_rng;
    this.layer_output = new[rhs.layer_output.size()][rhs.layer_output[0].size()];
    this.quant_data = new[rhs.quant_data.size()][rhs.quant_data[0].size()];

    for(int i = 0; i < layer_output.size(); i++)begin
        for(int j = 0; j < layer_output[0].size(); j++)begin
            this.layer_output[i][j] = rhs.layer_output[i][j];
            this.quant_data[i][j] = rhs.quant_data[i][j];
        end
    end
endfunction