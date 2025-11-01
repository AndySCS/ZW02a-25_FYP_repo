`include "define.vh"

module AXI_WRITE_INFT(
    clk,
    rst_n,
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
    //lsu interface
    lsu_axi_awid,
    lsu_axi_awaddr,
    lsu_axi_awlen,
    lsu_axi_awsize,
    lsu_axi_awburst,
    lsu_axi_awstr,
    lsu_axi_awnum,
    lsu_axi_awvld,
    lsu_axi_oram_addr,
    lsu_axi_wdata,
    lsu_axi_wstrb,
    lsu_axi_wlast,
    lsu_axi_wvld,
    lsu_axi_brdy,
    axi_lsu_awrdy,
    axi_lsu_wrdy,
    axi_lsu_bid,
    axi_lsu_bresp,
    axi_lsu_bvld,
    axi_lsu_resp_oram_addr


);
    //parameter
    parameter AWID_WIDTH = 4;
    parameter AWADDR_WIDTH = 10;
    parameter WDATA_WIDTH = 64;
    parameter WSTRB_WIDTH = WDATA_WIDTH/8; // should be WDATA_WIDTH/8
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
    //lsu->axi interface
    input [7:0] lsu_axi_awid;
    input [9:0] lsu_axi_awaddr;
    input [7:0] lsu_axi_awlen;
    input [2:0] lsu_axi_awsize;
    input [1:0] lsu_axi_awburst;
    input [2:0] lsu_axi_awstr;
    input [3:0] lsu_axi_awnum;
    input lsu_axi_awvld;
    input [11:0] lsu_axi_oram_addr;
    input [63:0] lsu_axi_wdata;
    input [7:0] lsu_axi_wstrb;
    input lsu_axi_wlast;
    input lsu_axi_wvld;
    input lsu_axi_brdy;
    //axi->lsu interface
    output axi_lsu_awrdy;
    output axi_lsu_wrdy;
    output [1:0] axi_lsu_bresp;
    output axi_lsu_bvld;
    output [11:0] axi_lsu_resp_oram_addr;

    //AXI ID
    wire [15:0] axi_vld;
    wire [15:0] axi_vld_nxt;
    wire [15:0] axi_alloc_en;
    wire [15:0] axi_alloc_ptr;
    wire [15:0] axi_alloc_ptr_nxt;
    wire [15:0] axi_invld;
    wire [15:0] axi_recv;
    wire [15:0] axi_recv_nxt;
    wire [15:0] axi_recv_ptr;
    wire axi_recv_en;
    wire [15:0] axi_sent;
    wire [15:0] axi_sent_nxt;
    wire [15:0] axi_sent_ptr;
    wire [15:0] axi_sent_ptr_nxt;
    wire axi_sent_en;
    wire axi_alloc_vld;
    wire [11:0] oram_addr_0;
    wire [11:0] oram_addr_1;
    wire [11:0] oram_addr_2;
    wire [11:0] oram_addr_3;
    wire [11:0] oram_addr_4;
    wire [11:0] oram_addr_5;
    wire [11:0] oram_addr_6;
    wire [11:0] oram_addr_7;
    wire [11:0] oram_addr_8;
    wire [11:0] oram_addr_9;
    wire [11:0] oram_addr_10;
    wire [11:0] oram_addr_11;
    wire [11:0] oram_addr_12;
    wire [11:0] oram_addr_13;
    wire [11:0] oram_addr_14;
    wire [11:0] oram_addr_15;
    wire [11:0] oram_addr_cur;
    wire [11:0] oram_addr_nxt;
    wire oram_addr_en;

    assign axi_invld = ~axi_vld;
    assign axi_alloc_en = {16{axi_alloc_vld}} & axi_alloc_ptr & axi_invld;
    assign axi_alloc_vld = lsu_axi_awvld_qual | axi_doing_st;
    assign axi_vld_nxt = axi_alloc_en | axi_vld & ~({16{lsu_resp_recv}} & axi_recv_ptr);
    assign axi_sent_nxt = {16{AWVALID_sent}} & axi_sent_ptr | axi_sent & ~axi_alloc_en;
    assign axi_recv_nxt = {16{BVALID_qual}} & BID_16 | axi_recv & ~axi_alloc_en; 
    assign axi_sent_ptr_nxt = {axi_sent_ptr[14:0], axi_sent_ptr[15]};
    assign axi_alloc_ptr_nxt = {axi_alloc_ptr[14:0], axi_alloc_ptr[15]};
    assign axi_sent_en = axi_alloc_vld | AWVALID_sent;
    assign axi_recv_en = axi_alloc_vld | BVALID_qual;
    assign oram_addr_nxt = lsu_axi_awvld_qual ? lsu_axi_oram_addr: oram_addr_cur + 12'b1;
    assign oram_addr_en = lsu_axi_awvld_qual | (|axi_alloc_en);
    
    DFFSE ff_axi_sent_ptr_lo #(.WIDTH(1))(
        .clk(clk),
        .rst_n(rst_n),
        .en(AWVALID_sent),
        .d(axi_sent_ptr_nxt[0]),
        .q(axi_sent_ptr[0])
    );
    DFFRE ff_axi_sent_ptr_lo #(.WIDTH(15))(
        .clk(clk),
        .rst_n(rst_n),
        .en(AWVALID_sent),
        .d(axi_sent_ptr_nxt[15:1]),
        .q(axi_sent_ptr[15:1])
    );

    DFFSE ff_axi_alloc_ptr_lo #(.WIDTH(1))(
        .clk(clk),
        .rst_n(rst_n),
        .en(AWVALID_alloc),
        .d(axi_alloc_ptr_nxt[0]),
        .q(axi_alloc_ptr[0])
    );
    DFFRE ff_axi_alloc_ptr_lo #(.WIDTH(15))(
        .clk(clk),
        .rst_n(rst_n),
        .en(AWVALID_alloc),
        .d(axi_alloc_ptr_nxt[15:1]),
        .q(axi_alloc_ptr[15:1])
    );

    DFFR ff_axi_vld #(.WIDTH(16))(
        .clk(clk),
        .rst_n(rst_n),
        .d(axi_vld_nxt),
        .q(axi_vld)
    );
    DFFE ff_axi_sent #(.WIDTH(16))(
        .clk(clk),
        .en(axi_sent_en),
        .d(axi_sent_nxt),
        .q(axi_sent)
    );
    DFFE ff_axi_recv #(.WIDTH(16))(
        .clk(clk),
        .en(axi_recv_en),
        .d(axi_recv_nxt),
        .q(axi_recv)
    );

    DFFE ff_oram_addr_cur #(.WIDTH(12))(
        .clk(clk),
        .en(axi_recv_en),
        .d(oram_addr_nxt),
        .q(oram_addr_cur)
    );
    DFFE ff_oram_addr_0 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_0)
    );
    DFFE ff_oram_addr_1 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_1)
    );
    DFFE ff_oram_addr_2 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_2)
    );
    DFFE ff_oram_addr_3 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_3)
    );
    DFFE ff_oram_addr_4 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_4)
    );
    DFFE ff_oram_addr_5 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_5)
    );
    DFFE ff_oram_addr_6 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_6)
    );
    DFFE ff_oram_addr_7 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_7)
    );
    DFFE ff_oram_addr_8 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_8)
    );
    DFFE ff_oram_addr_9 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_9)
    );
    DFFE ff_oram_addr_10 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_10)
    );
    DFFE ff_oram_addr_11 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_11)
    );
    DFFE ff_oram_addr_12 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_12)
    );
    DFFE ff_oram_addr_13 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_13)
    );
    DFFE ff_oram_addr_14 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_14)
    );
    DFFE ff_oram_addr_15 #(.WIDTH(12))(
        .clk(clk),
        .en(axi_alloc_en),
        .d(oram_addr_nxt),
        .q(oram_addr_15)
    );
    
    
    //

    //AW INTF
    wire lsu_axi_awvld_qual;
    wire AWVALID_nxt;
    wire AWVALID_sent;
    wire [AWID_WIDTH-1:0] AWID_nxt;
    wire [AWADDR_WIDTH-1:0] AWADDR_nxt;
    wire [AWADDR_WIDTH-1:0] AWADDR_pconst;
    wire [AWADDR_WIDTH-1:0] AWADDR_add_str;
    wire AWADDR_en;
    wire [7:0] AWLEN_nxt;
    wire [2:0] AWSIZE_nxt;
    wire [1:0] AWBURST_nxt;
    wire [3:0] AWREGION_nxt;
    wire [2:0] awstr;
    wire [2:0] awstr_nxt;
    wire [3:0] awnum;
    wire [3:0] awnum_nxt;
    wire axi_doing_st;
    wire axi_doing_st_nxt;
    wire [3:0] awcnt;
    wire [3:0] awcnt_nxt;
    wire [3:0] awcnt_en;

    assign axi_lsu_awrdy = |axi_vld;
   
    assign AWVALID = |(axi_vld & ~axi_sent);
    assign AWID_nxt = AWID + 4'b1;
    assign lsu_axi_awvld_qual = lsu_axi_awvld & axi_lsu_awrdy;
    assign AWVALID_sent = AWVALID & AWREADY;
    assign AWADDR_en = AWVALID_sent | lsu_axi_awvld_qual;
    assign AWADDR_pconst = {AWADDR_WIDTH{(awstr == 3'b000)}} & 'd16
                         | {AWADDR_WIDTH{(awstr == 3'b001)}} & 'd32
                         | {AWADDR_WIDTH{(awstr == 3'b010)}} & 'd64
                         | {AWADDR_WIDTH{(awstr == 3'b011)}} & 'd128
                         | {AWADDR_WIDTH{(awstr == 3'b100)}} & 'd156;
    assign AWADDR_add_str = AWADDR + AWADDR_pconst;
    assign AWADDR_nxt = lsu_axi_awvld_qual? lsu_axi_awaddr 
                      : axi_doing_st ? AWADDR_add_str
                      : AWADDR;
    assign AWLEN_nxt = lsu_axi_awvld_qual? lsu_axi_awlen : AWLEN;
    assign AWSIZE_nxt = lsu_axi_awvld_qual? lsu_axi_awsize : AWSIZE;
    assign AWBURST_nxt = lsu_axi_awvld_qual? lsu_axi_awburst : AWBURST;
    assign AWREGION_nxt = 4'b0;//lsu_axi_awvld_qual? lsu_axi_awid : AWID;
    assign awstr_nxt = lsu_axi_awvld_qual? lsu_axi_awstr : awstr;
    assign awnum_nxt = lsu_axi_awvld_qual? lsu_axi_awnum : awnum;
    assign awcnt_nxt = lsu_axi_awvld_qual? 4'b0 : awcnt + 4'b1;
    assign awcnt_en = |axi_alloc_en;
    assign axi_doing_st = awcnt < awnum;
    
    DFFRE ff_AWID #(.WIDTH(AWID_WIDTH))(
        .clk(clk),
        .rst_n(rst_n),
        .en(AWVALID_sent),
        .d(AWID_nxt),
        .q(AWID)
    );

    DFFE ff_AWADDR #(.WIDTH(AWADDR_WIDTH))(
        .clk(clk),
        .en(AWADDR_en),
        .d(AWADDR_nxt),
        .q(AWADDR)
    );

    DFFE ff_AWLEN #(.WIDTH(8))(
        .clk(clk),
        .en(lsu_axi_awvld),
        .d(AWLEN_nxt),
        .q(AWLEN)
    );

    DFFE ff_AWSIZE #(.WIDTH(3))(
        .clk(clk),
        .en(lsu_axi_awvld),
        .d(AWSIZE_nxt),
        .q(AWSIZE)
    );

    DFFE ff_AWBURST #(.WIDTH(2))(
        .clk(clk),
        .en(lsu_axi_awvld),
        .d(AWBURST_nxt),
        .q(AWBURST)
    );
    
    DFFE ff_awnum #(.WIDTH(4))(
        .clk(clk),
        .en(lsu_axi_awvld),
        .d(awnum_nxt),
        .q(awnum)
    );
    
    DFFE ff_awstr #(.WIDTH(3))(
        .clk(clk),
        .en(lsu_axi_awvld),
        .d(awstr_nxt),
        .q(awstr)
    );

    assign AWREGION = 4'b0;
    //

    //W INTF 
    wire [WDATA_WIDTH-1:0] WDATA_nxt;
    wire [WSTRB_WIDTH-1:0] WSTRB_nxt;
    wire WLAST_nxt;
    wire WVALID_nxt;
    wire lsu_axi_wvld_qual;
    wire [7:0] wcnt;
    wire [7:0] wcnt_nxt;
    wire wcnt_en;
    wire wcnt_full;

    assign axi_lsu_wrdy = ~WVALID;

    assign lsu_axi_wvld_qual = lsu_axi_wvld & axi_lsu_wrdy;
    assign WVALID_nxt = lsu_axi_wvld_qual | WVALID & ~WREADY;
    assign WDATA_nxt = lsu_axi_wvld_qual ? lsu_axi_wdata : WDATA;
    assign WSTRB_nxt = lsu_axi_wvld_qual ? lsu_axi_wdata : WSTRB;
    assign wcnt_full = wcnt == AWLEN;
    assign WLAST_nxt = wcnt_full;
    assign wcnt_nxt = (lsu_axi_awvld_qual | wcnt_full) 8'b0 : wcnt_nxt + 7'b1;
    assign wcnt_en = lsu_axi_awvld_qual | lsu_axi_wvld_qual;
    
    DFFR ff_WVALID #(.WIDTH(1))(
        .clk(clk),
        .rst_n(rst_n),
        .d(WVALID_nxt),
        .q(WVALID)
    );

    DFFE ff_WDATA #(.WIDTH(64))(
        .clk(clk),
        .en(lsu_axi_wvld),
        .d(WDATA_nxt),
        .q(WDATA)
    );

    DFFE ff_WSTRB #(.WIDTH(8))(
        .clk(clk),
        .en(lsu_axi_wvld),
        .d(WSTRB_nxt),
        .q(WSTRB)
    );

    DFFE ff_WLAST #(.WIDTH(1))(
        .clk(clk),
        .en(lsu_axi_wvld),
        .d(WLAST_nxt),
        .q(WLAST)
    );
    
    DFFE ff_wcnt #(.WIDTH(1))(
        .clk(clk),
        .en(wcnt_en),
        .d(wcnt_nxt),
        .q(wcnt)
    );
    //

    //W RESP
    wire BVALID_qual;
    wire lsu_resp_recv;
    wire axi_lsu_bvld_nxt;
    wire [AWID_WIDTH-1:0] axi_lsu_resp_bid;
    wire [AWID_WIDTH-1:0] axi_lsu_resp_bid_nxt;
    wire [1:0] axi_lsu_bresp_nxt;

    assign BVALID_qual = BVALID & BREADY;
    assign lsu_resp_recv = lsu_axi_brdy & axi_lsu_bvld;
    assign axi_lsu_bvld_nxt = BVALID_qual | axi_lsu_bvld & ~lsu-lsu_resp_recv;
    assign axi_lsu_resp_bid_nxt = BVALID_qual ? BID : axi_lsu_resp_oram_addr;
    assign axi_lsu_bresp_nxt = BVALID_qual ? BRESP : axi_lsu_bresp;
    assign BREADY = ~axi_lsu_bvld;

    mux16 reso_oram_addr_mux #(.WIDTH(12))(
        .in0(oram_addr_0),
        .in0(oram_addr_1),
        .in0(oram_addr_2),
        .in0(oram_addr_3),
        .in0(oram_addr_4),
        .in0(oram_addr_5),
        .in0(oram_addr_6),
        .in0(oram_addr_7),
        .in0(oram_addr_8),
        .in0(oram_addr_9),
        .in0(oram_addr_10),
        .in0(oram_addr_11),
        .in0(oram_addr_12),
        .in0(oram_addr_13),
        .in0(oram_addr_14),
        .in0(oram_addr_15),
        .sel(axi_lsu_resp_bid),
        .out(axi_lsu_resp_oram_addr)
    );

    dec4to16 BID_dec(.in(axi_lsu_resp_bid), .out(axi_recv_ptr));
    dec4to16 BID_dec(.in(BID), .out(BID_16));
    
    DFFR ff_axi_lsu_bvld #(.WIDTH(1))(
        .clk(clk),
        .rst_n(rst_n),
        .d(axi_lsu_bvld_nxt),
        .q(axi_lsu_bvld)
    );

    DFFE ff_axi_lsu_resp_bid #(.WIDTH(1))(
        .clk(clk),
        .en(BVALID),
        .d(axi_lsu_resp_bid_nxt),
        .q(axi_lsu_resp_bid)
    );
    


    ///

endmodule