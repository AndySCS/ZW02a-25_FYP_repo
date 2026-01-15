interface top_intf(
    clk,
    rst_n,
    lsu_top_vld,
    lsu_top_clr,
    lsu_top_iram_vld,
    lsu_top_iram_pld,
    lsu_top_wram_vld,
    lsu_top_wram_pld,
    lsu_top_pool_vld,
    lsu_top_pool_size,
    lsu_top_act_vld,
    lsu_top_act_type,
    lsu_top_wfi,
    top_lsu_int8_row0_data,
    top_lsu_int16_row0_data,
    top_lsu_int8_row1_data,
    top_lsu_int16_row1_data,
    top_lsu_int8_row2_data,
    top_lsu_int16_row2_data,
    top_lsu_int8_row3_data,
    top_lsu_int16_row3_data,
    top_lsu_int8_row4_data,
    top_lsu_int16_row4_data,
    top_lsu_int8_row5_data,
    top_lsu_int16_row5_data,
    top_lsu_int8_row6_data,
    top_lsu_int16_row6_data,
    top_lsu_int8_row7_data,
    top_lsu_int16_row7_data,
    top_lsu_int8_row8_data,
    top_lsu_int16_row8_data,
    top_lsu_int8_row9_data,
    top_lsu_int16_row9_data,
    top_lsu_int8_row10_data,
    top_lsu_int16_row10_data,
    top_lsu_int8_row11_data,
    top_lsu_int16_row11_data,
    top_lsu_int8_row12_data,
    top_lsu_int16_row12_data,
    top_lsu_int8_row13_data,
    top_lsu_int16_row13_data,
    top_lsu_int8_row14_data,
    top_lsu_int16_row14_data,
    top_lsu_int8_row15_data,
    top_lsu_int16_row15_data,
    top_lsu_data_rdy,
    top_lsu_rdy
);
   
    input clk;
    input rst_n;
    input lsu_top_vld;
    input lsu_top_clr;
    input [15:0] lsu_top_iram_vld;
    input [127:0] lsu_top_iram_pld;
    input [15:0] lsu_top_wram_vld;
    input [127:0] lsu_top_wram_pld;
    input lsu_top_pool_vld;
    input [1:0] lsu_top_pool_size;
    input lsu_top_act_vld;
    input [1:0] lsu_top_act_type;
    input lsu_top_wfi;
    input [127:0] top_lsu_int8_row0_data;
    input [255:0] top_lsu_int16_row0_data;
    input [127:0] top_lsu_int8_row1_data;
    input [255:0] top_lsu_int16_row1_data;
    input [127:0] top_lsu_int8_row2_data;
    input [255:0] top_lsu_int16_row2_data;
    input [127:0] top_lsu_int8_row3_data;
    input [255:0] top_lsu_int16_row3_data;
    input [127:0] top_lsu_int8_row4_data;
    input [255:0] top_lsu_int16_row4_data;
    input [127:0] top_lsu_int8_row5_data;
    input [255:0] top_lsu_int16_row5_data;
    input [127:0] top_lsu_int8_row6_data;
    input [255:0] top_lsu_int16_row6_data;
    input [127:0] top_lsu_int8_row7_data;
    input [255:0] top_lsu_int16_row7_data;
    input [127:0] top_lsu_int8_row8_data;
    input [255:0] top_lsu_int16_row8_data;
    input [127:0] top_lsu_int8_row9_data;
    input [255:0] top_lsu_int16_row9_data;
    input [127:0] top_lsu_int8_row10_data;
    input [255:0] top_lsu_int16_row10_data;
    input [127:0] top_lsu_int8_row11_data;
    input [255:0] top_lsu_int16_row11_data;
    input [127:0] top_lsu_int8_row12_data;
    input [255:0] top_lsu_int16_row12_data;
    input [127:0] top_lsu_int8_row13_data;
    input [255:0] top_lsu_int16_row13_data;
    input [127:0] top_lsu_int8_row14_data;
    input [255:0] top_lsu_int16_row14_data;
    input [127:0] top_lsu_int8_row15_data;
    input [255:0] top_lsu_int16_row15_data;
    input top_lsu_data_rdy;
    input top_lsu_rdy;

endinterface