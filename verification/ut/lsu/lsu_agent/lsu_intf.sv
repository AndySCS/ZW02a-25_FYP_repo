interface lsu_intf(
    .clk                                  (clk),
    .rst_n                                (rst_n),
    .alu_lsu_vld                          (alu_lsu_vld),
    .alu_lsu_wb_vld                       (alu_lsu_wb_vld),
    .alu_lsu_lb_op                        (alu_lsu_lb_op),
    .alu_lsu_lh_op                        (alu_lsu_lh_op),
    .alu_lsu_lw_op                        (alu_lsu_lw_op),
    .alu_lsu_lbu_op                       (alu_lsu_lbu_op),
    .alu_lsu_lhu_op                       (alu_lsu_lhu_op),
    .alu_lsu_sb_op                        (alu_lsu_sb_op),
    .alu_lsu_sh_op                        (alu_lsu_sh_op),
    .alu_lsu_sw_op                        (alu_lsu_sw_op),
    .alu_lsu_wb_addr                      (alu_lsu_wb_addr),
    .alu_lsu_wb_data                      (alu_lsu_wb_data),
    .alu_lsu_src2                         (alu_lsu_src2),
    .alu_lsu_ld_iram                      (alu_lsu_ld_iram),
    .alu_lsu_ld_wram                      (alu_lsu_ld_wram),
    .alu_lsu_ld_oram			          (alu_lsu_ld_oram),
    .alu_lsu_st_iram                      (alu_lsu_st_iram),
    .alu_lsu_st_wram                      (alu_lsu_st_wram),
    .alu_lsu_st_oram                      (alu_lsu_st_oram),
    .alu_lsu_st_dram                      (alu_lsu_st_dram),
    .alu_lsu_conv                         (alu_lsu_conv),
    .alu_lsu_act                          (alu_lsu_act),
    .alu_lsu_pool                         (alu_lsu_pool),
    .alu_lsu_wfi                          (alu_lsu_wfi),
    .alu_lsu_dram_addr                    (alu_lsu_dram_addr),
    .alu_lsu_num                          (alu_lsu_num),
    .alu_lsu_len                          (alu_lsu_len),
    .alu_lsu_str                          (alu_lsu_str),
    .alu_lsu_start_x                      (alu_lsu_start_x),
    .alu_lsu_start_y                      (alu_lsu_start_y),
    .alu_lsu_ld_st_addr                   (alu_lsu_ld_st_addr),
    .alu_lsu_st_low                       (alu_lsu_st_low),
    .alu_lsu_st_row                       (alu_lsu_st_row),
    .alu_lsu_st_col                       (alu_lsu_st_col),

    .alu_lsu_iram_start_addr              (alu_lsu_iram_start_addr),
    .alu_lsu_wram_start_addr              (alu_lsu_wram_start_addr),
    .alu_lsu_iram_row_len                 (alu_lsu_iram_row_len),
    .alu_lsu_wram_row_len                 (alu_lsu_wram_row_len),
    .alu_lsu_col_len                      (alu_lsu_col_len),
    .alu_lsu_act_type                     (alu_lsu_act_type),
    .alu_lsu_mxu_clr                      (alu_lsu_mxu_clr),
    //.alu_lsu_pool_size                    (alu_lsu_pool_size),

    .axi_lsu_awrdy                        (axi_lsu_awrdy),
    .axi_lsu_wrdy                         (axi_lsu_wrdy),
    .axi_lsu_bid                          (axi_lsu_bid),
    .axi_lsu_bresp                        (axi_lsu_bresp),
    .axi_lsu_bvld                         (axi_lsu_bvld),
    .axi_lsu_resp_oram_addr               (axi_lsu_resp_oram_addr),
    .axi_lsu_arrdy                        (axi_lsu_arrdy),

    .axi_lsu_rid                          (axi_lsu_rid),
    .axi_lsu_rdata                        (axi_lsu_rdata),
    .axi_lsu_rresp                        (axi_lsu_rresp),
    .axi_lsu_rlast                        (axi_lsu_rlast),
    .axi_lsu_rvld                         (axi_lsu_rvld),
    .lsu_alu_rdy                         (lsu_alu_rdy),

    .lsu_mxu_vld                          (lsu_mxu_vld),
    .lsu_mxu_clr                          (lsu_mxu_clr),
    .lsu_mxu_iram_vld                     (lsu_mxu_iram_vld),
    .lsu_mxu_iram_pld                     (lsu_mxu_iram_pld),
    .lsu_mxu_wram_vld                     (lsu_mxu_wram_vld),
    .lsu_mxu_wram_pld                     (lsu_mxu_wram_pld),
    .lsu_mxu_pool_vld                     (lsu_mxu_pool_vld),
    .lsu_mxu_pool_size                    (lsu_mxu_pool_size),
    .lsu_mxu_act_vld                      (lsu_mxu_act_vld),
    .lsu_mxu_act_type                     (lsu_mxu_act_type),
    .lsu_mxu_wfi                          (lsu_mxu_wfi),
    
    .mxu_lsu_int8_row0_data               (mxu_lsu_int8_row0_data),
    .mxu_lsu_int16_row0_data              (mxu_lsu_int16_row0_data),
    .mxu_lsu_int8_row1_data               (mxu_lsu_int8_row1_data),
    .mxu_lsu_int16_row1_data              (mxu_lsu_int16_row1_data),
    .mxu_lsu_int8_row2_data               (mxu_lsu_int8_row2_data),
    .mxu_lsu_int16_row2_data              (mxu_lsu_int16_row2_data),
    .mxu_lsu_int8_row3_data               (mxu_lsu_int8_row3_data),
    .mxu_lsu_int16_row3_data              (mxu_lsu_int16_row3_data),
    .mxu_lsu_int8_row4_data               (mxu_lsu_int8_row4_data),
    .mxu_lsu_int16_row4_data              (mxu_lsu_int16_row4_data),
    .mxu_lsu_int8_row5_data               (mxu_lsu_int8_row5_data),
    .mxu_lsu_int16_row5_data              (mxu_lsu_int16_row5_data),
    .mxu_lsu_int8_row6_data               (mxu_lsu_int8_row6_data),
    .mxu_lsu_int16_row6_data              (mxu_lsu_int16_row6_data),
    .mxu_lsu_int8_row7_data               (mxu_lsu_int8_row7_data),
    .mxu_lsu_int16_row7_data              (mxu_lsu_int16_row7_data),
    .mxu_lsu_int8_row8_data               (mxu_lsu_int8_row8_data),
    .mxu_lsu_int16_row8_data              (mxu_lsu_int16_row8_data),
    .mxu_lsu_int8_row9_data               (mxu_lsu_int8_row9_data),
    .mxu_lsu_int16_row9_data              (mxu_lsu_int16_row9_data),
    .mxu_lsu_int8_row10_data              (mxu_lsu_int8_row10_data),
    .mxu_lsu_int16_row10_data             (mxu_lsu_int16_row10_data),
    .mxu_lsu_int8_row11_data              (mxu_lsu_int8_row11_data),
    .mxu_lsu_int16_row11_data             (mxu_lsu_int16_row11_data),
    .mxu_lsu_int8_row12_data              (mxu_lsu_int8_row12_data),
    .mxu_lsu_int16_row12_data             (mxu_lsu_int16_row12_data),
    .mxu_lsu_int8_row13_data              (mxu_lsu_int8_row13_data),
    .mxu_lsu_int16_row13_data             (mxu_lsu_int16_row13_data),
    .mxu_lsu_int8_row14_data              (mxu_lsu_int8_row14_data),
    .mxu_lsu_int16_row14_data             (mxu_lsu_int16_row14_data),
    .mxu_lsu_int8_row15_data              (mxu_lsu_int8_row15_data),
    .mxu_lsu_int16_row15_data             (mxu_lsu_int16_row15_data),
    .mxu_lsu_data_rdy                     (mxu_lsu_data_rdy),
    .mxu_lsu_rdy                          (mxu_lsu_rdy),

    .lsu_axi_awid                         (lsu_axi_awid),
    .lsu_axi_awaddr                       (lsu_axi_awaddr),
    .lsu_axi_awlen                        (lsu_axi_awlen),
    .lsu_axi_awsize                       (lsu_axi_awsize),
    .lsu_axi_awburst                      (lsu_axi_awburst),
    .lsu_axi_awstr                        (lsu_axi_awstr),
    .lsu_axi_awvld                        (lsu_axi_awvld),
    .lsu_axi_oram_addr                    (lsu_axi_oram_addr),
    .lsu_axi_wdata                        (lsu_axi_wdata),
    .lsu_axi_wstrb                        (lsu_axi_wstrb),
    .lsu_axi_wlast                        (lsu_axi_wlast),
    .lsu_axi_wvld                         (lsu_axi_wvld),
    .lsu_axi_brdy                         (lsu_axi_brdy),
    .lsu_axi_arid                         (lsu_axi_arid),
    .lsu_axi_araddr                       (lsu_axi_araddr),
    .lsu_axi_arlen                        (lsu_axi_arlen),
    .lsu_axi_arsize                       (lsu_axi_arsize),
    .lsu_axi_arburst                      (lsu_axi_arburst),
    .lsu_axi_arstr                        (lsu_axi_arstr),
    .lsu_axi_arvld                        (lsu_axi_arvld),
    .lsu_axi_rrdy                         (lsu_axi_rrdy),

    .lsu_idu_wb_vld                       (lsu_idu_wb_vld),
    .lsu_idu_ld_vld                       (lsu_idu_ld_vld),
    .lsu_idu_wb_addr                      (lsu_idu_wb_addr),
    .lsu_idu_wb_data                      (lsu_idu_wb_data),
    .lsu_rf_wb_vld                        (lsu_rf_wb_vld),
    .lsu_rf_wb_addr                       (lsu_rf_wb_addr),
    .lsu_rf_wb_data                       (lsu_rf_wb_data)
);
    input clk;
    input rst_n;
    input alu_lsu_vld;
    input alu_lsu_wb_vld;
    input alu_lsu_lb_op;
    input alu_lsu_lh_op;
    input alu_lsu_lw_op;
    input alu_lsu_lbu_op;
    input alu_lsu_lhu_op;
    input alu_lsu_sb_op;
    input alu_lsu_sh_op;
    input alu_lsu_sw_op;
    
    input [4:0]  alu_lsu_wb_addr;
    input [31:0] alu_lsu_wb_data;
    input [31:0] alu_lsu_src2;

    input alu_lsu_ld_iram;
    input alu_lsu_ld_wram;
    input alu_lsu_ld_oram;
    input alu_lsu_st_iram;
    input alu_lsu_st_wram;
    input alu_lsu_st_oram;
    input alu_lsu_st_dram;
    input alu_lsu_conv;
    input alu_lsu_act;
    input alu_lsu_pool;
    input alu_lsu_wfi;

    input [31:0] alu_lsu_dram_addr;
    input [7:0]  alu_lsu_num;
    input [2:0]  alu_lsu_len;
    input [2:0]  alu_lsu_str;
    input [3:0]  alu_lsu_start_x;
    input [3:0]  alu_lsu_start_y;
    input [12:0] alu_lsu_ld_st_addr;
    input        alu_lsu_st_low;
    input [3:0]  alu_lsu_st_row;
    input [3:0]  alu_lsu_st_col;

    //payload related for matrix mutiplication
    input [11:0] alu_lsu_iram_start_addr;
    input [3:0] alu_lsu_iram_row_len;
    input [11:0]alu_lsu_wram_start_addr;
    input [3:0] alu_lsu_wram_row_len;

    input [3:0] alu_lsu_col_len;
    input [1:0]  alu_lsu_act_type;
    input alu_lsu_mxu_clr;
    //input [1:0]  alu_lsu_pool_size;

    input axi_lsu_awrdy;
    input axi_lsu_wrdy;
    input axi_lsu_bid;
    input [1:0] axi_lsu_bresp;
    input axi_lsu_bvld;
    input [11:0] axi_lsu_resp_oram_addr;

    input axi_lsu_arrdy;
    input [7:0] axi_lsu_rid;
    input [63:0] axi_lsu_rdata;
    input [1:0] axi_lsu_rresp;
    input axi_lsu_rlast;
    input axi_lsu_rvld;

    output lsu_alu_rdy;

    output lsu_mxu_vld;
    output lsu_mxu_clr;
    output [15:0] lsu_mxu_iram_vld;
    output [127:0] lsu_mxu_iram_pld;
    output [15:0] lsu_mxu_wram_vld;
    output [127:0] lsu_mxu_wram_pld;
    output lsu_mxu_pool_vld;
    output [1:0] lsu_mxu_pool_size;
    output lsu_mxu_act_vld;
    output [1:0] lsu_mxu_act_type;
    output lsu_mxu_wfi;

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

    output [7:0] lsu_axi_awid;
    output [9:0] lsu_axi_awaddr;
    output [7:0] lsu_axi_awlen;
    output [2:0] lsu_axi_awsize;
    output [1:0] lsu_axi_awburst;
    output [2:0] lsu_axi_awstr;
    output lsu_axi_awvld;
    output [11:0] lsu_axi_oram_addr;
    output [63:0] lsu_axi_wdata;
    output [7:0] lsu_axi_wstrb;
    output lsu_axi_wlast;
    output lsu_axi_wvld;
    output lsu_axi_brdy;

    output [7:0] lsu_axi_arid;
    output [9:0] lsu_axi_araddr;
    output [7:0] lsu_axi_arlen;
    output [2:0] lsu_axi_arsize;
    output [1:0] lsu_axi_arburst;
    output [2:0] lsu_axi_arstr;
    output lsu_axi_arvld;
    output lsu_axi_rrdy;

    output lsu_idu_wb_vld;
    output lsu_idu_ld_vld;
    output [4:0] lsu_idu_wb_addr;
    output [31:0] lsu_idu_wb_data;
    output lsu_rf_wb_vld;
    output [4:0] lsu_rf_wb_addr;
    output [31:0] lsu_rf_wb_data;

endinterface
