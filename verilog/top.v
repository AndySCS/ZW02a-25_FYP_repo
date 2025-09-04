module top(
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
    WVLID,
    WREADY,
    // wresp interface
    BID,
    BRESP,
    BVALID,
    BREADY
);
   
    //parameter
    parameter AWID_WIDTH = 8;
    parameter AWARRD_WIDTH = 11;
    parameter WDATA_WIDTH = 64;
    parameter WSTRB_WIDTH = WDATA_WIDTH/8; // should be WDATA_WIDTH/8
    //inout bus
    input clk;
    input rst_n;
    //address write channel 
    input [AWID_WIDTH-1:0] AWID;
    input [AWARRD_WIDTH-1:0] AWADDR;
    input [7:0] AWLEN;
    input [2:0] AWSIZE;
    input [1:0] AWBURST;
    input [3:0] AWREGION;
    input  AWVALID;
    output AWREADY;
    //write data channel
    input [WDATA_WIDTH-1:0] WDATA;
    input [WSTRB_WIDTH-1:0] WSTRB;
    input WLAST;
    //FIXME WUSER not define signal 
    //input WUSER;
    input WVLID;
    output WREADY;
    //write response channel
    output [AWID_WIDTH-1:0] BID;
    output [1:0] BRESP;
    output BVALID;
    input BREADY;
    //axi wr inft output
    wire axi_wr_vld;
    wire [AWARRD_WIDTH-1:0]axi_wr_addr;
    wire [WDATA_WIDTH-1:0]axi_wr_data;
    wire [WDATA_WIDTH-1:0]axi_wr_strb;
    wire [1:0]axi_wr_region;
    wire fifo_wr_done;
    wire fifo_err;
    wire iram_wr_done;
    wire wram_wr_done;

    AXI_WRITE_INFT #(
        .AWID_WIDTH(AWID_WIDTH),
        .AWARRD_WIDTH(AWARRD_WIDTH),
        .WDATA_WIDTH(WDATA_WIDTH)
    )
    u_axi_write_inft(
        .clk(clk),
        .rst_n(rst_n),
        .// waddr interface
        .AWID(AWID),
        .AWADDR(AWADDR),
        .AWLEN(AWLEN),
        .AWSIZE(AWSIZE),
        .AWBURST(AWBURST),
        .AWREGION(AWREGION),
        .AWVALID(AWVALID)
        .AWREADY(AWREADY),
        .// wdata interface
        .WDATA(WDATA),
        .WSTRB(WSTRB),
        .WLAST(WLAST),
        .WVLID(WVLID),
        .WREADY(WREADY),
        .// wresp interface
        .BID(BID),
        .BRESP(BRESP),
        .BVALID(BVALID),
        .BREADY(BREADY),
        .// internal interfaces
        .axi_wr_vld(axi_wr_vld),
        .axi_wr_addr(axi_wr_addr),
        .axi_wr_data(axi_wr_data),
        .axi_wr_strb(axi_wr_strb),
        .axi_wr_region(axi_wr_region),
        .fifo_wr_done(fifo_wr_done),
        .fifo_err(fifo_err),
        .iram_wr_done(iram_wr_done),
        .wram_wr_done(wram_wr_done)
    );

endmodule