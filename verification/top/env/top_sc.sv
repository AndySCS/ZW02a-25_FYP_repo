class top_sc extends uvm_scoreboard;

    model_output_transaction exp_result_q[$];
    uvm_blocking_get_port #(model_output_transaction) exp_port;
    uvm_blocking_get_port #(model_output_transaction) act_port;

    function new(string name = "top_sc", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual function void final_phase(uvm_phase phase);

    extern virtual function int softmax(bit[9:0][15:0] softmax_input);
    extern virtual function void check_first_layer(model_output_transaction exp_tr, model_output_transaction act_tr);
    extern virtual function void check_second_layer(model_output_transaction exp_tr, model_output_transaction act_tr);

    `uvm_component_utils(top_sc)

endclass //env extends superClass

function void top_sc::build_phase(uvm_phase phase);
    super.build_phase(phase);
    exp_port = new("exp_port", this);
    act_port = new("act_port", this);
endfunction

task top_sc::main_phase(uvm_phase phase);
    model_output_transaction exp_tr;
    model_output_transaction act_tr;
    model_output_transaction tmp_tr;
    int seed;

    int softmax_output;
    int fd;

    bit check_first_layer_flag = 0;

    super.main_phase(phase);

    check_first_layer_flag = $test$plusargs("ffn_clip");
    seed = $get_initial_random_seed();

	
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
                if(check_first_layer_flag) begin
                    check_first_layer(tmp_tr, act_tr);
                    check_first_layer_flag = 0;
                    continue;
                end
                check_second_layer(tmp_tr, act_tr);
                softmax_output = softmax(tmp_tr.model_output_int16);
                fd = $fopen($sformatf("sim_tmp/model_output%0d.txt",seed), "w");
                $fdisplay(fd, $sformatf("%d", softmax_output));
                $fclose(fd);
            end
            else begin
                `uvm_error("top_sc", "exp_result_q is empty")
            end
	end
    join

endtask

function void top_sc::check_first_layer(model_output_transaction exp_tr, model_output_transaction act_tr);
    for(int i = 0; i < 56; i++)begin
	if(exp_tr.model_first_layer_output_int16[i] != act_tr.model_first_layer_output_int16[i]) begin
	    `uvm_error(get_name(), $sformatf("exp and act model %0d output is not the same, act output = %d, exp output = %d", i, act_tr.model_first_layer_output_int16[i], exp_tr.model_first_layer_output_int16[i]))
        end
    end
endfunction

function void top_sc::check_second_layer(model_output_transaction exp_tr, model_output_transaction act_tr);
    for(int i = 0; i < 10; i++)begin
	if(exp_tr.model_output_int16[i] != act_tr.model_output_int16[i]) begin
	     `uvm_error(get_name(), $sformatf("exp and act model %0d output is not the same, act output = %d, exp output = %d", i, act_tr.model_output_int16[i], exp_tr.model_output_int16[i]))
        end
    end
endfunction

function void top_sc::final_phase(uvm_phase phase);
    super.final_phase(phase);
    if(exp_result_q.size() > 0) `uvm_error("top_sc", $sformatf("exp_result_q is not empty when tc ends, exp_result_q size is %d", exp_result_q.size()))
endfunction

function int top_sc::softmax(bit[9:0][15:0] softmax_input);

    real data[9:0];
    real softmax_input_quant[9:0];
    real sum = 0;
    real cur_max = 0;
    int max_idx;

    for(int i = 0; i < 10; i++)begin
        softmax_input_quant[i] =  (real'($signed(softmax_input[i])) - 34.511 ) * 254.898;
        `uvm_info(get_name(), $sformatf("softmax_input[%0d] is: %0.3f", i,softmax_input_quant[i]), UVM_NONE)
        data[i] = $exp(softmax_input_quant[i]);
        sum += data[i];
    end

    for(int i = 0; i < 10; i++)begin
        data[i] = data[i]/sum;
        `uvm_info(get_name(), $sformatf("data[%0d] is: %0.3f", i,data[i]), UVM_NONE)
    end
    
    for(int i = 0; i < 10; i++)begin
        if(data[i] > cur_max)begin
            cur_max = data[i];
            max_idx = i;
        end
    end

    return max_idx;

endfunction
