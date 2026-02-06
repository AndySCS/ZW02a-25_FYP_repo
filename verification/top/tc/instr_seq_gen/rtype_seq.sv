`ifndef RTYPE_SEQ_SV
`define RTYPE_SEQ_SV

class rtype_seq extends uvm_sequence;
    `uvm_object_utils(rtype_seq);	

    instr_add   add;
    instr_sub   sub;
    instr_sll   sll;
    instr_slt   slt;
    instr_sltu  sltu;
    instr_xor   xor;
    instr_srl   srl;
    instr_sra   sra;
    instr_or    or;
    instr_and   and; 

    extern function new(string name="rtype_seq");
    extern task body();
endclass

function rtype_seq::new(string name="rtype_seq");
    super.new(name);
endfunction

task rtype_seq::body();
    for(int i = 0; i < 100; i++) begin
        add = new();
        add.randomize();
    end

    for(int i = 101; i < 200; i++) begin
        sub = new();
        sub.randomize();
    end

    for(int i = 201; i < 300; i++) begin
        sll = new();
        sll.randomize();
    end

    for(int i = 301; i < 400; i++) begin
        slt = new();
        slt.randomize();
    end

    for(int i = 401; i < 500; i++) begin
        sltu = new();
        sltu.randomize();
    end

    for(int i = 501; i < 600; i++) begin
        xor = new();
        xor.randomize();
    end

    for(int i = 601; i < 700; i++) begin
        srl = new();
        srl.randomize();
    end

    for(int i = 701; i < 800; i++) begin
        sra = new();
        sra.randomize();
    end

    for(int i = 801; i < 900; i++) begin
        or = new();
        or.randomize();
    end

    for(int i = 901; i < 1000; i++) begin
        and = new();
        and.randomize();
    end

   	`uvm_info(get_type_name(), "RTYPE IMEM INIT FINISH", UVM_NONE)
endtask
`endif