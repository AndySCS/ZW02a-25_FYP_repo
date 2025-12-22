interface lsu(
    clk,
    rst_n,

    //from idu
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
    idu_lsu_num,
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
    idu_lsu_pool_size,

    //from axi write 
    axi_lsu_awrdy,
    axi_lsu_wrdy,
    axi_lsu_bid,
    axi_lsu_bresp,
    axi_lsu_bvld,
    axi_lsu_resp_oram_addr,

    //from axi read
    axi_lsu_arrdy,
    axi_lsu_rid,
    axi_lsu_rdata,
    axi_lsu_rresp,
    axi_lsu_rlast,
    axi_lsu_rvld,

    mxu_lsu_int8_row0_data,
    mxu_lsu_int16_row0_data,
    mxu_lsu_int8_row1_data,
    mxu_lsu_int16_row1_data,
    mxu_lsu_int8_row2_data,
    mxu_lsu_int16_row2_data,
    mxu_lsu_int8_row3_data,
    mxu_lsu_int16_row3_data,
    mxu_lsu_int8_row4_data,
    mxu_lsu_int16_row4_data,
    mxu_lsu_int8_row5_data,
    mxu_lsu_int16_row5_data,
    mxu_lsu_int8_row6_data,
    mxu_lsu_int16_row6_data,
    mxu_lsu_int8_row7_data,
    mxu_lsu_int16_row7_data,
    mxu_lsu_int8_row8_data,
    mxu_lsu_int16_row8_data,
    mxu_lsu_int8_row9_data,
    mxu_lsu_int16_row9_data,
    mxu_lsu_int8_row10_data,
    mxu_lsu_int16_row10_data,
    mxu_lsu_int8_row11_data,
    mxu_lsu_int16_row11_data,
    mxu_lsu_int8_row12_data,
    mxu_lsu_int16_row12_data,
    mxu_lsu_int8_row13_data,
    mxu_lsu_int16_row13_data,
    mxu_lsu_int8_row14_data,
    mxu_lsu_int16_row14_data,
    mxu_lsu_int8_row15_data,
    mxu_lsu_int16_row15_data,
    mxu_lsu_data_rdy,
    mxu_lsu_rdy,

);
    input clk;
    input rst_n;

    //from idu
    //instruction related
    input idu_lsu_vld;
    input idu_lsu_ld_iram;
    input idu_lsu_ld_wram;
    input idu_lsu_st_iram;
    input idu_lsu_st_wram;
    input idu_lsu_st_oram;
    input idu_lsu_st_dram;
    input idu_lsu_conv;
    input idu_lsu_act;
    input idu_lsu_pool;
    input idu_lsu_wfi;

    //paylaod related for load store
    input [30:0] idu_lsu_dram_addr;
    input [7:0] idu_lsu_num;
    input [7:0] idu_lsu_len;
    input [2:0] idu_lsu_size;
    input [2:0] idu_lsu_str;
    input [3:0] idu_lsu_start_x;
    input [3:0] idu_lsu_start_y;
    input [11:0] idu_lsu_ld_st_addr;
    input idu_lsu_st_low;

    //payload related for matrix mutiplication
    input [11:0] idu_lsu_iram_start_addr;
    input idu_lsu_iram_col_dir;
    input idu_lsu_iram_row_dir;
    input [3:0] idu_lsu_iram_col_len;
    input [3:0] idu_lsu_iram_row_len;

    input [11:0]idu_lsu_wram_start_addr;
    input idu_lsu_wram_col_dir;
    input idu_lsu_wram_row_dir;
    input [3:0] idu_lsu_wram_col_len;
    input [3:0] idu_lsu_wram_row_len;

    //payload for other instructions
    input [1:0] idu_lsu_act_type;
    input [1:0] idu_lsu_pool_size; 

    //from axi write
    input axi_lsu_awrdy;
    input axi_lsu_wrdy;
    input axi_lsu_bid;
    input [1:0] axi_lsu_bresp;
    input axi_lsu_bvld;
    input [11:0] axi_lsu_resp_oram_addr;

    //from axi read
    input axi_lsu_arrdy;
    input [7:0] axi_lsu_rid;
    input [63:0] axi_lsu_rdata;
    input [1:0] axi_lsu_rresp;
    input axi_lsu_rlast;
    input axi_lsu_rvld;

    //from mxu
    input [127:0] mxu_lsu_int8_row0_data;
    input [255:0] mxu_lsu_int16_row0_data;
    input [127:0] mxu_lsu_int8_row1_data;
    input [255:0] mxu_lsu_int16_row1_data;
    input [127:0] mxu_lsu_int8_row2_data;
    input [255:0] mxu_lsu_int16_row2_data;
    input [127:0] mxu_lsu_int8_row3_data;
    input [255:0] mxu_lsu_int16_row3_data;
    input [127:0] mxu_lsu_int8_row4_data;
    input [255:0] mxu_lsu_int16_row4_data;
    input [127:0] mxu_lsu_int8_row5_data;
    input [255:0] mxu_lsu_int16_row5_data;
    input [127:0] mxu_lsu_int8_row6_data;
    input [255:0] mxu_lsu_int16_row6_data;
    input [127:0] mxu_lsu_int8_row7_data;
    input [255:0] mxu_lsu_int16_row7_data;
    input [127:0] mxu_lsu_int8_row8_data;
    input [255:0] mxu_lsu_int16_row8_data;
    input [127:0] mxu_lsu_int8_row9_data;
    input [255:0] mxu_lsu_int16_row9_data;
    input [127:0] mxu_lsu_int8_row10_data;
    input [255:0] mxu_lsu_int16_row10_data;
    input [127:0] mxu_lsu_int8_row11_data;
    input [255:0] mxu_lsu_int16_row11_data;
    input [127:0] mxu_lsu_int8_row12_data;
    input [255:0] mxu_lsu_int16_row12_data;
    input [127:0] mxu_lsu_int8_row13_data;
    input [255:0] mxu_lsu_int16_row13_data;
    input [127:0] mxu_lsu_int8_row14_data;
    input [255:0] mxu_lsu_int16_row14_data;
    input [127:0] mxu_lsu_int8_row15_data;
    input [255:0] mxu_lsu_int16_row15_data;
    input mxu_lsu_data_rdy;
    input mxu_lsu_rdy;


endinterface