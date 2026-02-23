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
        second_layer_input[55:0] = tr.cal_first_layer(model_rd_tr);
        if($test$plusargs("ffn_clip")) ap.write(tr);
        tr.cal_second_layer(model_rd_tr, second_layer_input);
        ap.write(tr);
    end

endtask
