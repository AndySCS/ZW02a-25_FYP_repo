class ffn_operator extends uvm_sequence_item;

    int quant_rng;
    int layer_output[][];
    int quant_data[][];
    int sat_output[][];

    function new(string name = "ffn_operator");
       super.new(name);
       $value$plusargs("quant_rng=%0d", quant_rng);
    endfunction //new()

    extern function void rescale_data(ref int input_data[]);
    extern function void rescale_layer();
    extern function void fc_layer(int input_data[][], int wgt_data[][], bit relu, bit add_last_wgt);
    extern function void conv_img(int input_data[], int wgt_data[], bit relu, int img_row, int img_col, int kernel_row, int kernel_col, ref int output_data[]);
    extern function void conv_layer(int input_data[][], int wgt_data[][], bit relu, bit add_last_wgt, int img_row, int img_col, int kernel_row, int kernel_col);
    extern function void copy(ffn_operator rhs);
    extern function void cal_layer(bit conv, int input_data[][], int wgt_data[][], bit relu, bit add_last_wgt, int img_row, int img_col, int kernel_row, int kernel_col);

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
    quant_data = new[layer_output.size()];
    foreach (layer_output[i]) begin
        quant_data[i] = new[layer_output[0].size()];
    end
    foreach (layer_output[i,j]) begin
        quant_data[i][j] = layer_output[i][j];
    end
    foreach (layer_output[i]) begin
        rescale_data(quant_data[i]);
    end
endfunction

function void ffn_operator::conv_img(int input_data[], int wgt_data[], bit relu, int img_row, int img_col, int kernel_row, int kernel_col, ref int output_data[]);

    int output_row = img_row - kernel_row + 1;
    int output_col = img_col - kernel_col + 1;
    int output_size = (img_row - kernel_row + 1) * (img_col - kernel_col + 1);

    for(int i = 0; i < output_row; i++)begin
        for(int j = 0; j < output_col; j++)begin
            for(int k = 0; k < kernel_row; k++)begin
                for(int l = 0; l < kernel_col; l++)begin
                    output_data[i*output_col+j] += input_data[(i+k)*img_col+(j+l)] * wgt_data[k*kernel_col+l];
                    if(output_data[i*output_col+j] > 32767)  output_data[i*output_col+j] = 32767;
                    if(output_data[i*output_col+j] < -32768) output_data[i*output_col+j] = -32768;
                end
            end
        end
    end
    
endfunction

function void ffn_operator::conv_layer(int input_data[][], int wgt_data[][], bit relu, bit add_last_wgt, int img_row, int img_col, int kernel_row, int kernel_col);
    
    int output_size;
    
    layer_output = new[wgt_data.size()];
    quant_data = new[wgt_data.size()];
    sat_output = new[wgt_data.size()];

    output_size = (img_row - kernel_row + 1) * (img_col - kernel_col + 1);

    foreach(layer_output[i])begin
        layer_output[i] = new[output_size];
        quant_data[i] = new[output_size];
        sat_output[i] = new[output_size];
    end

    for(int j = 0; j < wgt_data.size(); j++)begin
        conv_img(input_data[0], wgt_data[j], relu, img_row, img_col, kernel_row, kernel_col, layer_output[j]);
    end

    foreach (layer_output[i,j]) begin
        quant_data[i][j] = layer_output[i][j];
        sat_output[i][j] = (layer_output[i][j] > 127) ? 127
                         : (layer_output[i][j] < -128) ? -128
                         :  layer_output[i][j];
    end
    
endfunction

function void ffn_operator::fc_layer(int input_data[][], int wgt_data[][], bit relu, bit add_last_wgt);

    int data_tmp;
    layer_output = new[1];
    quant_data = new[1];
    sat_output = new[1];

    foreach(layer_output[i])begin
        layer_output[i] = new[wgt_data.size()];
        quant_data[i] = new[wgt_data.size()];
        sat_output[i] = new[wgt_data.size()];
    end

    `uvm_info(get_name(), $sformatf("input data shape is (%0d, %0d)", input_data.size(), input_data[0].size()), UVM_NONE)
    `uvm_info(get_name(), $sformatf("wgt data shape is (%0d, %0d)", wgt_data.size(), wgt_data[0].size()), UVM_NONE)
    `uvm_info(get_name(), $sformatf("layer output shape is (%0d, %0d)", layer_output.size(), layer_output[0].size()), UVM_NONE)

    for(int i = 0; i < layer_output.size(); i++)begin
        for(int j = 0; j < wgt_data.size(); j++)begin
            for(int k = 0; k < input_data[0].size(); k++)begin
                layer_output[i][j] += input_data[i][k] * wgt_data[j][k];
                if(layer_output[i][j] > 32767)  layer_output[i][j] = 32767;
                if(layer_output[i][j] < -32768) layer_output[i][j] = -32768;
                `uvm_info(get_name(), $sformatf("update data[%0d, %0d] with inpt data[%0d. %0d] and wgt data[%0d, %0d]", i, j, i, k, j, k), UVM_DEBUG)
            end
            if (add_last_wgt) begin
                layer_output[i][j] += wgt_data[j][wgt_data[0].size()-1];
                if(layer_output[i][j] > 32767)  layer_output[i][j] = 32767;
                if(layer_output[i][j] < -32768) layer_output[i][j] = -32768;
            end
            if(relu && layer_output[i][j] < 0) layer_output[i][j] = 0;
            `uvm_info(get_name(), $sformatf("done cal [%0d, %0d] data, data is %0d", i, j, layer_output[i][j]), UVM_DEBUG)
        end
    end

    foreach (layer_output[i,j]) begin
        quant_data[i][j] = layer_output[i][j];
        sat_output[i][j] = (layer_output[i][j] > 127) ? 127
                         : (layer_output[i][j] < -128) ? -128
                         :  layer_output[i][j];
    end
    
    foreach (quant_data[i]) begin
        rescale_data(quant_data[i]);
    end

endfunction

function void ffn_operator::copy(ffn_operator rhs);
    this.quant_rng = rhs.quant_rng;
    this.layer_output = new[rhs.layer_output.size()];
    this.quant_data = new[rhs.quant_data.size()];

    for(int i = 0; i < layer_output.size(); i++)begin
        this.layer_output[i] = new[rhs.quant_data[0].size()];
        this.quant_data[i] = new[rhs.quant_data[0].size()];
        for(int j = 0; j < layer_output[0].size(); j++)begin
            this.layer_output[i][j] = rhs.layer_output[i][j];
            this.quant_data[i][j] = rhs.quant_data[i][j];
        end
    end
endfunction

function void ffn_operator::cal_layer(bit conv, int input_data[][], int wgt_data[][], bit relu, bit add_last_wgt, int img_row, int img_col, int kernel_row, int kernel_col);
    if(conv) begin
        conv_layer(input_data, wgt_data, relu, add_last_wgt, img_row, img_col, kernel_row, kernel_col);
    end else begin
        fc_layer(input_data, wgt_data, relu, add_last_wgt);
    end
endfunction
