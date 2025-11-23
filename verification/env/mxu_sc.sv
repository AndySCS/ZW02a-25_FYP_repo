class mxu_sc extends uvm_scoreboard;

    mxu_tr exp_result_q[$];
    uvm_blocking_get_port #(mxu_tr) exp_port;
    uvm_blocking_get_port #(mxu_tr) act_port;

    function new(string name = "mxu_sc", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

    `uvm_component_utils(mxu_sc)

endclass //env extends superClass

function void mxu_sc::build_phase(uvm_phase phase);
    super.build_phase(phase);
    exp_port = new("exp_port", this);
    act_port = new("act_port", this);
endfunction

task mxu_sc::main_phase(uvm_phase phase);
    mxu_tr exp_tr;
    mxu_tr act_tr;
    mxu_tr tmp_tr;

    super.main_phase(phase);
	
    fork
	while(1)begin
		this.exp_port.get(exp_tr);
    		`uvm_info("mxu_sc", "received exp matrix from rm", UVM_NONE);
		this.exp_result_q.push_back(exp_tr);
	end
	while(1)begin
		this.act_port.get(act_tr);
    		`uvm_info("mxu_sc", "received act matrix from mon", UVM_NONE);
		if(this.exp_result_q.size() > 0)begin
			tmp_tr = this.exp_result_q.pop_front();
			if(!tmp_tr.compare(act_tr))begin //compare false
				$display("tmp_tr");
				tmp_tr.print();
				$display("act_tr");
				act_tr.print();
				`uvm_error("mxu_sc", "compare failed");
			end
		end
		else begin
			`uvm_error("mxu_sc", "exp_result_q is empty")
		end
	end
    join


endtask
