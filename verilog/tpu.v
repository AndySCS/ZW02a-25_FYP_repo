module tpu(
    clk,
    rst_n,
    start_vld,
    start_addr
);

    input clk;
    input rst_n;
    input start_vld;
    input [11:0] start_addr;
    //ifu<->idu
    wire idu_ifu_rdy;
    wire idu_ifu_wfi;
    wire ifu_idu_vld;
    wire [63:0] ifu_idu_ins;
    //idu<->lsu
    wire lsu_idu_rdy;
    wire idu_ifu_rdy;
    wire idu_ifu_wfi;
    wire idu_lsu_vld;
    wire idu_lsu_ld_iram;
    wire idu_lsu_ld_wram;
    wire idu_lsu_st_iram;
    wire idu_lsu_st_wram;
    wire idu_lsu_st_oram;
    wire idu_lsu_st_dram;
    wire idu_lsu_conv;
    wire idu_lsu_act;
    wire idu_lsu_pool;
    wire idu_lsu_wfi;
    wire [30:0] idu_lsu_dram_addr;
    wire [7:0] idu_lsu_len;
    wire [2:0] idu_lsu_size;
    wire [2:0] idu_lsu_str;
    wire [3:0] idu_lsu_start_x;
    wire [3:0] idu_lsu_start_y;
    wire [11:0] idu_lsu_ld_st_addr;
    wire idu_lsu_st_low;
    wire [11:0] idu_lsu_iram_start_addr;
    wire idu_lsu_iram_col_dir;
    wire idu_lsu_iram_row_dir;
    wire [3:0] idu_lsu_iram_col_len;
    wire [3:0] idu_lsu_iram_row_len;
    wire [11:0]idu_lsu_wram_start_addr;
    wire idu_lsu_wram_col_dir;
    wire idu_lsu_wram_row_dir;
    wire [3:0] idu_lsu_wram_col_len;
    wire [3:0] idu_lsu_wram_row_len;
    wire [1:0] idu_lsu_act_type;
    wire [1:0] idu_lsu_pool_size;
    //lsu<->mxu
    wire lsu_mxu_vld;
    wire lsu_mxu_clr;
    wire [15:0] lsu_mxu_iram_vld;
    wire [127:0] lsu_mxu_iram_pld;
    wire [15:0] lsu_mxu_wram_vld;
    wire [127:0] lsu_mxu_wram_pld;
    wire lsu_mxu_pool_vld;
    wire [1:0] lsu_mxu_pool_size;
    wire lsu_mxu_act_vld;
    wire [1:0] lsu_mxu_act_type;
    wire lsu_mxu_wfi;
    wire [127:0] mxu_lsu_int8_row0_data;
    wire [255:0] mxu_lsu_int16_row0_data;
    wire [127:0] mxu_lsu_int8_row1_data;
    wire [255:0] mxu_lsu_int16_row1_data;
    wire [127:0] mxu_lsu_int8_row2_data;
    wire [255:0] mxu_lsu_int16_row2_data;
    wire [127:0] mxu_lsu_int8_row3_data;
    wire [255:0] mxu_lsu_int16_row3_data;
    wire [127:0] mxu_lsu_int8_row4_data;
    wire [255:0] mxu_lsu_int16_row4_data;
    wire [127:0] mxu_lsu_int8_row5_data;
    wire [255:0] mxu_lsu_int16_row5_data;
    wire [127:0] mxu_lsu_int8_row6_data;
    wire [255:0] mxu_lsu_int16_row6_data;
    wire [127:0] mxu_lsu_int8_row7_data;
    wire [255:0] mxu_lsu_int16_row7_data;
    wire [127:0] mxu_lsu_int8_row8_data;
    wire [255:0] mxu_lsu_int16_row8_data;
    wire [127:0] mxu_lsu_int8_row9_data;
    wire [255:0] mxu_lsu_int16_row9_data;
    wire [127:0] mxu_lsu_int8_row10_data;
    wire [255:0] mxu_lsu_int16_row10_data;
    wire [127:0] mxu_lsu_int8_row11_data;
    wire [255:0] mxu_lsu_int16_row11_data;
    wire [127:0] mxu_lsu_int8_row12_data;
    wire [255:0] mxu_lsu_int16_row12_data;
    wire [127:0] mxu_lsu_int8_row13_data;
    wire [255:0] mxu_lsu_int16_row13_data;
    wire [127:0] mxu_lsu_int8_row14_data;
    wire [255:0] mxu_lsu_int16_row14_data;
    wire [127:0] mxu_lsu_int8_row15_data;
    wire [255:0] mxu_lsu_int16_row15_data;
    wire mxu_lsu_data_rdy;
    wire mxu_lsu_rdy;

    ifu u_ifu(
        .clk(clk),
        .rst_n(rst_n),
        .start_vld(start_vld),
        .start_addr(start_addr),
        .idu_ifu_rdy(idu_ifu_rdy),
        .idu_ifu_wfi(idu_ifu_wfi),
        .ifu_idu_vld(ifu_idu_vld),
        .ifu_idu_ins(ifu_idu_ins)
    );

    idu u_idu(
        .clk(clk),
        .rst_n(rst_n),
        .ifu_idu_vld(ifu_idu_vld),
        .ifu_idu_ins(ifu_idu_ins),
        .lsu_idu_rdy(lsu_idu_rdy),
        .idu_ifu_rdy(idu_ifu_rdy),
        .idu_ifu_wfi(idu_ifu_wfi),
        .idu_lsu_vld(idu_lsu_vld),
        .idu_lsu_ld_iram(idu_lsu_ld_iram),
        .idu_lsu_ld_wram(idu_lsu_ld_wram),
        .idu_lsu_st_iram(idu_lsu_st_iram),
        .idu_lsu_st_wram(idu_lsu_st_wram),
        .idu_lsu_st_oram(idu_lsu_st_oram),
        .idu_lsu_st_dram(idu_lsu_st_dram),
        .idu_lsu_conv(idu_lsu_conv),
        .idu_lsu_act(idu_lsu_act),
        .idu_lsu_pool(idu_lsu_pool),
        .idu_lsu_wfi(idu_lsu_wfi),
        .idu_lsu_dram_addr(idu_lsu_dram_addr),
        .idu_lsu_len(idu_lsu_len),
        .idu_lsu_size(idu_lsu_size),
        .idu_lsu_str(idu_lsu_str),
        .idu_lsu_start_x(idu_lsu_start_x),
        .idu_lsu_start_y(idu_lsu_start_y),
        .idu_lsu_ld_st_addr(idu_lsu_ld_st_addr),
        .idu_lsu_st_low(idu_lsu_st_low),
        .idu_lsu_iram_start_addr(idu_lsu_iram_start_addr),
        .idu_lsu_iram_col_dir(idu_lsu_iram_col_dir),
        .idu_lsu_iram_row_dir(idu_lsu_iram_row_dir),
        .idu_lsu_iram_col_len(idu_lsu_iram_col_len),
        .idu_lsu_iram_row_len(idu_lsu_iram_row_len),
        .idu_lsu_wram_start_addr(idu_lsu_wram_start_addr),
        .idu_lsu_wram_col_dir(idu_lsu_wram_col_dir),
        .idu_lsu_wram_row_dir(idu_lsu_wram_row_dir),
        .idu_lsu_wram_col_len(idu_lsu_wram_col_len),
        .idu_lsu_wram_row_len(idu_lsu_wram_row_len),
        .idu_lsu_act_type(idu_lsu_act_type),
        .idu_lsu_pool_size(idu_lsu_pool_size)
    );

    mxu u_mxu(
        .clk(clk),
        .rst_n(rst_n),
        .lsu_mxu_vld(lsu_mxu_vld),
        .lsu_mxu_clr(lsu_mxu_clr),
        .lsu_mxu_iram_vld(lsu_mxu_iram_vld),
        .lsu_mxu_iram_pld(lsu_mxu_iram_pld),
        .lsu_mxu_wram_vld(lsu_mxu_wram_vld),
        .lsu_mxu_wram_pld(lsu_mxu_wram_pld),
        .lsu_mxu_pool_vld(lsu_mxu_pool_vld),
        .lsu_mxu_pool_size(lsu_mxu_pool_size),
        .lsu_mxu_act_vld(lsu_mxu_act_vld),
        .lsu_mxu_act_type(lsu_mxu_act_type),
        .lsu_mxu_wfi(lsu_mxu_wfi),
        .mxu_lsu_int8_row0_data(mxu_lsu_int8_row0_data),
        .mxu_lsu_int16_row0_data(mxu_lsu_int16_row0_data),
        .mxu_lsu_int8_row1_data(mxu_lsu_int8_row1_data),
        .mxu_lsu_int16_row1_data(mxu_lsu_int16_row1_data),
        .mxu_lsu_int8_row2_data(mxu_lsu_int8_row2_data),
        .mxu_lsu_int16_row2_data(mxu_lsu_int16_row2_data),
        .mxu_lsu_int8_row3_data(mxu_lsu_int8_row3_data),
        .mxu_lsu_int16_row3_data(mxu_lsu_int16_row3_data),
        .mxu_lsu_int8_row4_data(mxu_lsu_int8_row4_data),
        .mxu_lsu_int16_row4_data(mxu_lsu_int16_row4_data),
        .mxu_lsu_int8_row5_data(mxu_lsu_int8_row5_data),
        .mxu_lsu_int16_row5_data(mxu_lsu_int16_row5_data),
        .mxu_lsu_int8_row6_data(mxu_lsu_int8_row6_data),
        .mxu_lsu_int16_row6_data(mxu_lsu_int16_row6_data),
        .mxu_lsu_int8_row7_data(mxu_lsu_int8_row7_data),
        .mxu_lsu_int16_row7_data(mxu_lsu_int16_row7_data),
        .mxu_lsu_int8_row8_data(mxu_lsu_int8_row8_data),
        .mxu_lsu_int16_row8_data(mxu_lsu_int16_row8_data),
        .mxu_lsu_int8_row9_data(mxu_lsu_int8_row9_data),
        .mxu_lsu_int16_row9_data(mxu_lsu_int16_row9_data),
        .mxu_lsu_int8_row10_data(mxu_lsu_int8_row10_data),
        .mxu_lsu_int16_row10_data(mxu_lsu_int16_row10_data),
        .mxu_lsu_int8_row11_data(mxu_lsu_int8_row11_data),
        .mxu_lsu_int16_row11_data(mxu_lsu_int16_row11_data),
        .mxu_lsu_int8_row12_data(mxu_lsu_int8_row12_data),
        .mxu_lsu_int16_row12_data(mxu_lsu_int16_row12_data),
        .mxu_lsu_int8_row13_data(mxu_lsu_int8_row13_data),
        .mxu_lsu_int16_row13_data(mxu_lsu_int16_row13_data),
        .mxu_lsu_int8_row14_data(mxu_lsu_int8_row14_data),
        .mxu_lsu_int16_row14_data(mxu_lsu_int16_row14_data),
        .mxu_lsu_int8_row15_data(mxu_lsu_int8_row15_data),
        .mxu_lsu_int16_row15_data(mxu_lsu_int16_row15_data),
        .mxu_lsu_data_rdy(mxu_lsu_data_rdy),
        .mxu_lsu_rdy(mxu_lsu_rdy)
    );
endmodule