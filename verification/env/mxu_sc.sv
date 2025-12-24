class mxu_sc extends uvm_scoreboard;

    mxu_tr exp_result_q[$];
    bit wr_doing = 0;
    int write_cnt = 0;
    uvm_blocking_get_port #(mxu_tr) exp_port;
    uvm_blocking_get_port #(mxu_tr) act_port;

    function new(string name = "mxu_sc", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual function void write_cnn_result(mxu_tr tr);
    extern virtual function void write_file(string f_name, string wr_line);
    extern virtual function void final_phase(uvm_phase phase);

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
    		`uvm_info("mxu_sc", "received exp matrix from rm", UVM_MEDIUM);
		this.exp_result_q.push_back(exp_tr);
	end
	while(1)begin
		this.act_port.get(act_tr);
    		`uvm_info("mxu_sc", "received act matrix from mon", UVM_MEDIUM);
		if(this.exp_result_q.size() > 0)begin
			tmp_tr = this.exp_result_q.pop_front();
			if(!tmp_tr.compare(act_tr))begin //compare false
				$display("exp_tr");
				tmp_tr.print_result();
				$display("act_tr");
				act_tr.print_result();
				`uvm_error("mxu_sc", "compare failed");
			end
			else begin
				if($test$plusargs("cnn")) write_cnn_result(tmp_tr);
			end
		end
		else begin
			`uvm_error("mxu_sc", "exp_result_q is empty")
		end
	end
    join


endtask

function void mxu_sc::write_cnn_result(mxu_tr tr);


	string int16_x_wr_line = "";
	string int16_y_wr_line = "";
	string int8_x_wr_line = "";
	string int8_y_wr_line = "";
	
        write_cnt++;

	for(int i = 0; i < 16; i++)begin
		int16_x_wr_line = {int16_x_wr_line, $sformatf("%d", tr.matrix_result_int16[0][i])};
		int16_y_wr_line = {int16_y_wr_line, $sformatf("%d", tr.matrix_result_int16[1][i])};
		int8_x_wr_line  = {int8_x_wr_line , $sformatf("%d", tr.matrix_result_int8 [0][i])};
		int8_y_wr_line  = {int8_y_wr_line , $sformatf("%d", tr.matrix_result_int8 [1][i])};
		if(i < 15)begin
			int16_x_wr_line = {int16_x_wr_line, ","};
			int16_y_wr_line = {int16_y_wr_line, ","};
			int8_x_wr_line  = {int8_x_wr_line , ","};
			int8_y_wr_line  = {int8_y_wr_line , ","};
		end
	end
	
	write_file("int_16x.csv", int16_x_wr_line);
	write_file("int_16y.csv", int16_y_wr_line);
	write_file("int_8x.csv" , int8_x_wr_line );
	write_file("int_8y.csv" , int8_y_wr_line );

	wr_doing = 1;		

endfunction

function void mxu_sc::write_file(string f_name, string wr_line);
	
	int fd;

	if(!wr_doing) fd = $fopen(f_name, "w");
	else fd = $fopen(f_name, "a");

	$fdisplay(fd, wr_line);

	$fclose(fd);

endfunction

function void mxu_sc::final_phase(uvm_phase phase);
    super.final_phase(phase);
    if(exp_result_q.size() > 0) `uvm_error("mxu_sc", $sformatf("exp_result_q is not empty when tc ends, exp_result_q size is %d", exp_result_q.size()))
    `uvm_info("mxu_sc", $sformatf("enter fianl phase, mxu_sc write cnt is %d", write_cnt), UVM_LOW);
endfunction
