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
    for(int i = 0; i < 512; i++) begin
        lui = new();
        lui.randomize();
    end
    for(int i = 512; i < 1024; i++) begin
        auipc = new();
        auipc.randomize();
    end
   	`uvm_info(get_type_name(), "LUI IMEM LD FINISH", UVM_NONE)
endtask
`endif