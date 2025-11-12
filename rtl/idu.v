`include "define.vh"

module idu (
    clk,
    rst_n,
    ifu_idu_vld,
    ifu_idu_ins,
    mxu_idu_rdy,
    lsu_idu_rdy,
    idu_ifu_rdy,
    idu_ifu_wfi,
    idu_lsu_vld,
    idu_lsu_ld_iram,
    idu_lsu_ld_wram,
    idu_lsu_st_iram,
    idu_lsu_st_wram,
    idu_lsu_st_oram,
    idu_lsu_st_dram,
    idu_lsu_conv,
    idu_lsu_act,
    idu_lsu_pool,
    idu_lsu_wfi,
    idu_lsu_dram_addr,
    idu_lsu_len,
    idu_lsu_size,
    idu_lsu_str,
    idu_lsu_start_x,
    idu_lsu_start_y,
    idu_lsu_ld_st_addr,
    idu_lsu_st_low,
    idu_lsu_iram_start_addr,
    idu_lsu_iram_col_dir,
    idu_lsu_iram_row_dir,
    idu_lsu_iram_col_len,
    idu_lsu_iram_row_len,
    idu_lsu_wram_start_addr,
    idu_lsu_wram_col_dir,
    idu_lsu_wram_row_dir,
    idu_lsu_wram_col_len,
    idu_lsu_wram_row_len,
    idu_lsu_act_type,
    idu_lsu_pool_size
    
);
    
    input clk;
    input rst_n;
    input ifu_idu_vld;
    input [63:0] ifu_idu_ins;
    input lsu_idu_rdy;
    input mxu_idu_rdy;
    output idu_ifu_rdy;
    output idu_ifu_wfi;
    output idu_lsu_vld;
    output idu_lsu_ld_iram;
    output idu_lsu_ld_wram;
    output idu_lsu_st_iram;
    output idu_lsu_st_wram;
    output idu_lsu_st_oram;
    output idu_lsu_st_dram;
    output idu_lsu_conv;
    output idu_lsu_act;
    output idu_lsu_pool;
    output idu_lsu_wfi;
    output [30:0] idu_lsu_dram_addr;
    output [7:0] idu_lsu_len;
    output [2:0] idu_lsu_size;
    output [2:0] idu_lsu_str;
    output [3:0] idu_lsu_start_x;
    output [3:0] idu_lsu_start_y;
    output [11:0] idu_lsu_ld_st_addr;
    output idu_lsu_st_low;
    output [11:0] idu_lsu_iram_start_addr;
    output idu_lsu_iram_col_dir;
    output idu_lsu_iram_row_dir;
    output [3:0] idu_lsu_iram_col_len;
    output [3:0] idu_lsu_iram_row_len;
    output [11:0]idu_lsu_wram_start_addr;
    output idu_lsu_wram_col_dir;
    output idu_lsu_wram_row_dir;
    output [3:0] idu_lsu_wram_col_len;
    output [3:0] idu_lsu_wram_row_len;
    output [1:0] idu_lsu_act_type;
    output [1:0] idu_lsu_pool_size;

    wire idu_vld;
    wire idu_vld_nxt;

    wire [63:0] idu_ins;
    wire [63:0] idu_ins_nxt;

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

    assign idu_vld_nxt = idu_ifu_rdy & ifu_idu_vld | idu_vld & ~mxu_idu_rdy;
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

    assign idu_ifu_rdy = lsu_idu_rdy;

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
    assign idu_lsu_vld = idu_vld;

    assign idu_lsu_ld_iram = inst_type_is_ld & sram_type_iram;
    assign idu_lsu_ld_wram = inst_type_is_ld & sram_type_wram;
   
    assign idu_lsu_st_iram = inst_type_is_st & sram_type_iram;
    assign idu_lsu_st_wram = inst_type_is_st & sram_type_wram;
    assign idu_lsu_st_oram = inst_type_is_st & sram_type_oram;

    assign idu_lsu_conv = inst_type_is_mm;
    assign idu_lsu_act = inst_type_is_act;
    assign idu_lsu_pool = inst_type_is_pool;
    assign idu_lsu_wfi = inst_type_is_wfi;

    assign idu_lsu_dram_addr = idu_ins[`DRAM_ADDR_RNG];
    assign idu_lsu_len = idu_ins[`NUM_RNG];
    assign idu_lsu_size = idu_ins[`LEN_RNG];
    assign idu_lsu_str = idu_ins[`STR_RNG];
    assign idu_lsu_start_x = idu_ins[`START_X_RNG];
    assign idu_lsu_start_y = idu_ins[`START_Y_RNG];
    assign idu_lsu_ld_st_addr = idu_ins[`SRAM_ADDR_RNG];
    assign idu_lsu_st_low = idu_ins[`ST_LOW_RNG];
    
    assign mm_iram_dir = idu_ins[`IRAM_DIR_RNG];
    assign idu_lsu_iram_start_addr = idu_ins[`IRAM_ADDR_RNG]; 
    assign idu_lsu_iram_col_dir = mm_iram_dir[0];
    assign idu_lsu_iram_row_dir = mm_iram_dir[1];
    assign idu_lsu_iram_col_len = idu_ins[`IRAM_CLEN_RNG]; 
    assign idu_lsu_iram_row_len = idu_ins[`IRAM_RLEN_RNG]; 

    assign mm_wram_dir = idu_ins[`WRAM_DIR_RNG];
    assign idu_lsu_wram_start_addr = idu_ins[`WRAM_ADDR_RNG]; 
    assign idu_lsu_wram_col_dir = mm_wram_dir[0];
    assign idu_lsu_wram_row_dir = mm_wram_dir[1];
    assign idu_lsu_wram_col_len = idu_ins[`WRAM_CLEN_RNG]; 
    assign idu_lsu_wram_row_len = idu_ins[`WRAM_RLEN_RNG];
    
    assign idu_lsu_act_type = idu_ins[`ACT_TYPE_RNG];
    assign idu_lsu_pool_size = idu_ins[`POOL_TYPE_RNG];




endmodule