module tpu(
    clk,
    rst_n,
    start_vld,
    start_addr,
    // waddr interface
    AWID,
    AWADDR,
    AWLEN,
    AWSIZE,
    AWBURST,
    AWREGION,
    AWVALID,
    AWREADY,
    // wdata interface
    WDATA,
    WSTRB,
    WLAST,
    WVALID,
    WREADY,
    // wresp interface
    BID,
    BRESP,
    BVALID,
    BREADY,
);

    parameter AWID_WIDTH = 4;
    parameter AWADDR_WIDTH = 10;
    parameter WDATA_WIDTH = 64;
    parameter WSTRB_WIDTH = WDATA_WIDTH/8; // should be WDATA_WIDTH/8

    input clk;
    input rst_n;
    input start_vld;
    input [11:0] start_addr;
    //parameter

    //inout bus
    input clk;
    input rst_n;
    //address write channel 
    output [AWID_WIDTH-1:0] AWID;
    output [AWADDR_WIDTH-1:0] AWADDR;
    output [7:0] AWLEN;
    output [2:0] AWSIZE;
    output [1:0] AWBURST;
    output [3:0] AWREGION;
    output  AWVALID;
    input AWREADY;
    //write data channel
    output [WDATA_WIDTH-1:0] WDATA;
    output [WSTRB_WIDTH-1:0] WSTRB;
    output WLAST;
    output WVALID;
    input WREADY;
    //write response channel
    input [AWID_WIDTH-1:0] BID;
    input [1:0] BRESP;
    input BVALID;
    output BREADY;

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
    //axi <-> lsu
    wire [7:0] lsu_axi_awid;
    wire [9:0] lsu_axi_awaddr;
    wire [7:0] lsu_axi_awlen;
    wire [2:0] lsu_axi_awsize;
    wire [1:0] lsu_axi_awburst;
    wire [2:0] lsu_axi_awstr;
    wire [3:0] lsu_axi_awnum;
    wire lsu_axi_awvld;
    wire [11:0] lsu_axi_oram_addr;
    wire [63:0] lsu_axi_wdata;
    wire [7:0] lsu_axi_wstrb;
    wire lsu_axi_wlast;
    wire lsu_axi_wvld;
    wire lsu_axi_brdy;
    //axi->lsu interface
    wire axi_lsu_awrdy;
    wire axi_lsu_wrdy;
    wire [1:0] axi_lsu_bresp;
    wire axi_lsu_bvld;
    wire [11:0] axi_lsu_resp_oram_addr;

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

    AXI_WRITE_INFT u_AXI_WRITE_INFT(
        .clk(clk),
        .rst_n(rst_n),
        .AWID(AWID),
        .AWADDR(AWADDR),
        .AWLEN(AWLEN),
        .AWSIZE(AWSIZE),
        .AWBURST(AWBURST),
        .AWREGION(AWREGION),
        .AWVALID(AWVALID),
        .AWREADY(AWREADY),
        .WDATA(WDATA),
        .WSTRB(WSTRB),
        .WLAST(WLAST),
        .WVALID(WVALID),
        .WREADY(WREADY),
        .BID(BID),
        .BRESP(BRESP),
        .BVALID(BVALID),
        .BREADY(BREADY),
        .lsu_axi_awid(lsu_axi_awid),
        .lsu_axi_awaddr(lsu_axi_awaddr),
        .lsu_axi_awlen(lsu_axi_awlen),
        .lsu_axi_awsize(lsu_axi_awsize),
        .lsu_axi_awburst(lsu_axi_awburst),
        .lsu_axi_awstr(lsu_axi_awstr),
        .lsu_axi_awnum(lsu_axi_awnum),
        .lsu_axi_awvld(lsu_axi_awvld),
        .lsu_axi_oram_addr(lsu_axi_oram_addr),
        .lsu_axi_wdata(lsu_axi_wdata),
        .lsu_axi_wstrb(lsu_axi_wstrb),
        .lsu_axi_wlast(lsu_axi_wlast),
        .lsu_axi_wvld(lsu_axi_wvld),
        .lsu_axi_brdy(lsu_axi_brdy),
        .axi_lsu_awrdy(axi_lsu_awrdy),
        .axi_lsu_wrdy(axi_lsu_wrdy),
        .axi_lsu_bid(axi_lsu_bid),
        .axi_lsu_bresp(axi_lsu_bresp),
        .axi_lsu_bvld(axi_lsu_bvld),
        .axi_lsu_resp_oram_addr(axi_lsu_resp_oram_addr)
);

endmodule