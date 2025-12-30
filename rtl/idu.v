module idu (
    clk,
    rst_n,
    //ifu input
    ifu_idu_vld,
    ifu_idu_ins,
    ifu_idu_pc,
    //alu input
    alu_idu_rdy,
    alu_idu_flush_vld,
    alu_idu_wb_addr,
    alu_idu_wb_data,
    alu_idu_wb_vld,
    alu_idu_ld_vld,
    //lsu input
    lsu_idu_wb_vld,
    lsu_idu_ld_vld,
    lsu_idu_wb_addr,
    lsu_idu_wb_data,
    lsu_rf_wb_vld,
    lsu_rf_wb_addr,
    lsu_rf_wb_data,
    //rf input 
    rf_idu_scr1_data,
    rf_idu_scr2_data,
    //ifu output
    idu_ifu_rdy,
    idu_ifu_wfi,
    //alu output
    idu_alu_vld,
    idu_alu_src1,
    idu_alu_src2,
    //rsicv op
    idu_alu_wb_vld,
    idu_alu_add_op,
    idu_alu_sub_op,
    idu_alu_slt_op,
    idu_alu_sltu_op,
    idu_alu_xor_op,
    idu_alu_or_op,
    idu_alu_and_op,
    idu_alu_sll_op,
    idu_alu_srl_op,
    idu_alu_sra_op,
    idu_alu_beq_op,
    idu_alu_bne_op,
    idu_alu_blt_op,
    idu_alu_bge_op,
    idu_alu_bltu_op,
    idu_alu_bgeu_op,
    idu_alu_lb_op,
    idu_alu_lh_op,
    idu_alu_lw_op,
    idu_alu_lbu_op,
    idu_alu_lhu_op,
    idu_alu_sb_op,
    idu_alu_sh_op,
    idu_alu_sw_op,
    idu_alu_lui_op,
    idu_alu_aui_op,
    idu_alu_jal_op,
    idu_alu_jalr_op,
    //data pass
    idu_alu_wb_addr,
    idu_alu_br_st_imm,
    idu_alu_pc,
    //matrix multiplication
    idu_alu_ld_iram,
    idu_alu_ld_wram,
    idu_alu_st_iram,
    idu_alu_st_wram,
    idu_alu_st_oram,
    idu_alu_st_dram,
    idu_alu_conv,
    idu_alu_act,
    idu_alu_pool,
    idu_alu_wfi,
    idu_alu_dram_addr,
    idu_alu_num,
    idu_alu_len,
    idu_alu_str,
    idu_alu_start_x,
    idu_alu_start_y,
    idu_alu_ld_st_addr,
    idu_alu_st_low,
    idu_alu_iram_start_addr,
    idu_alu_wram_start_addr,
    idu_alu_wram_row_len,
    idu_alu_iram_row_len,
    idu_alu_col_len,
    idu_alu_act_type,
    idu_alu_pool_size,
    idu_alu_mxu_clr,
    //rf output
    idu_rf_scr1_addr,
    idu_rf_scr2_addr 
);
    
    input clk;
    input rst_n;

    input ifu_idu_vld;
    input [31:0] ifu_idu_ins;
    input [31:0] ifu_idu_pc;

    input alu_idu_rdy;
    input alu_idu_flush_vld;
    input [4:0] alu_idu_wb_addr;
    input [31:0] alu_idu_wb_data;
    input alu_idu_wb_vld;
    
    input lsu_idu_wb_vld;
    input lsu_idu_ld_vld;
    input [4:0] lsu_idu_wb_addr;
    input [31:0] lsu_idu_wb_data;
    input lsu_rf_wb_vld;
    input [4:0] lsu_rf_wb_addr;
    input [31:0] lsu_rf_wb_data;

    input [31:0] rf_idu_scr1_data;
    input [31:0] rf_idu_scr2_data;
    
    output idu_ifu_rdy;
    output idu_ifu_wfi;

    output idu_alu_vld;
    output [31:0] idu_alu_src1;
    output [31:0] idu_alu_src2;
    output idu_alu_wb_vld;
    output idu_alu_add_op;
    output idu_alu_sub_op;
    output idu_alu_slt_op;
    output idu_alu_sltu_op;
    output idu_alu_xor_op;
    output idu_alu_or_op;
    output idu_alu_and_op;
    output idu_alu_sll_op;
    output idu_alu_srl_op;
    output idu_alu_sra_op;
    output idu_alu_beq_op;
    output idu_alu_bne_op;
    output idu_alu_blt_op;
    output idu_alu_bge_op;
    output idu_alu_bltu_op;
    output idu_alu_bgeu_op;
    output idu_alu_lb_op;
    output idu_alu_lh_op;
    output idu_alu_lw_op;
    output idu_alu_lbu_op;
    output idu_alu_lhu_op;
    output idu_alu_sb_op;
    output idu_alu_sh_op;
    output idu_alu_sw_op;
    output idu_alu_lui_op;
    output idu_alu_aui_op;
    output idu_alu_jal_op;
    output idu_alu_jalr_op;

    output [4:0] idu_alu_wb_addr;
    output [31:0] idu_alu_br_st_imm;
    output [31:0] idu_alu_pc;

    output idu_alu_ld_iram;
    output idu_alu_ld_wram;
    output idu_alu_st_iram;
    output idu_alu_st_wram;
    output idu_alu_st_oram;
    output idu_alu_st_dram;
    output idu_alu_conv;
    output idu_alu_act;
    output idu_alu_pool;
    output idu_alu_wfi;
    output [30:0] idu_alu_dram_addr;
    output [7:0] idu_alu_num;
    output [2:0] idu_alu_len;
    output [2:0] idu_alu_str;
    output [3:0] idu_alu_start_x;
    output [3:0] idu_alu_start_y;
    output [11:0] idu_alu_ld_st_addr;
    output idu_alu_st_low;
    output [11:0] idu_alu_iram_start_addr;
    output [11:0]idu_alu_wram_start_addr;
    output [3:0] idu_alu_wram_row_len;
    output [3:0] idu_alu_iram_row_len;
    output [3:0] idu_alu_col_len;
    output [1:0] idu_alu_act_type;
    output [1:0] idu_alu_pool_size;
    output idu_alu_mxu_clr;
    
    output [4:0] rf_idu_scr1_addr;
    output [4:0] rf_idu_scr2_addr;

    wire idu_vld;
    wire idu_alu_vld_nxt;

    wire [31:0] idu_ins;
    wire [31:0] idu_ins_nxt;

    wire idu_alu_wb_vld_nxt;

    wire [31:0] scr1_nxt;
    wire [31:0] scr2_nxt;

    wire src2_sel_imm;

    wire [31:0] imm;
    wire [31:0] i_imm;
    wire [31:0] s_imm;
    wire [31:0] b_imm;
    wire [31:0] u_imm;
    wire [31:0] j_imm;

    wire riscv_r_type;
    wire riscv_i_type;
    wire riscv_s_type;
    wire riscv_b_type;
    wire riscv_u_type;
    wire riscv_j_type;

    wire alu_idu_hazard_src1;
    wire alu_idu_ld_hazard_src1;
    wire lsu_idu_hazard_src1;
    wire lsu_idu_ld_hazard_src1;
    wire rf_idu_hazard_src1;

    wire alu_idu_hazard_src2;
    wire alu_idu_ld_hazard_src2;
    wire lsu_idu_hazard_src2;
    wire lsu_idu_ld_hazard_src2;
    wire rf_idu_hazard_src2;

    wire inst_type_is_ld;
    wire inst_type_is_st;
    wire inst_type_is_stm;
    wire inst_type_is_mm;
    wire inst_type_is_act;
    wire inst_type_is_pool;
    wire inst_type_is_wfi;

    wire sram_type_iram;
    wire sram_type_wram;
    wire sram_type_oram;

    wire [1:0] mm_iram_dir;
    wire [1:0] mm_wram_dir;
    
    wire op_r;
    wire op_i;
    wire op_ld;
    wire op_st;
    wire op_u;
    wire op_aui;
    wire op_jal;
    wire op_jalr;
    wire op_b;

    wire add_op;
    wire sub_op;
    wire slt_op;
    wire sltu_op;
    wire xor_op;
    wire or_op;
    wire and_op;
    wire sll_op;
    wire srl_op;
    wire sra_op;
    
    wire beq_op;
    wire bne_op;
    wire blt_op;
    wire bge_op;
    wire bltu_op;
    wire bgeu_op;
    
    wire lb_op;
    wire lh_op;
    wire lw_op;
    wire lbu_op;
    wire lhu_op;

    wire sb_op;
    wire sh_op;
    wire sw_op;

    assign idu_vld = idu_ifu_rdy & ifu_idu_vld & ~alu_idu_flush_vld;
    assign idu_alu_vld_nxt = idu_vld | idu_vld & ~alu_idu_rdy;
    assign idu_ins_nxt = idu_vld ? ifu_idu_ins : idu_ins;

    DFFR #(.WIDTH(1))
    ff_idu_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_alu_vld_nxt),
        .q(idu_alu_vld)
    );

    DFFE #(.WIDTH(32))
    ff_idu_ins(
        .clk(clk),
        .en(idu_vld),
        .d(idu_ins_nxt),
        .q(idu_ins)
    );

    assign idu_ifu_rdy = (alu_idu_rdy | ~idu_alu_vld) & ~(lsu_idu_ld_hazard_src1 | lsu_idu_ld_hazard_src2 | alu_idu_ld_hazard_src1 | alu_idu_ld_hazard_src2);

    assign inst_type_is_ld      = (idu_ins[`OP_RNG] == `LD_OP_CODE     );
    assign inst_type_is_st      = (idu_ins[`OP_RNG] == `ST_OP_CODE     );
    assign inst_type_is_stm     = (idu_ins[`OP_RNG] == `STM_OP_CODE    );
    assign inst_type_is_mm      = (idu_ins[`OP_RNG] == `MM_OP_CODE     );
    assign inst_type_is_act     = (idu_ins[`OP_RNG] == `ACT_OP_CODE    );
    assign inst_type_is_pool    = (idu_ins[`OP_RNG] == `POOL_OP_CODE   );
    assign inst_type_is_wfi     = (idu_ins[`OP_RNG] == `WFI_OP_CODE    );

    assign sram_type_iram = (idu_alu_src1[`SRAM_TYPE_RNG] == 2'b00);
    assign sram_type_wram = (idu_alu_src1[`SRAM_TYPE_RNG] == 2'b10);
    assign sram_type_oram = (idu_alu_src1[`SRAM_TYPE_RNG] == 2'b01);

    assign idu_ifu_wfi = inst_type_is_wfi;

    assign idu_alu_ld_iram = inst_type_is_ld & sram_type_iram;
    assign idu_alu_ld_wram = inst_type_is_ld & sram_type_wram;
   
    assign idu_alu_st_iram = inst_type_is_st & sram_type_iram;
    assign idu_alu_st_wram = inst_type_is_st & sram_type_wram;
    assign idu_alu_st_oram = inst_type_is_st & sram_type_oram;

    assign idu_alu_conv = inst_type_is_mm;
    assign idu_alu_act  = inst_type_is_act;
    assign idu_alu_pool = inst_type_is_pool;
    assign idu_alu_wfi  = inst_type_is_wfi;

    assign idu_alu_dram_addr    = idu_alu_src2[`DRAM_ADDR_RNG];
    assign idu_alu_num          = {idu_ins[`NUM_7_2_RNG], idu_ins[`NUM_1_0_RNG]};
    assign idu_alu_len          = idu_ins[`LEN_RNG];
    assign idu_alu_str          = idu_ins[`STR_RNG];
    assign idu_alu_start_x      = idu_alu_src2[`REG_COL_RNG];
    assign idu_alu_start_y      = idu_alu_src2[`REG_ROW_RNG];
    assign idu_alu_ld_st_addr   = idu_alu_src1[`SRAM_ADDR_RNG];
    assign idu_alu_st_low       = idu_ins[`ST_LOW_RNG];
    
    assign idu_alu_iram_start_addr  = idu_alu_src2[`IRAM_ADDR_RNG]; 
    assign idu_alu_iram_col_len     = idu_ins[`IRAM_CLEN_RNG]; 
    assign idu_alu_iram_row_len     = idu_ins[`IRAM_RLEN_RNG]; 

    assign idu_alu_wram_start_addr  = idu_alu_src1[`WRAM_ADDR_RNG]; 
    assign idu_alu_wram_col_len     = idu_ins[`WRAM_CLEN_RNG]; 
    assign idu_alu_wram_row_len     = idu_ins[`WRAM_RLEN_RNG];
    
    assign idu_alu_act_type     = idu_ins[`ACT_TYPE_RNG];
    assign idu_alu_pool_size    = idu_ins[`POOL_TYPE_RNG];

    assign idu_alu_mxu_clr = idu_ins[`CLR_RNG];

    assign idu_alu_wb_addr = idu_ins[`RD_RNG];

    assign idu_rf_scr1_addr = ifu_idu_ins[`RS1_RNG];
    assign idu_rf_scr2_addr = ifu_idu_ins[`RS2_RNG];

    assign scr1_nxt = alu_idu_hazard_src1 ? alu_idu_wb_data 
                    : lsu_idu_hazard_src1 ? lsu_idu_wb_data
                    : rf_idu_hazard_src1 ? lsu_rf_wb_data
                    : rf_idu_scr1_data;
    assign scr2_nxt = src2_sel_imm ? imm 
                    : alu_idu_hazard_src2 ? alu_idu_wb_data 
                    : lsu_idu_hazard_src2 ? lsu_idu_wb_data
                    : rf_idu_hazard_src2 ? lsu_rf_wb_data
                    : rf_idu_scr2_data;

    assign src2_sel_imm = riscv_i_type | riscv_j_type | riscv_u_type;

    assign i_imm = {{32-`I_TYPE_IMM_SIZE{ifu_idu_ins[`I_TYPE_IMM_MSB]}}, ifu_idu_ins[`I_TYPE_IMM_RNG]};
    assign s_imm = {{32-`S_TYPE_IMM_SIZE{ifu_idu_ins[`S_TYPE_IMM_11_5_MSB]}}, ifu_idu_ins[`S_TYPE_IMM_11_5_RNG], ifu_idu_ins[`S_TYPE_IMM_4_0_RNG]};
    assign b_imm = {{32-`B_TYPE_IMM_SIZE-1{ifu_idu_ins[`B_TYPE_IMM_12_MSB]}}, ifu_idu_ins[`B_TYPE_IMM_12_RNG],ifu_idu_ins[`B_TYPE_IMM_11_RNG], ifu_idu_ins[`B_TYPE_IMM_10_5_RNG], ifu_idu_ins[`B_TYPE_IMM_4_1_RNG], 1'b0};
    assign u_imm = {ifu_idu_ins[`U_TYPE_IMM_31_12_RNG], {32-`U_TYPE_IMM_31_12_SIZE{1'b0}}};
    assign j_imm = {{32-`J_TYPE_IMM_SIZE-1{ifu_idu_ins[`J_TYPE_IMM_20_MSB]}} , ifu_idu_ins[`J_TYPE_IMM_20_RNG], ifu_idu_ins[`J_TYPE_IMM_19_12_RNG], ifu_idu_ins[`J_TYPE_IMM_11_RNG], ifu_idu_ins[`J_TYPE_IMM_10_1_RNG], 1'b0};

    assign riscv_r_type = (ifu_idu_ins[`OP_RNG] == `OP);
    assign riscv_i_type = (ifu_idu_ins[`OP_RNG] == `OP_IMM) | (ifu_idu_ins[`OP_RNG] == `JALR) |  (ifu_idu_ins[`OP_RNG] == `LOAD);
    assign riscv_s_type = (ifu_idu_ins[`OP_RNG] == `STORE);
    assign riscv_b_type = (ifu_idu_ins[`OP_RNG] == `BRANCH);
    assign riscv_u_type = (ifu_idu_ins[`OP_RNG] == `LUI) |  (ifu_idu_ins[`OP_RNG] == `AUIPC);
    assign riscv_j_type = (ifu_idu_ins[`OP_RNG] == `JAL);

    assign imm = {32{riscv_i_type}} & i_imm
               | {32{riscv_s_type}} & s_imm
               | {32{riscv_b_type}} & b_imm
               | {32{riscv_u_type}} & u_imm
               | {32{riscv_j_type}} & j_imm;

    assign alu_idu_hazard_src1    = (alu_idu_wb_addr == idu_rf_src1_addr) & alu_idu_wb_vld & ~(riscv_u_type | riscv_j_type) & ~alu_idu_ld_vld;
    assign alu_idu_ld_hazard_src1 = (alu_idu_wb_addr == idu_rf_src1_addr) & alu_idu_wb_vld & ~(riscv_u_type | riscv_j_type) &  alu_idu_ld_vld;
    assign lsu_idu_hazard_src1    = (lsu_idu_wb_addr == idu_rf_src1_addr) & lsu_idu_wb_vld & ~(riscv_u_type | riscv_j_type) & ~lsu_idu_ld_vld;
    assign lsu_idu_ld_hazard_src1 = (lsu_idu_wb_addr == idu_rf_src1_addr) & lsu_idu_wb_vld & ~(riscv_u_type | riscv_j_type) &  lsu_idu_ld_vld;
    assign rf_idu_hazard_src1     = (lsu_rf_wb_addr  == idu_rf_src1_addr) & lsu_rf_wb_vld  & ~(riscv_u_type | riscv_j_type);
    
    assign alu_idu_hazard_src2    = (alu_idu_wb_addr == idu_rf_src1_addr) & alu_idu_wb_vld & ~(riscv_u_type | riscv_j_type | riscv_i_type) & ~alu_idu_ld_vld;
    assign alu_idu_ld_hazard_src2 = (alu_idu_wb_addr == idu_rf_src1_addr) & alu_idu_wb_vld & ~(riscv_u_type | riscv_j_type | riscv_i_type) &  alu_idu_ld_vld;
    assign lsu_idu_hazard_src2    = (lsu_idu_wb_addr == idu_rf_src1_addr) & lsu_idu_wb_vld & ~(riscv_u_type | riscv_j_type | riscv_i_type) & ~lsu_idu_ld_vld;
    assign lsu_idu_ld_hazard_src2 = (lsu_idu_wb_addr == idu_rf_src1_addr) & lsu_idu_wb_vld & ~(riscv_u_type | riscv_j_type | riscv_i_type) &  lsu_idu_ld_vld;
    assign rf_idu_hazard_src2     = (lsu_rf_wb_addr  == idu_rf_src1_addr) & lsu_rf_wb_vld  & ~(riscv_u_type | riscv_j_type | riscv_i_type);
    
    DFFE #(.WIDTH(32))
    ff_idu_alu_src1(
        .clk(clk),
        .en(idu_vld),
        .d(scr1_nxt),
        .q(idu_alu_src1)
    );
    
    DFFE #(.WIDTH(32))
    ff_idu_alu_src2(
        .clk(clk),
        .en(idu_vld),
        .d(scr2_nxt),
        .q(idu_alu_src2)
    );

    assign idu_alu_op = idu_ins[`OP_RNG];
    assign idu_alu_funct3 = idu_ins[`FUNCT3_RNG];
    assign idu_alu_funct7 = idu_ins[`FUNCT7_RNG];
    assign idu_alu_wb_vld_nxt = riscv_r_type | riscv_i_type | riscv_j_type | riscv_u_type;
    
    DFFRE #(.WIDTH(1))
    ff_idu_alu_wb_vld(
        .clk(clk),
        .rst_n(rst_n),
        .en(idu_vld),
        .d(idu_alu_wb_vld_nxt),
        .q(idu_alu_wb_vld)
    );
    
    DFFE #(.WIDTH(31))
    ff_idu_alu_pc(
        .clk(clk),
        .en(idu_vld),
        .d(ifu_idu_pc),
        .q(idu_alu_pc)
    );

    assign idu_alu_br_st_imm = {32{op_b}} & b_imm | {32{op_st}} & s_imm;
    
    assign op_r    = (ifu_idu_ins[`OP_RNG] == `OP);
    assign op_i    = (ifu_idu_ins[`OP_RNG] == `OP_IMM);
    assign op_ld   = (ifu_idu_ins[`OP_RNG] == `LOAD);
    assign op_st   = (ifu_idu_ins[`OP_RNG] == `STORE);
    assign op_u    = (ifu_idu_ins[`OP_RNG] == `LUI);
    assign op_aui  = (ifu_idu_ins[`OP_RNG] == `AUIPC);
    assign op_jal  = (ifu_idu_ins[`OP_RNG] == `JAL);
    assign op_jalr = (ifu_idu_ins[`OP_RNG] == `JALR);
    assign op_b    = (ifu_idu_ins[`OP_RNG] == `BRANCH);

    assign add_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_ADD ) & (op_i | (op_r & ifu_idu_ins[`FUNCT7_RNG] == `FUNCT7_NORM));
    assign sub_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_ADD ) & (op_i | (op_r & ifu_idu_ins[`FUNCT7_RNG] == `FUNCT7_ALT ));
    assign slt_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SLT ) & (op_i | (op_r & ifu_idu_ins[`FUNCT7_RNG] == `FUNCT7_NORM));
    assign sltu_op = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SLTU) & (op_i | (op_r & ifu_idu_ins[`FUNCT7_RNG] == `FUNCT7_NORM));
    assign xor_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_XOR ) & (op_i | (op_r & ifu_idu_ins[`FUNCT7_RNG] == `FUNCT7_NORM));
    assign or_op   = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_OR  ) & (op_i | (op_r & ifu_idu_ins[`FUNCT7_RNG] == `FUNCT7_NORM));
    assign and_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_AND ) & (op_i | (op_r & ifu_idu_ins[`FUNCT7_RNG] == `FUNCT7_NORM));
    assign sll_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SLL ) & ((op_i | op_r) & ifu_idu_ins[`FUNCT7_RNG] == `FUNCT7_NORM);
    assign srl_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SR  ) & ((op_i | op_r) & ifu_idu_ins[`FUNCT7_RNG] == `FUNCT7_NORM);
    assign sra_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SR  ) & ((op_i | op_r) & ifu_idu_ins[`FUNCT7_RNG] == `FUNCT7_ALT );
    
    assign beq_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_ADD ) & op_b;
    assign bne_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SLL ) & op_b;
    assign blt_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_XOR ) & op_b;
    assign bge_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SR  ) & op_b;
    assign bltu_op = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_OR  ) & op_b;
    assign bgeu_op = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_AND ) & op_b;
    
    assign lb_op   = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_ADD ) & op_ld;
    assign lh_op   = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SLL ) & op_ld;
    assign lw_op   = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SLT ) & op_ld;
    assign lbu_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_XOR ) & op_ld;
    assign lhu_op  = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SR  ) & op_ld;
    
    assign sb_op   = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_ADD ) & op_st;
    assign sh_op   = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SLL ) & op_st;
    assign sw_op   = (ifu_idu_ins[`FUNCT3_RNG] == `FUNCT3_SLT ) & op_st;

    DFFE #(.WIDTH(1))
    ff_add_op(
        .clk(clk),
        .en(idu_vld),
        .d(add_op),
        .q(idu_alu_add_op)
    );

    DFFE #(.WIDTH(1))
    ff_sub_op(
        .clk(clk),
        .en(idu_vld),
        .d(sub_op),
        .q(idu_alu_sub_op)
    );

    DFFE #(.WIDTH(1))
    ff_slt_op(
        .clk(clk),
        .en(idu_vld),
        .d(slt_op),
        .q(idu_alu_slt_op)
    );

    DFFE #(.WIDTH(1))
    ff_sltu_op(
        .clk(clk),
        .en(idu_vld),
        .d(sltu_op),
        .q(idu_alu_sltu_op)
    );

    DFFE #(.WIDTH(1))
    ff_xor_op(
        .clk(clk),
        .en(idu_vld),
        .d(xor_op),
        .q(idu_alu_xor_op)
    );

    DFFE #(.WIDTH(1))
    ff_or_op(
        .clk(clk),
        .en(idu_vld),
        .d(or_op),
        .q(idu_alu_or_op)
    );

    DFFE #(.WIDTH(1))
    ff_and_op(
        .clk(clk),
        .en(idu_vld),
        .d(and_op),
        .q(idu_alu_and_op)
    );

    DFFE #(.WIDTH(1))
    ff_sll_op(
        .clk(clk),
        .en(idu_vld),
        .d(sll_op),
        .q(idu_alu_sll_op)
    );

    DFFE #(.WIDTH(1))
    ff_srl_op(
        .clk(clk),
        .en(idu_vld),
        .d(srl_op),
        .q(idu_alu_srl_op)
    );

    DFFE #(.WIDTH(1))
    ff_sra_op(
        .clk(clk),
        .en(idu_vld),
        .d(sra_op),
        .q(idu_alu_sra_op)
    );

    DFFE #(.WIDTH(1))
    ff_beq_op(
        .clk(clk),
        .en(idu_vld),
        .d(beq_op),
        .q(idu_alu_beq_op)
    );

    DFFE #(.WIDTH(1))
    ff_bne_op(
        .clk(clk),
        .en(idu_vld),
        .d(bne_op),
        .q(idu_alu_bne_op)
    );

    DFFE #(.WIDTH(1))
    ff_blt_op(
        .clk(clk),
        .en(idu_vld),
        .d(blt_op),
        .q(idu_alu_blt_op)
    );

    DFFE #(.WIDTH(1))
    ff_bge_op(
        .clk(clk),
        .en(idu_vld),
        .d(bge_op),
        .q(idu_alu_bge_op)
    );

    DFFE #(.WIDTH(1))
    ff_bltu_op(
        .clk(clk),
        .en(idu_vld),
        .d(bltu_op),
        .q(idu_alu_bltu_op)
    );

    DFFE #(.WIDTH(1))
    ff_bgeu_op(
        .clk(clk),
        .en(idu_vld),
        .d(bgeu_op),
        .q(idu_alu_bgeu_op)
    );

    DFFE #(.WIDTH(1))
    ff_lb_op(
        .clk(clk),
        .en(idu_vld),
        .d(lb_op),
        .q(idu_alu_lb_op)
    );

    DFFE #(.WIDTH(1))
    ff_lh_op(
        .clk(clk),
        .en(idu_vld),
        .d(lh_op),
        .q(idu_alu_lh_op)
    );

    DFFE #(.WIDTH(1))
    ff_lw_op(
        .clk(clk),
        .en(idu_vld),
        .d(lw_op),
        .q(idu_alu_lw_op)
    );

    DFFE #(.WIDTH(1))
    ff_lbu_op(
        .clk(clk),
        .en(idu_vld),
        .d(lbu_op),
        .q(idu_alu_lbu_op)
    );

    DFFE #(.WIDTH(1))
    ff_lhu_op(
        .clk(clk),
        .en(idu_vld),
        .d(lhu_op),
        .q(idu_alu_lhu_op)
    );

    DFFE #(.WIDTH(1))
    ff_sb_op(
        .clk(clk),
        .en(idu_vld),
        .d(sb_op),
        .q(idu_alu_sb_op)
    );

    DFFE #(.WIDTH(1))
    ff_sh_op(
        .clk(clk),
        .en(idu_vld),
        .d(sh_op),
        .q(idu_alu_sh_op)
    );

    DFFE #(.WIDTH(1))
    ff_sw_op(
        .clk(clk),
        .en(idu_vld),
        .d(sw_op),
        .q(idu_alu_sw_op)
    );

    DFFE #(.WIDTH(1))
    ff_lui_op(
        .clk(clk),
        .en(idu_vld),
        .d(op_u),
        .q(idu_alu_lui_op)
    );

    DFFE #(.WIDTH(1))
    ff_aui_op(
        .clk(clk),
        .en(idu_vld),
        .d(op_aui),
        .q(idu_alu_aui_op)
    );

    DFFE #(.WIDTH(1))
    ff_jal_op(
        .clk(clk),
        .en(idu_vld),
        .d(op_jal),
        .q(idu_alu_jal_op)
    );

    DFFE #(.WIDTH(1))
    ff_jalr_op(
        .clk(clk),
        .en(idu_vld),
        .d(op_jalr),
        .q(idu_alu_jalr_op)
    );

endmodule