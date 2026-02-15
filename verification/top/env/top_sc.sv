class top_sc extends uvm_scoreboard;

    model_output_transaction exp_result_q[$];
    uvm_blocking_get_port #(model_output_transaction) exp_port;
    uvm_blocking_get_port #(model_output_transaction) act_port;

    //riscv_new
    uvm_blocking_get_port #(rf_output_transaction) rf_act_port;
    uvm_blocking_get_port #(rf_output_transaction) rf_mon_act_port;
    uvm_blocking_get_port #(rf_output_q_transaction) rf_q_mon_act_port;
    uvm_blocking_get_port #(rf_output_q_transaction) rf_q_rm_exp_port;
    rf_output_q_transaction rf_exp_result_q;
    rf_output_q_transaction rf_act_result_q;
    rf_output_q_transaction exp_test_q[$];
    bit [31:0][31:0] sc_exp_rf_q[$];
    bit [31:0][31:0] sc_act_rf_q[$];

    bit [255:0][127:0] sc_exp_iram_q[$];
    bit [255:0][127:0] sc_act_iram_q[$];
    bit [255:0][127:0] sc_exp_wram_q[$];
    bit [255:0][127:0] sc_act_wram_q[$];
    bit [255:0][127:0] sc_exp_oram_lo_q[$];
    bit [255:0][127:0] sc_act_oram_lo_q[$];
    bit [255:0][127:0] sc_exp_oram_hi_q[$];
    bit [255:0][127:0] sc_act_oram_hi_q[$];

	function new(string name = "top_sc", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual function void final_phase(uvm_phase phase);


    extern virtual function int softmax(bit[9:0][7:0] softmax_input);

    `uvm_component_utils(top_sc)

endclass //env extends superClass

function void top_sc::build_phase(uvm_phase phase);
    super.build_phase(phase);
    exp_port = new("exp_port", this);
    act_port = new("act_port", this);

    //new_riscv
    rf_act_port = new("rf_act_port", this);
    rf_mon_act_port = new("rf_mon_act_port", this);
    rf_q_mon_act_port = new("rf_q_mon_act_port", this);
    rf_q_rm_exp_port = new("rf_q_rm_exp_port", this);
    rf_exp_result_q = new();
    rf_act_result_q = new();
endfunction

task top_sc::main_phase(uvm_phase phase);
    model_output_transaction exp_tr;
    model_output_transaction act_tr;
    model_output_transaction tmp_tr;

    //rsicv_new
    rf_output_transaction rf_act_tr;
    rf_output_transaction rf_mon_act_tr;
    rf_output_q_transaction rf_q_mon_act_tr;
    rf_output_transaction rf_mon_act;
    rf_output_q_transaction rm_exp_tr;

    int count;

    int softmax_output;
	int fd;

    super.main_phase(phase);
	
    fork
	while(1)begin
	    this.rf_q_rm_exp_port.get(rf_exp_result_q);
	    sc_exp_rf_q = rf_exp_result_q.rf_output;
	    sc_exp_iram_q = rf_exp_result_q.iram;
	    sc_exp_wram_q = rf_exp_result_q.wram;
	    sc_exp_oram_lo_q = rf_exp_result_q.oram_lo;
	    sc_exp_oram_hi_q = rf_exp_result_q.oram_hi;
	    //`uvm_info("top_sc", $sformatf("exp_data_size[%0h]", this.exp_test2_q.size()), UVM_NONE);
	end
	while(1)begin
		this.rf_q_mon_act_port.get(rf_act_result_q);
	   	sc_act_rf_q = rf_act_result_q.rf_output;
	    sc_act_iram_q = rf_act_result_q.iram;
	    sc_act_wram_q = rf_act_result_q.wram;
	    sc_act_oram_lo_q = rf_act_result_q.oram_lo;
	    sc_act_oram_hi_q = rf_act_result_q.oram_hi;
		if (this.sc_act_rf_q.size() != this.sc_exp_rf_q.size())begin
    		`uvm_info("top_sc", "error found,rf size not match", UVM_NONE);
	        `uvm_info("top_sc", $sformatf("act_rf_size[%0h]", this.sc_act_rf_q.size()), UVM_NONE);
	        `uvm_info("top_sc", $sformatf("exp_rf_size[%0h]", this.sc_exp_rf_q.size()), UVM_NONE);
		end
    	`uvm_info("top_sc", "check rf size pass", UVM_NONE);

		if (this.sc_act_iram_q.size() != this.sc_exp_iram_q.size())begin
    		`uvm_info("top_sc", "error found,iram size not match", UVM_NONE);
	        `uvm_info("top_sc", $sformatf("act_iram_size[%0h]", this.sc_act_iram_q.size()), UVM_NONE);
	        `uvm_info("top_sc", $sformatf("exp_iram_size[%0h]", this.sc_exp_iram_q.size()), UVM_NONE);
		end
    	`uvm_info("top_sc", "check iram size pass", UVM_NONE);

		if (this.sc_act_wram_q.size() != this.sc_exp_wram_q.size())begin
    		`uvm_info("top_sc", "error found,wram size not match", UVM_NONE);
	        `uvm_info("top_sc", $sformatf("act_wram_size[%0h]", this.sc_act_wram_q.size()), UVM_NONE);
	        `uvm_info("top_sc", $sformatf("exp_wram_size[%0h]", this.sc_exp_wram_q.size()), UVM_NONE);
		end

		if (this.sc_act_oram_lo_q.size() != this.sc_exp_oram_lo_q.size())begin
    		`uvm_info("top_sc", "error found,oram_lo size not match", UVM_NONE);
	        `uvm_info("top_sc", $sformatf("act_oram_lo_size[%0h]", this.sc_act_oram_lo_q.size()), UVM_NONE);
	        `uvm_info("top_sc", $sformatf("exp_oram_lo_size[%0h]", this.sc_exp_oram_lo_q.size()), UVM_NONE);
		end

		if (this.sc_act_oram_hi_q.size() != this.sc_exp_oram_hi_q.size())begin
    		`uvm_info("top_sc", "error found,oram_hi size not match", UVM_NONE);
	        `uvm_info("top_sc", $sformatf("act_oram_hi_size[%0h]", this.sc_act_oram_hi_q.size()), UVM_NONE);
	        `uvm_info("top_sc", $sformatf("exp_oram_hi_size[%0h]", this.sc_exp_oram_hi_q.size()), UVM_NONE);
		end
	    //`uvm_info("top_sc", $sformatf("act_iram_size[%0h]", this.sc_act_iram_q.size()), UVM_NONE);
	    //`uvm_info("top_sc", $sformatf("exp_iram_size[%0h]", this.sc_exp_iram_q.size()), UVM_NONE);
	    //`uvm_info("top_sc", $sformatf("act_iram_data[%0h]", this.sc_act_iram_q[0]), UVM_NONE);
	    //`uvm_info("top_sc", $sformatf("exp_iram_data[%0h]", this.sc_exp_iram_q[0]), UVM_NONE);
	    //`uvm_info("top_sc", $sformatf("act_data: data[%0h]", rf_act_result_q.rf_output[0]), UVM_NONE);
		count = 0;
		while(1)begin
			if(this.sc_act_rf_q.size() > 0)begin
	         	`uvm_info("top_sc", $sformatf("pc[%0h]", (count*4)), UVM_NONE);
	       	 	`uvm_info("top_sc", $sformatf("count_num:  %0h", count), UVM_NONE);
				//rf
		   		for (int i=0; i<32; i++)begin
					if(sc_act_rf_q[0][i] != sc_exp_rf_q[0][i])begin
    					`uvm_info("top_sc", "ERROR rf act not macth with exp", UVM_NONE);
						`uvm_error("top_sc", $sformatf("ERROR rd %h", i))					
	       	 			`uvm_info("top_sc", $sformatf("act_data:  data[%0h]", sc_act_rf_q[0][i]), UVM_NONE);
	       	 			`uvm_info("top_sc", $sformatf("exp_data:  data[%0h]", sc_exp_rf_q[0][i]), UVM_NONE);
    					`uvm_info("top_sc", "\n===================================================================\n", UVM_NONE);
					end
					//`uvm_info("top_sc", $sformatf("act_data from mon: [%d], data[%0h]",i, rf_mon_act_tr.rf_output), UVM_NONE);
		    	end
    		    `uvm_info("top_sc", "rf pass", UVM_NONE);
	         	`uvm_info("top_sc", $sformatf("act_data_size[%0h]", this.sc_act_rf_q.size()), UVM_NONE);
	       	 	//`uvm_info("top_sc", $sformatf("act_data:  data[%0h]", sc_act_rf_q[0]), UVM_NONE);
	       	 	//`uvm_info("top_sc", $sformatf("exp_data:  data[%0h]", sc_exp_rf_q[0]), UVM_NONE);
				
				//iram
		   		for (int i=0; i<256; i++)begin
					if(sc_act_iram_q[0][i] != sc_exp_iram_q[0][i])begin
    					`uvm_info("top_sc", "ERROR iram act not macth with exp", UVM_NONE);
						`uvm_error("top_sc", $sformatf("ERROR iram row %h", i))					
	       	 			`uvm_info("top_sc", $sformatf("act_data:  data[%0h]", sc_act_iram_q[0][i]), UVM_NONE);
	       	 			`uvm_info("top_sc", $sformatf("exp_data:  data[%0h]", sc_exp_iram_q[0][i]), UVM_NONE);
    					`uvm_info("top_sc", "\n===================================================================\n", UVM_NONE);
					end
					//`uvm_info("top_sc", $sformatf("act_data from mon: [%d], data[%0h]",i, rf_mon_act_tr.rf_output), UVM_NONE);
		    	end
    		    `uvm_info("top_sc", "iram pass", UVM_NONE);
	         	`uvm_info("top_sc", $sformatf("act_data_size[%0h]", this.sc_act_iram_q.size()), UVM_NONE);

				//wram
		   		for (int i=0; i<256; i++)begin
					if(sc_act_wram_q[0][i] != sc_exp_wram_q[0][i])begin
    					`uvm_info("top_sc", "ERROR wram act not macth with exp", UVM_NONE);
						`uvm_error("top_sc", $sformatf("ERROR wram row %h", i))					
	       	 			`uvm_info("top_sc", $sformatf("act_data:  data[%0h]", sc_act_wram_q[0][i]), UVM_NONE);
	       	 			`uvm_info("top_sc", $sformatf("exp_data:  data[%0h]", sc_exp_wram_q[0][i]), UVM_NONE);
    					`uvm_info("top_sc", "\n===================================================================\n", UVM_NONE);
					end
					//`uvm_info("top_sc", $sformatf("act_data from mon: [%d], data[%0h]",i, rf_mon_act_tr.rf_output), UVM_NONE);
		    	end
    		    `uvm_info("top_sc", "wram pass", UVM_NONE);
	         	`uvm_info("top_sc", $sformatf("act_data_size[%0h]", this.sc_act_wram_q.size()), UVM_NONE);

				//oram_lo
		   		for (int i=0; i<256; i++)begin
					if(sc_act_oram_lo_q[0][i] != sc_exp_oram_lo_q[0][i])begin
    					`uvm_info("top_sc", "ERROR oram_lo act not macth with exp", UVM_NONE);
						`uvm_error("top_sc", $sformatf("ERROR oram_lo row %h", i))					
	       	 			`uvm_info("top_sc", $sformatf("act_data:  data[%0h]", sc_act_oram_lo_q[0][i]), UVM_NONE);
	       	 			`uvm_info("top_sc", $sformatf("exp_data:  data[%0h]", sc_exp_oram_lo_q[0][i]), UVM_NONE);
    					`uvm_info("top_sc", "\n===================================================================\n", UVM_NONE);
					end
					//`uvm_info("top_sc", $sformatf("act_data from mon: [%d], data[%0h]",i, rf_mon_act_tr.rf_output), UVM_NONE);
		    	end
    		    `uvm_info("top_sc", "oram_lo pass", UVM_NONE);
	         	`uvm_info("top_sc", $sformatf("act_data_size[%0h]", this.sc_act_oram_lo_q.size()), UVM_NONE);

				//oram_hi
		   		for (int i=0; i<256; i++)begin
					if(sc_act_oram_hi_q[0][i] != sc_exp_oram_hi_q[0][i])begin
    					`uvm_info("top_sc", "ERROR oram_hi act not macth with exp", UVM_NONE);
						`uvm_error("top_sc", $sformatf("ERROR oram_hi row %h", i))					
	       	 			`uvm_info("top_sc", $sformatf("act_data:  data[%0h]", sc_act_oram_hi_q[0][i]), UVM_NONE);
	       	 			`uvm_info("top_sc", $sformatf("exp_data:  data[%0h]", sc_exp_oram_hi_q[0][i]), UVM_NONE);
    					`uvm_info("top_sc", "\n===================================================================\n", UVM_NONE);
					end
					//`uvm_info("top_sc", $sformatf("act_data from mon: [%d], data[%0h]",i, rf_mon_act_tr.rf_output), UVM_NONE);
		    	end
    		    `uvm_info("top_sc", "oram_hi pass", UVM_NONE);
	         	`uvm_info("top_sc", $sformatf("act_data_size[%0h]", this.sc_act_oram_hi_q.size()), UVM_NONE);

	       	 	//`uvm_info("top_sc", $sformatf("act_data:  data[%0h]", sc_act_iram_q[0]), UVM_NONE);
	       	 	//`uvm_info("top_sc", $sformatf("exp_data:  data[%0h]", sc_exp_iram_q[0]), UVM_NONE);
    		    `uvm_info("top_sc", "\n===================================================================\n", UVM_NONE);
				this.sc_exp_rf_q.pop_front();
				this.sc_act_rf_q.pop_front();
				this.sc_exp_iram_q.pop_front();
				this.sc_act_iram_q.pop_front();
				this.sc_exp_wram_q.pop_front();
				this.sc_act_wram_q.pop_front();
				this.sc_exp_oram_lo_q.pop_front();
				this.sc_act_oram_lo_q.pop_front();
				this.sc_exp_oram_hi_q.pop_front();
				this.sc_act_oram_hi_q.pop_front();
				count = count+1;
			end
			else begin
	       		`uvm_info("top_sc", $sformatf("count:  %0d",count), UVM_NONE);
    			`uvm_info("top_sc", "pass", UVM_NONE);
				break;
			end
		end		
	end
	while(1)begin
		this.exp_port.get(exp_tr);
    		`uvm_info("top_sc", "received exp matrix from rm", UVM_NONE);
		//this.exp_result_q.push_back(exp_tr);
	end	
	while(1)begin
		//this.act_port.get(act_tr);
		//this.rf_act_port.get(rf_act_tr);
		this.rf_mon_act_port.get(rf_mon_act_tr);
		/*
		if(this.exp_result_q.size() > 0)begin
			tmp_tr = this.exp_result_q.pop_front();
			if(tmp_tr.model_output	 != act_tr.model_output) begin
				`uvm_error(get_name(), $sformatf("exp and act model output is not the same, act output = %h, exp output = %h", act_tr.model_output, tmp_tr.model_output))
			end

                softmax_output = softmax(tmp_tr.model_output);
	        fd = $fopen("model_output.txt", "w");
	        $fdisplay(fd, $sformatf("%d", softmax_output));
	        $fclose(fd);
		
		end
		else begin
			`uvm_error("top_sc", "exp_result_q is empty")
		end
*/
		
	end

	//riscv _new
	while(1)begin
	
		this.rf_mon_act_port.get(rf_mon_act_tr);
	/*
    		`uvm_info("top_sc", "=========================================================================================================================", UVM_NONE);
    		`uvm_info("top_sc", "received act rsicv data from mon", UVM_NONE);
	       	`uvm_info("top_sc", $sformatf("tr count from mon: [%0d]", count), UVM_NONE);

	       	`uvm_info("top_sc", $sformatf("act_data from mon: data[%0h]",rf_mon_act_tr.rf_output), UVM_NONE);

		for (int i=0; i<32; i++)begin
			if(rf_mon_act_tr.rf_output[i] != rf_exp_result_q.rf_output[count][i])begin
    				`uvm_info("top_sc", "error found", UVM_NONE);
	       	 		`uvm_info("top_sc", $sformatf("rd:  %0h", i), UVM_NONE);
	       	 		`uvm_info("top_sc", $sformatf("exp_data:  data[%0h]", rf_mon_act_tr.rf_output[i]), UVM_NONE);
	       	 		`uvm_info("top_sc", $sformatf("act_data:  data[%0h]", rf_exp_result_q.rf_output[count][i]), UVM_NONE);
			end
	       	 	//`uvm_info("top_sc", $sformatf("act_data from mon: [%d], data[%0h]",i, rf_mon_act_tr.rf_output[i]), UVM_NONE);
		end
*/
		
    		//`uvm_info("top_sc", "pass", UVM_NONE);

		count = count+1;
		
		
	       	//`uvm_info("top_sc", $sformatf("rf_q_act from mon: %d,%0h",i, rf_mon_act.rf_output[i]), UVM_NONE);
	end
    join

endtask

function void top_sc::final_phase(uvm_phase phase);
    super.final_phase(phase);
    //if(exp_result_q.size() > 0) `uvm_error("top_sc", $sformatf("exp_result_q is not empty when tc ends, exp_result_q size is %d", exp_result_q.size()))
    if(sc_exp_rf_q.size() > 0) `uvm_error("top_sc", $sformatf("exp_result_q is not empty when tc ends, exp_result_q size is %d", sc_exp_rf_q.size()))
endfunction

function int top_sc::softmax(bit[9:0][7:0] softmax_input);

    real data[9:0];
    real sum = 0;
    real cur_max = 0;
    int max_idx;

    for(int i = 0; i < 10; i++)begin
        data[i] = $exp(real'(softmax_input[i]));
        sum += data[i];
    end

    for(int i = 0; i < 10; i++)begin
        data[i] = data[i]/sum;
    end
    
    for(int i = 0; i < 10; i++)begin
        if(data[i] > cur_max)begin
            cur_max = data[i];
            max_idx = i;
        end
    end

    return max_idx;

endfunction