`ifndef INSTR_BASE__SV
`define INSTR_BASE__SV

class instr_base;
    bit [31:0]  instruction;
    rand bit [6:0] instr_opcode;

    virtual function pack();
    endfunction;
endclass

class instr_utype extends instr_base;
    rand bit [31:12] instr_imm;
    rand bit [4:0] instr_rdaddr;

    function new();
        super.new();
    endfunction

    extern function pack();
    extern constraint utype_cons_opcode; 
endclass

function instr_utype::pack();
    instruction[6:0]   = instr_opcode;
    instruction[11:7]  = instr_rdaddr;
    instruction[31:12] = instr_imm   ;
endfunction

constraint instr_utype::utype_cons_opcode{
    instr_opcode inside {7'b0110111, 
                         7'b0010111}; 
}

//U Type instructon
//=============== LUI
class instr_lui extends instr_utype;
    extern constraint cons_opcode; 
endclass

constraint instr_lui::cons_opcode{
    instr_opcode == 7'b0110111; 
}

//=============== AUIPC
class instr_auipc extends instr_utype;
    extern constraint cons_opcode; 
endclass

constraint instr_auipc::cons_opcode{
    instr_opcode == 7'b0010111; 
}

`endif
