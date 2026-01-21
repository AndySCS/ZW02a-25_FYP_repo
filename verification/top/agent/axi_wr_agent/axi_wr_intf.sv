interface axi_wr_intf(
    clk,
    rst_n,
    AWID,
    AWADDR,
    AWLEN,
    AWSIZE,
    AWBURST,
    AWREGION,
    AWVALID,
    AWREADY,
    WDATA,
    WSTRB,
    WLAST,
    WVALID,
    WREADY,
    BID,
    BRESP,
    BVALID,
    BREADY
);

    input clk;
    input rst_n;

    input [`AWID_WIDTH-1:0] AWID;
    input [`AWADDR_WIDTH-1:0] AWADDR;
    input [7:0] AWLEN;
    input [2:0] AWSIZE;
    input [1:0] AWBURST;
    input [3:0] AWREGION;
    input  AWVALID;
    input AWREADY;

    //write data channel
    input [`WDATA_WIDTH-1:0] WDATA;
    input [`WSTRB_WIDTH-1:0] WSTRB;
    input WLAST;
    input WVALID;
    input WREADY;

    //write response channel
    input [`AWID_WIDTH-1:0] BID;
    input [1:0] BRESP;
    input BVALID;
    input BREADY;

endinterface