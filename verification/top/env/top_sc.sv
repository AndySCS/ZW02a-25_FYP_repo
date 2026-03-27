class top_sc extends uvm_scoreboard;

    ffn_operator exp_result_q[$];
    cmd_handler cmd_hdlr;
    uvm_blocking_get_port #(ffn_operator) exp_port;
    uvm_blocking_get_port #(ffn_operator) act_port;

    function new(string name = "top_sc", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual function void check_phase(uvm_phase phase);

    extern virtual function int softmax(int softmax_input[]);
    extern virtual function void check_layer(ffn_operator exp_tr, ffn_operator act_tr);

    `uvm_component_utils(top_sc)

endclass //env extends superClass

function void top_sc::build_phase(uvm_phase phase);
    super.build_phase(phase);
    uvm_config_db#(cmd_handler)::get(this, "", "cmd_hdlr", cmd_hdlr);
    exp_port = new("exp_port", this);
    act_port = new("act_port", this);
endfunction

task top_sc::main_phase(uvm_phase phase);
    model_output_transaction exp_tr;
    model_output_transaction act_tr;
    model_output_transaction tmp_tr;

    int softmax_output;
    int check_cnt;
    int fd;

    super.main_phase(phase);

    fork
	while(1)begin
	    this.exp_port.get(exp_tr);
    	`uvm_info("top_sc", "received exp matrix from rm", UVM_MEDIUM);
	    this.exp_result_q.push_back(exp_tr);
	end
	while(1)begin
	    this.act_port.get(act_tr);
    	`uvm_info("top_sc", "received act matrix from mon", UVM_MEDIUM);
	    if(this.exp_result_q.size() > 0)begin
	        tmp_tr = this.exp_result_q.pop_front();
            check_layer(tmp_tr, act_tr);
            check_cnt++;
            if(cmd_hdlr.output_layer_num == check_cnt) softmax_output = softmax(tmp_tr.layer_output[0]);
            fd = $fopen($sformatf("sim_tmp/model_output%0d.txt",cmd_hdlr.seed), "w");
            $fdisplay(fd, $sformatf("%d", softmax_output));
            $fclose(fd);
        end
        else begin
            `uvm_error("top_sc", "exp_result_q is empty")
        end
	end
    join

endtask

function void top_sc::check_layer(ffn_operator exp_tr, ffn_operator act_tr);
    
    if(exp_tr.layer_output.size() != act_tr.layer_output.size()) begin
        `uvm_error(get_name(), $sformatf("exp and act layer output size is not the same, act size = %d, exp size = %d", act_tr.layer_output.size(), exp_tr.layer_output.size()))
        return;
    end
    if(exp_tr.layer_output[0].size() != act_tr.layer_output[0].size()) begin
        `uvm_error(get_name(), $sformatf("exp and act layer output size is not the same, act size = %d, exp size = %d", act_tr.layer_output[0].size(), exp_tr.layer_output[0].size()))
        return;
    end

    for(int i = 0; i < exp_tr.layer_output.size(); i++)begin
        for(int j = 0; j < exp_tr.layer_output[0].size(); j++)begin
            if(cmd_hdlr.clip) begin
	            if(exp_tr.quant_data[i][j] != act_tr.quant_data[i][j]) begin
	                `uvm_error(get_name(), $sformatf("exp and act model [%0d][%0d] output is not the same, act output = %d, exp output = %d", i, j, act_tr.quant_data[i][j], exp_tr.quant_data[i][j]))
                end
            end
            else begin
	            if(exp_tr.layer_output[i][j] != act_tr.layer_output[i][j]) begin
	                `uvm_error(get_name(), $sformatf("exp and act model [%0d][%0d] output is not the same, act output = %d, exp output = %d", i, j, act_tr.layer_output[i][j], exp_tr.layer_output[i][j]))
                end
            end
        end
    end
endfunction

function void top_sc::check_phase(uvm_phase phase);
    super.check_phase(phase);
    if(exp_result_q.size() > 0) 
        `uvm_error(get_name(), $sformatf("exp_result_q is not empty when tc ends, exp_result_q size is %d", exp_result_q.size()))
endfunction

//function int top_sc::softmax(int softmax_input[9:0]);
function int top_sc::softmax(int softmax_input[]);

    real data[];
    real sum = 0;
    real cur_max = -1;
    int max_val = -1e30;
    int max_idx;
    real softmax_input_quant[];

    softmax_input_quant = new[softmax_input.size()];
    data = new[softmax_input.size()];
    
    for(int i = 0; i < softmax_input.size(); i++)begin
        softmax_input_quant[i] = real'(softmax_input[i]);
        `uvm_info(get_name(), $sformatf("softmax_input[%0d] is: %0d", i,softmax_input_quant[i]), UVM_NONE)
        if(softmax_input_quant[i] > max_val) max_val = softmax_input_quant[i];
    end

    for(int i = 0; i < softmax_input.size(); i++)begin
        data[i] = $exp(softmax_input_quant[i] - max_val);
        sum += data[i];
    end

    for(int i = 0; i < softmax_input.size(); i++)begin
        data[i] = data[i]/sum;
        `uvm_info(get_name(), $sformatf("data[%0d] is: %0.3f", i,data[i]), UVM_NONE)
    end
    
    for(int i = 0; i < softmax_input.size(); i++)begin
        if(data[i] > cur_max)begin
            cur_max = data[i];
            max_idx = i;
        end
    end

    return max_idx;

endfunction
