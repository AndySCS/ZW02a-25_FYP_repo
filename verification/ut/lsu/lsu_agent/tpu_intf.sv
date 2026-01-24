interface tpu(
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

    wire clk;
    wire rst_n;
    wire start_vld;
    wire [11:0] start_addr;
    wire [AWID_WIDTH-1:0] AWID;
    wire [AWADDR_WIDTH-1:0] AWADDR;
    wire [7:0] AWLEN;
    wire [2:0] AWSIZE;
    wire [1:0] AWBURST;
    wire [3:0] AWREGION;
    wire AWVALID;
    wire AWREADY;
    wire [AWID_WIDTH-1:0] ARID;
    wire [AWADDR_WIDTH-1:0] ARADDR;
    wire [7:0] ARLEN;
    wire [2:0] ARSIZE;
    wire [1:0] ARBURST;
    wire [3:0] ARREGION;
    wire ARVALID;
    wire ARREADY;
    wire [WDATA_WIDTH-1:0] WDATA;
    wire [WSTRB_WIDTH-1:0] WSTRB;
    wire WLAST;
    wire WVALID;
    wire WREADY;
    wire [AWID_WIDTH-1:0] RID;
    wire [WDATA_WIDTH-1:0] RDATA;
    wire [1:0] RRESP;
    wire RLAST;
    wire RVALID;
    wire RREADY; 
    wire [AWID_WIDTH-1:0] BID;
    wire [1:0] BRESP;
    wire BVALID;
    wire BREADY;
    wire wfi;

endinterface