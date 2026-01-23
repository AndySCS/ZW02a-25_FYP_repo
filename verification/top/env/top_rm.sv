class top_rm extends uvm_component;

    uvm_blocking_get_port #(model_output_transaction) port;
    uvm_analysis_port #(model_output_transaction) ap;

    model_read_transaction model_rd_tr;

    function new(string name = "top_rm", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()

    `uvm_component_utils(top_rm)

    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

    extern function bit[9:0][7:0] cal_data();

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
        tr.model_output = cal_data();
        ap.write(tr);
    end

endtask

function bit[9:0][7:0] top_rm::cal_data();

    int first_layer_ouput[55:0];
    int second_layer_output[9:0];
    bit [784:0] [7:0] first_layer_input;
    bit [56:0]  [7:0] second_layer_input;
    
    bit [9:0]  [7:0] final_output;

    first_layer_input = {model_rd_tr.img_array, 8'b1};

    for(int i = 0; i < 56; i++)begin
        for(int j = 0; j < 785; j++)begin
            first_layer_ouput[i] += int'($signed(first_layer_input[j]) * $signed(model_rd_tr.first_layer_weight[j+i]));
            if(first_layer_ouput[i] > 32767)  first_layer_ouput[i] = 32767;
            if(first_layer_ouput[i] < -32768) first_layer_ouput[i] = -32768;
        end
        if(first_layer_ouput[i] < 0) first_layer_ouput[i] = 0;

        second_layer_input[i+1] = first_layer_ouput[i][7:0];
        if(first_layer_ouput[i] > 127)  second_layer_input[i] = 127;
        if(first_layer_ouput[i] < -128) second_layer_input[i] = -128;

    end

    second_layer_input[0] = 8'b1;

    for(int i = 0; i < 10; i++)begin
        for(int j = 0; j < 56; j++)begin
            second_layer_output[i] += int'($signed(second_layer_input[j]) * $signed(model_rd_tr.second_layer_weight[j+i]));
            if(second_layer_output[i] > 32767)  second_layer_output[i] = 32767;
            if(second_layer_output[i] < -32768) second_layer_output[i] = -32768;
        end
        
        final_output[i+1] = second_layer_output[i][7:0];
        if(second_layer_output[i] > 127)  final_output[i] = 127;
        if(second_layer_output[i] < -128) final_output[i] = -128;
    end

    return final_output;

endfunction


