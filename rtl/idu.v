module idu (
    clk,
    rst_n,
    //ifu input
    ifu_idu_vld,
    ifu_idu_ins,
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
    idu_alu_wb_vld,
    idu_alu_wb_addr,
    idu_alu_op,
    idu_alu_funct3,
    idu_alu_funct7,
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
    idu_alu_iram_col_dir,
    idu_alu_iram_row_dir,
    idu_alu_iram_col_len,
    idu_alu_iram_row_len,
    idu_alu_wram_start_addr,
    idu_alu_wram_col_dir,
    idu_alu_wram_row_dir,
    idu_alu_wram_col_len,
    idu_alu_wram_row_len,
    idu_alu_act_type,
    idu_alu_pool_size,
    //rf output
    idu_rf_scr1_addr,
    idu_rf_scr2_addr 
);
    
    input clk;
    input rst_n;

    input ifu_idu_vld;
    input [63:0] ifu_idu_ins;

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
    output [4:0] idu_alu_wb_addr;
    output [6:0] idu_alu_op;
    output [2:0] idu_alu_funct3;
    output [6:0] idu_alu_funct7;
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
    output idu_alu_iram_col_dir;
    output idu_alu_iram_row_dir;
    output [3:0] idu_alu_iram_col_len;
    output [3:0] idu_alu_iram_row_len;
    output [11:0]idu_alu_wram_start_addr;
    output idu_alu_wram_col_dir;
    output idu_alu_wram_row_dir;
    output [3:0] idu_alu_wram_col_len;
    output [3:0] idu_alu_wram_row_len;
    output [1:0] idu_alu_act_type;
    output [1:0] idu_alu_pool_size;
    
    output [4:0] rf_idu_scr1_addr;
    output [4:0] rf_idu_scr2_addr;

    wire idu_vld;
    wire idu_vld_nxt;

    wire [63:0] idu_ins;
    wire [63:0] idu_ins_nxt;

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
    wire lsu_idu_hazard_src1;
    wire lsu_idu_ld_hazard_src1;
    wire rf_idu_hazard_src1;
    wire alu_idu_hazard_src2;
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

    assign idu_vld_nxt = idu_ifu_rdy & ifu_idu_vld & ~alu_idu_flush_vld | idu_vld & ~alu_idu_rdy;
    assign idu_ins_nxt = idu_vld_nxt ? ifu_idu_ins : idu_ins;

    DFFR #(.WIDTH(1))
    ff_idu_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_vld_nxt),
        .q(idu_vld)
    );

    DFFE #(.WIDTH(64))
    ff_idu_ins(
        .clk(clk),
        .en(ifu_idu_vld),
        .d(idu_ins_nxt),
        .q(idu_ins)
    );

    assign idu_ifu_rdy = alu_idu_rdy & ~(lsu_idu_ld_hazard_src1 | lsu_idu_ld_hazard_src2);

    assign inst_type_is_ld = idu_ins[`OP_RNG] == `LD_OP_CODE;
    assign inst_type_is_st = idu_ins[`OP_RNG] == `ST_OP_CODE;
    assign inst_type_is_stm = idu_ins[`OP_RNG] == `STM_OP_CODE;
    assign inst_type_is_mm = idu_ins[`OP_RNG] == `MM_OP_CODE;
    assign inst_type_is_act = idu_ins[`OP_RNG] == `ACT_OP_CODE;
    assign inst_type_is_pool = idu_ins[`OP_RNG] == `POOL_OP_CODE;
    assign inst_type_is_wfi = idu_ins[`OP_RNG] == `WFI_OP_CODE;

    assign sram_type_iram = idu_ins[`SRAM_TYPE_RNG] == 2'b00;
    assign sram_type_wram = idu_ins[`SRAM_TYPE_RNG] == 2'b10;
    assign sram_type_oram = idu_ins[`SRAM_TYPE_RNG] == 2'b01;

    assign idu_ifu_wfi = idu_vld & inst_type_is_wfi;
    assign idu_alu_vld = idu_vld;

    assign idu_alu_ld_iram = inst_type_is_ld & sram_type_iram;
    assign idu_alu_ld_wram = inst_type_is_ld & sram_type_wram;
   
    assign idu_alu_st_iram = inst_type_is_st & sram_type_iram;
    assign idu_alu_st_wram = inst_type_is_st & sram_type_wram;
    assign idu_alu_st_oram = inst_type_is_st & sram_type_oram;

    assign idu_alu_conv = inst_type_is_mm;
    assign idu_alu_act = inst_type_is_act;
    assign idu_alu_pool = inst_type_is_pool;
    assign idu_alu_wfi = inst_type_is_wfi;

    assign idu_alu_dram_addr = idu_ins[`DRAM_ADDR_RNG];
    assign idu_alu_num = idu_ins[`NUM_RNG];
    assign idu_alu_len = idu_ins[`LEN_RNG];
    assign idu_alu_str = idu_ins[`STR_RNG];
    assign idu_alu_start_x = idu_ins[`START_X_RNG];
    assign idu_alu_start_y = idu_ins[`START_Y_RNG];
    assign idu_alu_ld_st_addr = idu_ins[`SRAM_ADDR_RNG];
    assign idu_alu_st_low = idu_ins[`ST_LOW_RNG];
    
    assign mm_iram_dir = idu_ins[`IRAM_DIR_RNG];
    assign idu_alu_iram_start_addr = idu_ins[`IRAM_ADDR_RNG]; 
    assign idu_alu_iram_col_dir = mm_iram_dir[0];
    assign idu_alu_iram_row_dir = mm_iram_dir[1];
    assign idu_alu_iram_col_len = idu_ins[`IRAM_CLEN_RNG]; 
    assign idu_alu_iram_row_len = idu_ins[`IRAM_RLEN_RNG]; 

    assign mm_wram_dir = idu_ins[`WRAM_DIR_RNG];
    assign idu_alu_wram_start_addr = idu_ins[`WRAM_ADDR_RNG]; 
    assign idu_alu_wram_col_dir = mm_wram_dir[0];
    assign idu_alu_wram_row_dir = mm_wram_dir[1];
    assign idu_alu_wram_col_len = idu_ins[`WRAM_CLEN_RNG]; 
    assign idu_alu_wram_row_len = idu_ins[`WRAM_RLEN_RNG];
    
    assign idu_alu_act_type = idu_ins[`ACT_TYPE_RNG];
    assign idu_alu_pool_size = idu_ins[`POOL_TYPE_RNG];

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

    assign alu_idu_hazard_src1    = (alu_idu_wb_addr == idu_rf_src1_addr) & alu_idu_wb_vld & ~(riscv_u_type | riscv_j_type);
    assign lsu_idu_hazard_src1    = (lsu_idu_wb_addr == idu_rf_src1_addr) & lsu_idu_wb_vld & ~(riscv_u_type | riscv_j_type) & ~lsu_idu_ld_vld;
    assign lsu_idu_ld_hazard_src1 = (lsu_idu_wb_addr == idu_rf_src1_addr) & lsu_idu_wb_vld & ~(riscv_u_type | riscv_j_type) & lsu_idu_ld_vld;
    assign rf_idu_hazard_src1     = (lsu_rf_wb_addr  == idu_rf_src1_addr) & lsu_rf_wb_vld  & ~(riscv_u_type | riscv_j_type);
    
    assign alu_idu_hazard_src2    = (alu_idu_wb_addr == idu_rf_src1_addr) & alu_idu_wb_vld & ~(riscv_u_type | riscv_j_type | riscv_i_type);
    assign lsu_idu_hazard_src2    = (lsu_idu_wb_addr == idu_rf_src1_addr) & lsu_idu_wb_vld & ~(riscv_u_type | riscv_j_type | riscv_i_type) & ~lsu_idu_ld_vld;
    assign lsu_idu_ld_hazard_src2 = (lsu_idu_wb_addr == idu_rf_src1_addr) & lsu_idu_wb_vld & ~(riscv_u_type | riscv_j_type | riscv_i_type) & lsu_idu_ld_vld;
    assign rf_idu_hazard_src2     = (lsu_rf_wb_addr  == idu_rf_src1_addr) & lsu_rf_wb_vld  & ~(riscv_u_type | riscv_j_type | riscv_i_type);
    
    DFFE #(.WIDTH(32))
    ff_idu_alu_src1(
        .clk(clk),
        .en(ifu_idu_vld),
        .d(scr1_nxt),
        .q(idu_alu_src1)
    );
    
    DFFE #(.WIDTH(32))
    ff_idu_alu_src2(
        .clk(clk),
        .en(ifu_idu_vld),
        .d(scr2_nxt),
        .q(idu_alu_src2)
    );

    assign idu_alu_op = idu_ins[`OP_RNG];
    assign idu_alu_funct3 = idu_ins[`FUNCT3_RNG];
    assign idu_alu_funct7 = idu_ins[`FUNCT3_RNG];
    assign idu_alu_wb_vld_nxt = riscv_r_type | riscv_i_type | riscv_j_type | riscv_u_type;
    
    DFFRE #(.WIDTH(1))
    ff_idu_alu_wb_vld(
        .clk(clk),
        .rst_n(rst_n),
        .en(ifu_idu_vld),
        .d(idu_alu_wb_vld_nxt),
        .q(idu_alu_wb_vld)
    );

endmodule