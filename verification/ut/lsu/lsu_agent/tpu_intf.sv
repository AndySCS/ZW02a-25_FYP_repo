interface tpu_intf(
    .clk (clk),
    .rst_n (rst_n),
    .start_vld (start_vld),
    .start_addr (start_addr),
    // waddr interface
    .AWID (AWID),
    .AWADDR (AWADDR),
    .AWLEN (AWLEN),
    .AWSIZE (AWSIZE),
    .AWBURST (AWBURST),
    .AWREGION (AWREGION),
    .AWVALID (AWVALID),
    .AWREADY (AWREADY),
    .ARID (ARID),
    .ARADDR (ARADDR),
    .ARLEN (ARLEN),
    .ARSIZE (ARSIZE),
    .ARBURST (ARBURST),
    .ARREGION (ARREGION),
    .ARVALID (ARVALID),
    .ARREADY (ARREADY),
    // wdata interface
    .WDATA (WDATA),
    .WSTRB (WSTRB),
    .WLAST (WLAST),
    .WVALID (WVALID),
    .WREADY (WREADY),
    // read interface
    .RID (RID),
    .RDATA (RDATA),
    .RRESP (RRESP),
    .RLAST (RLAST),
    .RVALID (RVALID),
    .RREADY (RREADY),
    // wresp interface
    .BID (BID),
    .BRESP (BRESP),
    .BVALID (BVALID),
    .BREADY (BREADY),
    .wfi (wfi)
);

    parameter AWID_WIDTH = 4;
    parameter AWADDR_WIDTH = 32;
    parameter WDATA_WIDTH = 64;
    parameter WSTRB_WIDTH = WDATA_WIDTH/8; // should be WDATA_WIDTH/8

    input clk;
    input rst_n;
    input start_vld;
    input [11:0] start_addr;
    //parameter

    //inout bus
    //address write channel 
    output [AWID_WIDTH-1:0] AWID;
    output [AWADDR_WIDTH-1:0] AWADDR;
    output [7:0] AWLEN;
    output [2:0] AWSIZE;
    output [1:0] AWBURST;
    output [3:0] AWREGION;
    output  AWVALID;
    input AWREADY;

    output [AWID_WIDTH-1:0] ARID;
    output [AWADDR_WIDTH-1:0] ARADDR;
    output [7:0] ARLEN;
    output [2:0] ARSIZE;
    output [1:0] ARBURST;
    output [3:0] ARREGION;
    output  ARVALID;
    input ARREADY;

    //write data channel
    output [WDATA_WIDTH-1:0] WDATA;
    output [WSTRB_WIDTH-1:0] WSTRB;
    output WLAST;
    output WVALID;
    input WREADY;

    //read data channel
    input [AWID_WIDTH-1:0] RID;
    input [WDATA_WIDTH-1:0] RDATA;
    input [1:0] RRESP;
    input RLAST;
    input RVALID;
    output RREADY; 
    //write response channel
    input [AWID_WIDTH-1:0] BID;
    input [1:0] BRESP;
    input BVALID;
    output BREADY;

    output wfi;

endinterface
