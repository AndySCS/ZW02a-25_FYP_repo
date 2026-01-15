module alu(
    clk,
    rst_n,
    //idu input
    idu_alu_vld,
    idu_alu_src1,
    idu_alu_src2,
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
    idu_alu_wb_addr,
    idu_alu_br_st_imm,
    idu_alu_pc,
    //by pass
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
    idu_alu_st_row,
    idu_alu_st_col,
    idu_alu_act_type,
    idu_alu_pool_size,
    idu_alu_mxu_clr,
    //lsu input
    lsu_alu_rdy,
    //ifu output
    alu_ifu_br_vld,
    alu_ifu_br_addr,
    //idu output
    alu_idu_rdy,
    alu_idu_flush_vld,
    alu_idu_wb_addr,
    alu_idu_wb_data,
    alu_idu_wb_vld,
    alu_idu_ld_vld,
    //lsu output
    alu_lsu_vld,
    alu_lsu_wb_vld,
    alu_lsu_lb_op,
    alu_lsu_lh_op,
    alu_lsu_lw_op,
    alu_lsu_lbu_op,
    alu_lsu_lhu_op,
    alu_lsu_sb_op,
    alu_lsu_sh_op,
    alu_lsu_sw_op,
    alu_lsu_wb_addr,
    alu_lsu_wb_data,
    alu_lsu_src2,
    //mm related
    alu_lsu_ld_iram,
    alu_lsu_ld_wram,
    alu_lsu_ld_oram,
    alu_lsu_st_iram,
    alu_lsu_st_wram,
    alu_lsu_st_oram,
    alu_lsu_st_dram,
    alu_lsu_conv,
    alu_lsu_act,
    alu_lsu_pool,
    alu_lsu_wfi,
    alu_lsu_dram_addr,
    alu_lsu_num,
    alu_lsu_len,
    alu_lsu_str,
    alu_lsu_start_x,
    alu_lsu_start_y,
    alu_lsu_ld_st_addr,
    alu_lsu_st_low,
    alu_lsu_st_row,
    alu_lsu_st_col,
    alu_lsu_iram_start_addr,
    alu_lsu_wram_start_addr,
    alu_lsu_wram_row_len,
    alu_lsu_iram_row_len,
    alu_lsu_col_len,
    alu_lsu_act_type,
    alu_lsu_pool_size,
    alu_lsu_mxu_clr
);
    
    //from idu
    input clk;
    input rst_n;
    //instruction related
    input idu_alu_vld;
    input [31:0] idu_alu_src1;
    input [31:0] idu_alu_src2;
    input idu_alu_wb_vld;
    input idu_alu_add_op;
    input idu_alu_sub_op;
    input idu_alu_slt_op;
    input idu_alu_sltu_op;
    input idu_alu_xor_op;
    input idu_alu_or_op;
    input idu_alu_and_op;
    input idu_alu_sll_op;
    input idu_alu_srl_op;
    input idu_alu_sra_op;
    input idu_alu_beq_op;
    input idu_alu_bne_op;
    input idu_alu_blt_op;
    input idu_alu_bge_op;
    input idu_alu_bltu_op;
    input idu_alu_bgeu_op;
    input idu_alu_lb_op;
    input idu_alu_lh_op;
    input idu_alu_lw_op;
    input idu_alu_lbu_op;
    input idu_alu_lhu_op;
    input idu_alu_sb_op;
    input idu_alu_sh_op;
    input idu_alu_sw_op;
    input idu_alu_lui_op;
    input idu_alu_aui_op;
    input idu_alu_jal_op;
    input idu_alu_jalr_op;

    input [4:0] idu_alu_wb_addr;
    input [31:0] idu_alu_br_st_imm;
    input [31:0] idu_alu_pc;

    input idu_alu_ld_iram;
    input idu_alu_ld_wram;
    input idu_alu_st_iram;
    input idu_alu_st_wram;
    input idu_alu_st_oram;
    input idu_alu_st_dram;
    input idu_alu_conv;
    input idu_alu_act;
    input idu_alu_pool;
    input idu_alu_wfi;

    //paylaod related for load store
    input [31:0] idu_alu_dram_addr;
    input [7:0]  idu_alu_num;
    input [2:0]  idu_alu_len;
    input [2:0]  idu_alu_str;
    input [3:0]  idu_alu_start_x;
    input [3:0]  idu_alu_start_y;
    input [`SRAM_ADDR_SIZE-1:0] idu_alu_ld_st_addr;
    input        idu_alu_st_low;
    input [3:0]  idu_alu_st_row;
    input [3:0]  idu_alu_st_col;

    //payload related for matrix mutiplication
    input [11:0] idu_alu_iram_start_addr;
    input [11:0] idu_alu_wram_start_addr;
    input [3:0]  idu_alu_wram_row_len;
    input [3:0]  idu_alu_iram_row_len;
    input [3:0]  idu_alu_col_len;
    input idu_alu_mxu_clr;
    
    //payload for other instructions
    input [1:0] idu_alu_act_type;
    input [1:0] idu_alu_pool_size;

    input lsu_alu_rdy;
    
    output alu_ifu_br_vld;
    output [11:0] alu_ifu_br_addr;

    output alu_idu_rdy;
    output alu_idu_flush_vld;
    output [4:0] alu_idu_wb_addr;
    output [31:0] alu_idu_wb_data;
    output alu_idu_wb_vld;
    output alu_idu_ld_vld;
    output alu_lsu_lb_op;
    output alu_lsu_lh_op;
    output alu_lsu_lw_op;
    output alu_lsu_lbu_op;
    output alu_lsu_lhu_op;
    output alu_lsu_sb_op;
    output alu_lsu_sh_op;
    output alu_lsu_sw_op;
    
    output alu_lsu_vld;
    output alu_lsu_wb_vld;
    output [4:0]  alu_lsu_wb_addr;
    output [31:0] alu_lsu_wb_data;
    output [31:0] alu_lsu_src2;
//    output [31:0] alu_lsu_ld_addr;

    output alu_lsu_ld_iram;
    output alu_lsu_ld_wram;
    output alu_lsu_ld_oram;
    output alu_lsu_st_iram;
    output alu_lsu_st_wram;
    output alu_lsu_st_oram;
    output alu_lsu_st_dram;
    output alu_lsu_conv;
    output alu_lsu_act;
    output alu_lsu_pool;
    output alu_lsu_wfi;

    output [31:0] alu_lsu_dram_addr;
    output [7:0]  alu_lsu_num;
    output [2:0]  alu_lsu_len;
    output [2:0]  alu_lsu_str;
    output [3:0]  alu_lsu_start_x;
    output [3:0]  alu_lsu_start_y;
    output [`SRAM_ADDR_SIZE-1:0] alu_lsu_ld_st_addr;
    output        alu_lsu_st_low;
    output [3:0]  alu_lsu_st_row;
    output [3:0]  alu_lsu_st_col;

    output [11:0] alu_lsu_iram_start_addr;
    output [11:0] alu_lsu_wram_start_addr;
    output [3:0]  alu_lsu_wram_row_len;
    output [3:0]  alu_lsu_iram_row_len;
    output [3:0]  alu_lsu_col_len;

    output [1:0]  alu_lsu_act_type;
    output [1:0]  alu_lsu_pool_size;
    output        alu_lsu_mxu_clr;

    wire alu_vld;

    wire alu_lsu_vld_nxt;
    wire alu_lsu_wb_vld_nxt;
    wire [31:0] alu_lsu_wb_data_nxt;
    
    wire [31:0] jal_pc;
    wire [31:0] jalr_pc;
    wire [31:0] br_pc;
    wire [31:0] alu_ifu_br_addr_nxt;

    wire br_jump_vld;
    wire alu_ifu_br_vld_nxt;

    wire [31:0] sum;
    wire [31:0] less_than_signed;
    wire [31:0] less_than_unsigned;
    wire [31:0] and_rlt;
    wire [31:0] or_rlt;
    wire [31:0] xor_rlt;
    wire [31:0] shift_left;
    wire [31:0] shift_right_logic;
    wire [31:0] shift_right_arith;
    wire [31:0] u_rlt;
    wire [31:0] pc_cont_sum;
    wire [31:0] diff;
    wire [31:0] pc_jump_sum;

    wire [31:0] alu_mux;
   
    wire ld_op;
    wire st_op;
    wire mm_ld_st_op;

    wire alu_lsu_ld_iram_nxt;
    wire alu_lsu_ld_wram_nxt;
    wire alu_lsu_ld_oram_nxt;
    wire alu_lsu_st_iram_nxt;
    wire alu_lsu_st_wram_nxt;
    wire alu_lsu_st_oram_nxt;
    wire [`SRAM_ADDR_SIZE-1:0] alu_lsu_ld_st_addr_nxt;

    wire [31:0] st_addr_sum;

    assign alu_lsu_vld_nxt = alu_vld | alu_lsu_vld & ~lsu_alu_rdy;
    assign alu_vld = idu_alu_vld & alu_idu_rdy & ~alu_ifu_br_vld;
    assign alu_lsu_wb_vld_nxt = alu_vld & idu_alu_wb_vld;
    assign alu_idu_rdy = lsu_alu_rdy;
    assign alu_idu_flush_vld = alu_ifu_br_vld;

    assign sum                  = idu_alu_src1 + idu_alu_src2;
    assign less_than_signed     = (idu_alu_src1 < idu_alu_src2) & ~(idu_alu_src1[31] ^ idu_alu_src2[31]);
    assign less_than_unsigned   = idu_alu_src1 < idu_alu_src2;
    assign and_rlt              = idu_alu_src1 & idu_alu_src2;
    assign or_rlt               = idu_alu_src1 | idu_alu_src2;  
    assign xor_rlt              = idu_alu_src1 ^ idu_alu_src2;
    assign shift_left           = idu_alu_src1 << idu_alu_src2[4:0];
    assign shift_right_logic    = idu_alu_src1 >> idu_alu_src2[4:0];
    assign shift_right_arith    = (idu_alu_src1 >> idu_alu_src2[4:0]) | ({32{idu_alu_src1[31]}} & ~(32'hffff_ffff >> idu_alu_src2[4:0]));
    assign u_rlt                = idu_alu_src2;
    assign auipc_sum            = idu_alu_src2 + idu_alu_pc;
    assign diff                 = idu_alu_src1 - idu_alu_src2;
    assign pc_jump_sum          = idu_alu_pc + 32'd4;

    assign alu_mux = {32{idu_alu_add_op }} & sum
                   | {32{idu_alu_sub_op }} & diff
                   | {32{idu_alu_slt_op }} & less_than_signed
                   | {32{idu_alu_sltu_op}} & less_than_unsigned
                   | {32{idu_alu_xor_op }} & xor_rlt
                   | {32{idu_alu_or_op  }} & or_rlt
                   | {32{idu_alu_and_op }} & and_rlt
                   | {32{idu_alu_sll_op }} & shift_left
                   | {32{idu_alu_srl_op }} & shift_right_logic
                   | {32{idu_alu_sra_op }} & shift_right_arith
                   | {32{idu_alu_lui_op }} & u_rlt
                   | {32{idu_alu_aui_op }} & auipc_sum
                   | {32{idu_alu_jal_op | idu_alu_jalr_op}} & pc_jump_sum;
    
    assign alu_idu_wb_vld = alu_vld & idu_alu_wb_vld;
    assign alu_idu_wb_addr = idu_alu_wb_addr;
    assign alu_idu_wb_data = alu_mux;
    assign alu_idu_ld_vld = idu_alu_lb_op | idu_alu_lh_op | idu_alu_lw_op | idu_alu_lbu_op | idu_alu_lhu_op;
    
    assign jal_pc  = idu_alu_pc + idu_alu_src2;
    assign jalr_pc = sum;
    assign br_pc   = idu_alu_pc + idu_alu_br_st_imm;
    assign alu_ifu_br_addr_nxt = {32{idu_alu_jal_op}} & jal_pc 
                               | {32{idu_alu_jalr_op}}  & jalr_pc 
                               | {32{idu_alu_beq_op | idu_alu_bne_op | idu_alu_blt_op | idu_alu_bge_op | idu_alu_bltu_op | idu_alu_bgeu_op}} & br_pc;

    assign br_jump_vld = idu_alu_beq_op  & (idu_alu_src1 == idu_alu_src2)
                       | idu_alu_bne_op  & (idu_alu_src1 != idu_alu_src2)
                       | idu_alu_blt_op  & (idu_alu_src1 <  idu_alu_src2) & ~(idu_alu_src1[31] ^ idu_alu_src2[31])
                       | idu_alu_bge_op  & (idu_alu_src2 <  idu_alu_src1) & ~(idu_alu_src1[31] ^ idu_alu_src2[31])
                       | idu_alu_bltu_op & (idu_alu_src1 <  idu_alu_src2)
                       | idu_alu_bgeu_op & (idu_alu_src1 >= idu_alu_src2);
    
    assign alu_ifu_br_vld_nxt = alu_vld & (br_jump_vld | idu_alu_jal_op | idu_alu_jalr_op);
    
    assign ld_op = idu_alu_lb_op | idu_alu_lh_op | idu_alu_lw_op | idu_alu_lbu_op | idu_alu_lhu_op;
    assign st_op = idu_alu_sb_op | idu_alu_sh_op | idu_alu_sw_op;
    assign mm_ld_st_op = idu_alu_ld_iram | idu_alu_ld_wram | idu_alu_st_iram | idu_alu_st_wram | idu_alu_st_oram | idu_alu_st_dram;

    assign st_addr_sum = idu_alu_src1 + idu_alu_br_st_imm;

    assign alu_lsu_ld_st_addr_nxt = {`SRAM_ADDR_SIZE{ld_op}}       & sum[`SRAM_ADDR_RNG]
                                  | {`SRAM_ADDR_SIZE{st_op}}       & st_addr_sum[`SRAM_ADDR_RNG]
                                  | {`SRAM_ADDR_SIZE{mm_ld_st_op}} & sum[`SRAM_ADDR_RNG];

    assign alu_lsu_ld_iram_nxt = ((sum[`SRAM_TYPE_RNG]         == 2'b00) & ld_op) | idu_alu_ld_iram;
    assign alu_lsu_ld_wram_nxt = ((sum[`SRAM_TYPE_RNG]         == 2'b10) & ld_op) | idu_alu_ld_wram;
    assign alu_lsu_ld_oram_nxt = ((sum[`SRAM_TYPE_RNG]         == 2'b01) & ld_op);
    assign alu_lsu_st_iram_nxt = ((st_addr_sum[`SRAM_TYPE_RNG] == 2'b00) & st_op) | idu_alu_st_iram;
    assign alu_lsu_st_wram_nxt = ((st_addr_sum[`SRAM_TYPE_RNG] == 2'b10) & st_op) | idu_alu_st_wram;
    assign alu_lsu_st_oram_nxt = ((st_addr_sum[`SRAM_TYPE_RNG] == 2'b01) & st_op) | idu_alu_st_oram;

    DFFR #(.WIDTH(1))
    ff_alu_lsu_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(alu_lsu_vld_nxt),
        .q(alu_lsu_vld)
    );

    DFFR #(.WIDTH(1))
    ff_alu_ifu_br_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(alu_ifu_br_vld_nxt),
        .q(alu_ifu_br_vld)
    );

    DFFE #(.WIDTH(12))
    ff_alu_ifu_br_addr(
        .clk(clk),
        .en(alu_vld),
        .d(alu_ifu_br_addr_nxt[11:0]),
        .q(alu_ifu_br_addr)
    );
    
    DFFR #(.WIDTH(1))
    ff_alu_lsu_wb_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(alu_lsu_wb_vld_nxt),
        .q(alu_lsu_wb_vld)
    );
    
    DFFE #(.WIDTH(5))
    ff_alu_lsu_wb_addr(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_wb_addr),
        .q(alu_lsu_wb_addr)
    );
    
    DFFE #(.WIDTH(32))
    ff_alu_lsu_wb_data(
        .clk(clk),
        .en(alu_vld),
        .d(alu_mux),
        .q(alu_lsu_wb_data)
    );
    
    DFFE #(.WIDTH(1))
    ff_alu_lsu_lb_op(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_lb_op),
        .q(alu_lsu_lb_op)
    );
    
    DFFE #(.WIDTH(1))
    ff_alu_lsu_lh_op(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_lh_op),
        .q(alu_lsu_lh_op)
    );
    
    DFFE #(.WIDTH(1))
    ff_alu_lsu_lw_op(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_lw_op),
        .q(alu_lsu_lw_op)
    );
    
    DFFE #(.WIDTH(1))
    ff_alu_lsu_lbu_op(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_lbu_op),
        .q(alu_lsu_lbu_op)
    );
    
    DFFE #(.WIDTH(1))
    ff_alu_lsu_lhu_op(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_lhu_op),
        .q(alu_lsu_lhu_op)
    );
    
    DFFE #(.WIDTH(1))
    ff_alu_lsu_sb_op(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_sb_op),
        .q(alu_lsu_sb_op)
    );
    
    DFFE #(.WIDTH(1))
    ff_alu_lsu_sh_op(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_sh_op),
        .q(alu_lsu_sh_op)
    );
    
    DFFE #(.WIDTH(1))
    ff_alu_lsu_sw_op(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_sw_op),
        .q(alu_lsu_sw_op)
    );
    
    DFFE #(.WIDTH(1))
    ff_alu_lsu_ld_iram(
        .clk(clk),
        .en(alu_vld),
        .d(alu_lsu_ld_iram_nxt),
        .q(alu_lsu_ld_iram)
    );

    DFFE #(.WIDTH(1))
    ff_alu_lsu_ld_wram(
        .clk(clk),
        .en(alu_vld),
        .d(alu_lsu_ld_wram_nxt),
        .q(alu_lsu_ld_wram)
    );
    
    DFFE #(.WIDTH(1))
    ff_alu_lsu_ld_oram(
        .clk(clk),
        .en(alu_vld),
        .d(alu_lsu_ld_oram_nxt),
        .q(alu_lsu_ld_oram)
    );
    
    DFFE #(.WIDTH(1))
    ff_alu_lsu_st_iram(
        .clk(clk),
        .en(alu_vld),
        .d(alu_lsu_st_iram_nxt),
        .q(alu_lsu_st_iram)
    );

    DFFE #(.WIDTH(1))
    ff_alu_lsu_st_wram(
        .clk(clk),
        .en(alu_vld),
        .d(alu_lsu_st_wram_nxt),
        .q(alu_lsu_st_wram)
    );

    DFFE #(.WIDTH(1))
    ff_alu_lsu_st_oram(
        .clk(clk),
        .en(alu_vld),
        .d(alu_lsu_st_oram_nxt),
        .q(alu_lsu_st_oram)
    );

    DFFE #(.WIDTH(1))
    ff_alu_lsu_st_dram(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_st_dram),
        .q(alu_lsu_st_dram)
    );

    DFFE #(.WIDTH(1))
    ff_alu_lsu_conv(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_conv),
        .q(alu_lsu_conv)
    );

    DFFE #(.WIDTH(1))
    ff_alu_lsu_act(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_act),
        .q(alu_lsu_act)
    );

    DFFE #(.WIDTH(1))
    ff_alu_lsu_pool(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_pool),
        .q(alu_lsu_pool)
    );

    DFFE #(.WIDTH(1))
    ff_alu_lsu_wfi(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_wfi),
        .q(alu_lsu_wfi)
    );

    DFFE #(.WIDTH(32))
    ff_alu_lsu_dram_addr(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_dram_addr),
        .q(alu_lsu_dram_addr)
    );

    DFFE #(.WIDTH(8))
    ff_alu_lsu_num(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_num),
        .q(alu_lsu_num)
    );

    DFFE #(.WIDTH(3))
    ff_alu_lsu_len(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_len),
        .q(alu_lsu_len)
    );

    DFFE #(.WIDTH(3))
    ff_alu_lsu_str(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_str),
        .q(alu_lsu_str)
    );

    DFFE #(.WIDTH(4))
    ff_alu_lsu_start_x(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_start_x),
        .q(alu_lsu_start_x)
    );

    DFFE #(.WIDTH(4))
    ff_alu_lsu_start_y(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_start_y),
        .q(alu_lsu_start_y)
    );

    DFFE #(.WIDTH(13))
    ff_alu_lsu_ld_st_addr(
        .clk(clk),
        .en(alu_vld),
        .d(alu_lsu_ld_st_addr_nxt),
        .q(alu_lsu_ld_st_addr)
    );

    DFFE #(.WIDTH(1))
    ff_alu_lsu_st_low(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_st_low),
        .q(alu_lsu_st_low)
    );

    DFFE #(.WIDTH(12))
    ff_alu_lsu_iram_start_addr(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_iram_start_addr),
        .q(alu_lsu_iram_start_addr)
    );

    DFFE #(.WIDTH(12))
    ff_alu_lsu_wram_start_addr(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_wram_start_addr),
        .q(alu_lsu_wram_start_addr)
    );

    DFFE #(.WIDTH(4))
    ff_alu_lsu_wram_row_len(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_wram_row_len),
        .q(alu_lsu_wram_row_len)
    );

    DFFE #(.WIDTH(4))
    ff_alu_lsu_iram_row_len(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_iram_row_len),
        .q(alu_lsu_iram_row_len)
    );

    DFFE #(.WIDTH(4))
    ff_alu_lsu_col_len(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_col_len),
        .q(alu_lsu_col_len)
    );

    DFFE #(.WIDTH(2))
    ff_alu_lsu_act_type(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_act_type),
        .q(alu_lsu_act_type)
    );

    DFFE #(.WIDTH(2))
    ff_alu_lsu_pool_size(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_pool_size),
        .q(alu_lsu_pool_size)
    );

    DFFE #(.WIDTH(4))
    ff_alu_lsu_st_row(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_st_row),
        .q(alu_lsu_st_row)
    );

    DFFE #(.WIDTH(4))
    ff_alu_lsu_st_col(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_st_col),
        .q(alu_lsu_st_col)
    );

    DFFE #(.WIDTH(1))
    ff_alu_lsu_mxu_clr(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_mxu_clr),
        .q(alu_lsu_mxu_clr)
    );

    DFFE #(.WIDTH(32))
    ff_alu_lsu_src2(
        .clk(clk),
        .en(alu_vld),
        .d(idu_alu_src2),
        .q(alu_lsu_src2)
    );

endmodule
