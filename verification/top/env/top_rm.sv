class top_rm extends uvm_component;

    uvm_blocking_get_port #(ffn_operator) port;
    uvm_analysis_port #(ffn_operator) ap;

    model_reader model_rd;

    ffn_operator ffn_op[];
    cmd_handler cmd_hdlr;

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
    
    if (!uvm_config_db#(model_reader)::get(this, "", "model_rd", model_rd)) begin
        `uvm_fatal(get_name(), "Could not get model_rd handle")
    end

    if (!uvm_config_db#(cmd_handler)::get(this, "", "cmd_hdlr", cmd_hdlr)) begin
        `uvm_fatal(get_name(), "Could not get cmd_hdlr handle")
    end

endfunction

task top_rm::main_phase(uvm_phase phase);
    
    ffn_operator tr;
    int send_layer = cmd_hdlr.clip? 0: cmd_hdlr.layer_num-1;

    super.main_phase(phase);

    ffn_op = new[cmd_hdlr.layer_num];
    for(int i = 0; i < cmd_hdlr.layer_num; i++) begin
        ffn_op[i] = ffn_operator::type_id::create($sformatf("ffn_op_%0d", i));
        if(i ==0)begin
            ffn_op[i].cal_layer(model_rd.img_data.read_data, model_rd.weights_data[i].read_data, cmd_hdlr.relu[i], 1);
        end
        else if (cmd_hdlr.clip)begin
            ffn_op[i].cal_layer(ffn_op[i-1].quant_data, model_rd.weights_data[i].read_data, cmd_hdlr.relu[i], 1);
        end
        else begin
            ffn_op[i].cal_layer(ffn_op[i-1].sat_output, model_rd.weights_data[i].read_data, cmd_hdlr.relu[i], 1);
        end
    end

    while(1)begin
        port.get(tr);
        tr.copy(ffn_op[send_layer]);
        send_layer+=1;
        `uvm_info(get_name(), "write exp output to sc", UVM_NONE);
        ap.write(tr);
    end

endtask
