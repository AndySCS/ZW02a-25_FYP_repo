class mxu_sc extends uvm_scoreboard;

    mxu_tr exp_q[$];
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

function void mxu_sc::main_phase(uvm_phase phase);
    mxu_tr exp_tr;
    mxu_tr act_tr;
    mxu_tr tmp_tr;

    super.main_phase(phase);
	
    fork
	while(1)begin
		exp_port.get(exp_tr);
		exp_q.push(exp_tr);
	end
	while(1)begin
		act_port.get(act_tr);
		if(exp_q.size() > 0)begin
			tmp_tr = exp_q.pop_front();
			if(!tmp_tr.compare(act_tr))begin //compare false
				$display("tmp_tr");
				tmp_tr.print();
				$display("act_tr");
				act_tr.print();
				`uvm_error("mxu_sc", "compare failed");
			end
		end
		else begin
			`uvm_error("mxu_sc", "exp_q is empty")
		end
	end
    join


endfunction
