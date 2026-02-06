`ifndef ITYPE_SEQ_SV
`define ITYPE_SEQ_SV

class itype_seq extends uvm_sequence;
    `uvm_object_utils(itype_seq);	

    instr_addi   addi;
    instr_slli   slli;
    instr_slti   slti;
    instr_sltiu  sltui;
    instr_xori   xori;
    instr_srli   srli;
    instr_srai   srai;
    instr_ori    ori;
    instr_andi   andi;

    extern function new(string name="itype_seq");
    extern task body();
endclass

function itype_seq::new(string name="itype_seq");
    super.new(name);
endfunction

task itype_seq::body();
    for(int i = 0; i < 100; i++) begin
        addi = new();
        addi.randomize();
    end

    for(int i = 201; i < 300; i++) begin
        slli = new();
        slli.randomize();
    end

    for(int i = 301; i < 400; i++) begin
        slti = new();
        slti.randomize();
    end

    for(int i = 401; i < 500; i++) begin
        sltui = new();
        sltui.randomize();
    end

    for(int i = 501; i < 600; i++) begin
        xori = new();
        xori.randomize();
    end

    for(int i = 601; i < 700; i++) begin
        srli = new();
        srli.randomize();
    end

    for(int i = 701; i < 800; i++) begin
        srai = new();
        srai.randomize();
    end

    for(int i = 801; i < 900; i++) begin
        ori = new();
        ori.randomize();
    end

    for(int i = 901; i < 1000; i++) begin
        andi = new();
        andi.randomize();
    end

   	`uvm_info(get_type_name(), "itype IMEM INIT FINISH", UVM_NONE)
endtask
`endif