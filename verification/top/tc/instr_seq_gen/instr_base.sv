`ifndef INSTR_BASE__SV
`define INSTR_BASE__SV

class instr_base;
    bit [31:0]  instruction;
    rand bit [6:0] instr_opcode;

    virtual function pack();
    endfunction;
endclass

//Instruction type
//RTYPE
class instr_rtype extends instr_base;

    rand bit [4:0] instr_rd;
    rand bit [2:0] instr_funct3;
    rand bit [4:0] instr_rs1;
    rand bit [4:0] instr_rs2;
    rand bit [6:0] instr_funct7;

    extern function new();
    extern function pack();
    extern constraint rtype_cons_opcode; 
endclass

function instr_rtype::new();
    super.new();
endfunction;

function instr_rtype::pack();
    instruction[6:0]   = instr_opcode;
    instruction[11:7]  = instr_rd;
    instruction[14:12] = instr_funct3;
    instruction[19:15] = instr_rs1;
    instruction[24:20] = instr_rs2;
    instruction[31:25] = instr_funct7;
endfunction

constraint instr_rtype::rtype_cons_opcode{
    instr_opcode inside {7'b0110011};
    instr_funct3 inside {3'b000,
                         3'b001,
                         3'b010,
                         3'b011,
                         3'b100,
                         3'b101,
                         3'b110,
                         3'b111};

    if ((instr_funct3 == 3'b000) | (instr_funct3 == 3'b101)){
        instr_funct7 inside {7'b0000000,7'b0100000};
    }
    else {
        instr_funct7 inside {7'b0000000};
    }
}

///////////////////////////////////////////////////////////////////

//ITYPE
class instr_itype extends instr_base;

    rand bit [4:0]  instr_rd;
    rand bit [2:0]  instr_funct3;
    rand bit [4:0]  instr_rs1;
    rand bit [11:0] instr_imm;

    function new();
        super.new();
    endfunction

    extern function pack();
    extern constraint itype_cons_opcode; 
endclass

function instr_itype::pack();
    instruction[6:0]   = instr_opcode;
    instruction[11:7]  = instr_rd;
    instruction[14:12] = instr_funct3;
    instruction[19:15] = instr_rs1;
    instruction[31:20] = instr_imm;
endfunction

constraint instr_itype::itype_cons_opcode{
    instr_opcode inside {7'b0010011, 7'b0000011, 7'b1100111};
    if(instr_opcode == 7'b0010011){
        instr_funct3 inside {3'b000,
                            3'b001,
                            3'b010,
                            3'b011,
                            3'b100,
                            3'b101,
                            3'b110,
                            3'b111};
        if (instr_funct3 == 3'b001){
            instr_imm[11:5] inside {7'b0000000};
        }
	    else if (instr_funct3 == 3'b101){	
            instr_imm[11:5] inside {7'b0000000,7'b0100000};
	    }
    }
    else if(instr_opcode == 7'b0000011){
        instr_funct3 inside {3'b000,
                             3'b001,
                             3'b010,
                             3'b100,
                             3'b101};
    }
    else {
        instr_funct3 inside {3'b000};
    }
}

///////////////////////////////////////////////////////////////////

//STYPE
class instr_stype extends instr_base;

    rand bit [2:0] instr_funct3;
    rand bit [4:0] instr_rs1;
    rand bit [4:0] instr_rs2;
    rand bit [12:1] instr_imm;

    function new();
        super.new();
    endfunction

    extern function pack();
    extern constraint stype_cons_opcode; 
endclass

function instr_stype::pack();
    instruction[6:0]   = instr_opcode;
    instruction[11:7]  = instr_imm[5:1];
    instruction[14:12] = instr_funct3;
    instruction[19:15] = instr_rs1;
    instruction[24:20] = instr_rs2;
    instruction[31:25] = instr_imm[12:6];
endfunction

constraint instr_stype::stype_cons_opcode{
    instr_opcode inside {7'b0100011};
    instr_funct3 inside {3'b000,
                         3'b001,
                         3'b010};
}

///////////////////////////////////////////////////////////////////

//BTYPE
class instr_btype extends instr_base;

    rand bit [2:0]  instr_funct3;
    rand bit [4:0]  instr_rs1;
    rand bit [4:0]  instr_rs2;
    rand bit [12:1] instr_imm;

    function new();
        super.new();
    endfunction

    extern function pack();
    extern constraint btype_cons_opcode; 
endclass

function instr_btype::pack();
    instruction[6:0]   = instr_opcode;
    instruction[11:7]  = {instr_imm[4:1],instr_imm[11]};
    instruction[14:12] = instr_funct3;
    instruction[19:15] = instr_rs1;
    instruction[24:20] = instr_rs2;
    instruction[31:25] = {instr_imm[12],instr_imm[10:5]};
endfunction

constraint instr_btype::btype_cons_opcode{
    instr_opcode inside {7'b1100011};
    instr_funct3 inside {3'b000,
                         3'b001,
                         3'b100,
                         3'b101,
                         3'b110,
                         3'b111};
}

///////////////////////////////////////////////////////////////////

//UTYPE
class instr_utype extends instr_base;
    rand bit [31:12] instr_imm;
    rand bit [4:0] instr_rd;

    function new();
        super.new();
    endfunction

    extern function pack();
    extern constraint utype_cons_opcode; 
endclass

function instr_utype::pack();
    instruction[6:0]   = instr_opcode;
    instruction[11:7]  = instr_rd;
    instruction[31:12] = instr_imm;
endfunction

constraint instr_utype::utype_cons_opcode{
    instr_opcode inside {7'b0110111, 
                         7'b0010111}; 
}

///////////////////////////////////////////////////////////////////

// J TYPE
class instr_jtype extends instr_base;

    rand bit [4:0]  instr_rd;
    rand bit [20:1] instr_imm;

    function new();
        super.new();
    endfunction

    extern function pack();
    extern constraint jtype_cons_opcode; 
endclass

function instr_jtype::pack();
    instruction[6:0]   = instr_opcode;
    instruction[11:7]  = instr_rd;
    instruction[31:12] = {instr_imm[20], instr_imm[10:1], instr_imm[11], instr_imm[19:12]};
endfunction

constraint instr_jtype::jtype_cons_opcode{
    instr_opcode inside {7'b1101111};
}
///////////////////////////////////////////////////////////////////

//R Type instruction
//ADD
class instr_add extends instr_rtype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_add::new();
    super.new();
endfunction;

constraint instr_add::cons_opcode{
    instr_funct3 == 3'b000;
    instr_funct7 == 7'b0000000;
}

//SUB
class instr_sub extends instr_rtype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_sub::new();
    super.new();
endfunction;

constraint instr_sub::cons_opcode{
    instr_funct3 == 3'b000;
    instr_funct7 == 7'b0100000;
}

//SLL
class instr_sll extends instr_rtype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_sll::new();
    super.new();
endfunction;

constraint instr_sll::cons_opcode{
    instr_funct3 == 3'b001;
    instr_funct7 == 7'b0000000;
}

//SLT
class instr_slt extends instr_rtype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_slt::new();
    super.new();
endfunction;

constraint instr_slt::cons_opcode{
    instr_funct3 == 3'b010;
    instr_funct7 == 7'b0000000;
}

//SLTU
class instr_sltu extends instr_rtype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_sltu::new();
    super.new();
endfunction;

constraint instr_sltu::cons_opcode{
    instr_funct3 == 3'b011;
    instr_funct7 == 7'b0000000;
}

//XOR
class instr_xor extends instr_rtype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_xor::new();
    super.new();
endfunction;

constraint instr_xor::cons_opcode{
    instr_funct3 == 3'b100;
    instr_funct7 == 7'b0000000;
}

//SRL
class instr_srl extends instr_rtype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_srl::new();
    super.new();
endfunction;

constraint instr_srl::cons_opcode{
    instr_funct3 == 3'b101;
    instr_funct7 == 7'b0000000;
}

//SRA
class instr_sra extends instr_rtype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_sra::new();
    super.new();
endfunction;

constraint instr_sra::cons_opcode{
    instr_funct3 == 3'b101;
    instr_funct7 == 7'b0100000;
}

//OR
class instr_or extends instr_rtype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_or::new();
    super.new();
endfunction;

constraint instr_or::cons_opcode{
    instr_funct3 == 3'b110;
    instr_funct7 == 7'b0000000;
}

//AND
class instr_and extends instr_rtype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_and::new();
    super.new();
endfunction;

constraint instr_and::cons_opcode{
    instr_funct3 == 3'b111;
    instr_funct7 == 7'b0000000;
}

//I Type instruction 

//ADDI
class instr_addi extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_addi::new();
    super.new();
endfunction;

constraint instr_addi::cons_opcode{
    instr_opcode == 7'b0010011;
    instr_funct3 == 3'b000;
}

//SLLI
class instr_slli extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_slli::new();
    super.new();
endfunction;

constraint instr_slli::cons_opcode{
    instr_opcode == 7'b0010011;
    instr_funct3 == 3'b001;
    instr_imm[11:5] == 7'b0000000;
}

//SLTI
class instr_slti extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_slti::new();
    super.new();
endfunction;

constraint instr_slti::cons_opcode{
    instr_opcode == 7'b0010011;
    instr_funct3 == 3'b010;
}

//SLTIU
class instr_sltiu extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_sltiu::new();
    super.new();
endfunction;

constraint instr_sltiu::cons_opcode{
    instr_opcode == 7'b0010011;
    instr_funct3 == 3'b011;
}

//XORI
class instr_xori extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_xori::new();
    super.new();
endfunction;

constraint instr_xori::cons_opcode{
    instr_opcode == 7'b0010011;
    instr_funct3 == 3'b100;
}

//SRLI
class instr_srli extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_srli::new();
    super.new();
endfunction;

constraint instr_srli::cons_opcode{
    instr_opcode == 7'b0010011;
    instr_funct3 == 3'b101;
    instr_imm[11:5] == 7'b0000000;
}

//SRAI
class instr_srai extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_srai::new();
    super.new();
endfunction;

constraint instr_srai::cons_opcode{
    instr_opcode == 7'b0010011;
    instr_funct3 == 3'b101;
    instr_imm[11:5] == 7'b0100000;
}

//ORI
class instr_ori extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_ori::new();
    super.new();
endfunction;

constraint instr_ori::cons_opcode{
    instr_opcode == 7'b0010011;
    instr_funct3 == 3'b110;
}

//ANDI
class instr_andi extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_andi::new();
    super.new();
endfunction;

constraint instr_andi::cons_opcode{
    instr_opcode == 7'b0010011;
    instr_funct3 == 3'b111;
}
//Load

//LB
class instr_lb extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_lb::new();
    super.new();
endfunction;

constraint instr_lb::cons_opcode{
    instr_opcode == 7'b0000011;
    instr_funct3 == 3'b000;

    //instr_rs1 == 'b0;
    //instr_imm <'h7ff;
}
//LH
class instr_lh extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_lh::new();
    super.new();
endfunction;

constraint instr_lh::cons_opcode{
    instr_opcode == 7'b0000011;
    instr_funct3 == 3'b001;

    //instr_rs1 == 'b0;
    //instr_imm <'h7ff;
}
//LW
class instr_lw extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_lw::new();
    super.new();
endfunction;

constraint instr_lw::cons_opcode{
    instr_opcode == 7'b0000011;
    instr_funct3 == 3'b010;

    //instr_rs1 == 'b0;
    //instr_imm <'h7ff;
}
//LBU
class instr_lbu extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_lbu::new();
    super.new();
endfunction;

constraint instr_lbu::cons_opcode{
    instr_opcode == 7'b0000011;
    instr_funct3 == 3'b100;

    //instr_rs1 == 'b0;
    //instr_imm <'h7ff;
}

//LHU
class instr_lhu extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_lhu::new();
    super.new();
endfunction;

constraint instr_lhu::cons_opcode{
    instr_opcode == 7'b0000011;
    instr_funct3 == 3'b101;

    //instr_rs1 == 'b0;
    //instr_imm <'h7ff;
}

//JALR
class instr_jalr extends instr_itype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_jalr::new();
    super.new();
endfunction;

constraint instr_jalr::cons_opcode{
    instr_opcode == 7'b1100111;
    instr_funct3 == 3'b000;
}

//S Type
//SB
class instr_sb extends instr_stype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_sb::new();
    super.new();
endfunction;

constraint instr_sb::cons_opcode{
    instr_funct3 == 3'b000;
}

//SH
class instr_sh extends instr_stype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_sh::new();
    super.new();
endfunction;

constraint instr_sh::cons_opcode{
    instr_funct3 == 3'b001;
}

//SW
class instr_sw extends instr_stype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_sw::new();
    super.new();
endfunction;

constraint instr_sw::cons_opcode{
    instr_funct3 == 3'b010;
}

//B Type
//BEQ
class instr_beq extends instr_btype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_beq::new();
    super.new();
endfunction;

constraint instr_beq::cons_opcode{
    instr_funct3 == 3'b000;
}

//BNE
class instr_bne extends instr_btype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_bne::new();
    super.new();
endfunction;

constraint instr_bne::cons_opcode{
    instr_funct3 == 3'b001;
}

//BLT
class instr_blt extends instr_btype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_blt::new();
    super.new();
endfunction;

constraint instr_blt::cons_opcode{
    instr_funct3 == 3'b100;
}

//BGE
class instr_bge extends instr_btype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_bge::new();
    super.new();
endfunction;

constraint instr_bge::cons_opcode{
    instr_funct3 == 3'b101;
}

//BLTU
class instr_bltu extends instr_btype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_bltu::new();
    super.new();
endfunction;

constraint instr_bltu::cons_opcode{
    instr_funct3 == 3'b110;
}

//BGEU
class instr_bgeu extends instr_btype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_bgeu::new();
    super.new();
endfunction;

constraint instr_bgeu::cons_opcode{
    instr_funct3 == 3'b111;
}

//U Type instruction
//LUI
class instr_lui extends instr_utype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_lui::new();
    super.new();
endfunction;

constraint instr_lui::cons_opcode{
    instr_opcode == 7'b0110111; 
}

//AUIPC
class instr_auipc extends instr_utype;
    extern function new();
    extern constraint cons_opcode; 
endclass

function instr_auipc::new();
    super.new();
endfunction;

constraint instr_auipc::cons_opcode{
    instr_opcode == 7'b0010111; 
}

//J TYPE
//JAL
class instr_jal extends instr_jtype;
    extern function new();
endclass

function instr_jal::new();
    super.new();
endfunction;

`endif
