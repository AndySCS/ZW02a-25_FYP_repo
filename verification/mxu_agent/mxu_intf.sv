interface mxu_intf(
    clk,
    rst_n,
    lsu_mxu_vld,
    lsu_mxu_clr,
    lsu_mxu_iram_vld,
    lsu_mxu_iram_pld,
    lsu_mxu_wram_vld,
    lsu_mxu_wram_pld,
    lsu_mxu_pool_vld,
    lsu_mxu_pool_size,
    lsu_mxu_act_vld,
    lsu_mxu_act_type,
    lsu_mxu_wfi,
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
    mxu_lsu_rdy
);
   
    input clk;
    input rst_n;
    input lsu_mxu_vld;
    input lsu_mxu_clr;
    input [15:0] lsu_mxu_iram_vld;
    input [127:0] lsu_mxu_iram_pld;
    input [15:0] lsu_mxu_wram_vld;
    input [127:0] lsu_mxu_wram_pld;
    input lsu_mxu_pool_vld;
    input [1:0] lsu_mxu_pool_size;
    input lsu_mxu_act_vld;
    input [1:0] lsu_mxu_act_type;
    input lsu_mxu_wfi;
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