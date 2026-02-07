`ifndef UTYPE_SEQ_SV
`define UTYPE_SEQ_SV

class utype_seq extends uvm_sequence;
    `uvm_object_utils(utype_seq);	

    instr_lui   lui;
    instr_auipc auipc;

    extern function new(string name="utype_seq");
    extern task body();
endclass


function utype_seq::new(string name="utype_seq");
    super.new(name);
endfunction

task utype_seq::body();
    logic[128:0] imem_tmp [255:0];
    for(int i = 0; i < 512; i++) begin
        lui = new();
        lui.randomize();
	imem_tmp[i] = lui.pack();
	//force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[0] = 128'b0;
   	`uvm_info(get_type_name(), "Forceing LUI", UVM_NONE)

    end
    for(int i = 512; i < 1024; i++) begin
        auipc = new();
        auipc.randomize();
    end
   	`uvm_info(get_type_name(), "LUI IMEM INIT FINISH", UVM_NONE)
endtask

`endif
