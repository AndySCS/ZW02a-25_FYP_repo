module axi_abritrator (
    input clk,
    input rst_n,
    input wfi, //signal from core to indicate that it is waiting for an interrupt, and thus should prioritize reads from the uart over writes to the tpu

    input [`AWID_WIDTH-1:0]   tpu_AWID,
    input [`AWADDR_WIDTH-1:0] tpu_AWADDR,
    input [7:0] tpu_AWLEN,
    input [2:0] tpu_AWSIZE,
    input [1:0] tpu_AWBURST,
    input [3:0] tpu_AWREGION,
    input tpu_AWVALID,
    output tpu_AWREADY,

    //address write channel 
    input [`AWID_WIDTH-1:0]   tpu_ARID,
    input [`AWADDR_WIDTH-1:0] tpu_ARADDR,
    input [7:0] tpu_ARLEN,
    input [2:0] tpu_ARSIZE,
    input [1:0] tpu_ARBURST,
    input [3:0] tpu_ARREGION,
    input tpu_ARVALID,
    output tpu_ARREADY,
    
    //write data channel
    input [`WDATA_WIDTH-1:0] tpu_WDATA,
    input [`WSTRB_WIDTH-1:0] tpu_WSTRB,
    input tpu_WLAST,
    input tpu_WVALID,
    output tpu_WREADY,

    //read data channel
    output [`AWID_WIDTH-1:0] tpu_RID,
    output [`WDATA_WIDTH-1:0] tpu_RDATA,
    output [1:0] tpu_RRESP,
    output tpu_RLAST,
    output tpu_RVALID,
    input tpu_RREADY, 
    //write response channel
    output [`AWID_WIDTH-1:0] tpu_BID,
    output [1:0] tpu_BRESP,
    output tpu_BVALID,
    input tpu_BREADY,

    input [`AWID_WIDTH-1:0]   uart_AWID,
    input [`AWADDR_WIDTH-1:0] uart_AWADDR,
    input [7:0] uart_AWLEN,
    input [2:0] uart_AWSIZE,
    input [1:0] uart_AWBURST,
    input [3:0] uart_AWREGION,
    input uart_AWVALID,
    output uart_AWREADY,

    //address write channel 
    input [`AWID_WIDTH-1:0]   uart_ARID,
    input [`AWADDR_WIDTH-1:0] uart_ARADDR,
    input [7:0] uart_ARLEN,
    input [2:0] uart_ARSIZE,
    input [1:0] uart_ARBURST,
    input [3:0] uart_ARREGION,
    input uart_ARVALID,
    output uart_ARREADY,
    
    //write data channel
    input [`WDATA_WIDTH-1:0] uart_WDATA,
    input [`WSTRB_WIDTH-1:0] uart_WSTRB,
    input uart_WLAST,
    input uart_WVALID,
    output uart_WREADY,

    //read data channel
    output [`AWID_WIDTH-1:0] uart_RID,
    output [`WDATA_WIDTH-1:0] uart_RDATA,
    output [1:0] uart_RRESP,
    output uart_RLAST,
    output uart_RVALID,
    input uart_RREADY, 
    //write response channel
    output [`AWID_WIDTH-1:0] uart_BID,
    output [1:0] uart_BRESP,
    output uart_BVALID,
    input uart_BREADY,

    //address write channel 
    output [`AWID_WIDTH-1:0] AWID,
    output [`AWADDR_WIDTH-1:0] AWADDR,
    output [7:0] AWLEN,
    output [2:0] AWSIZE,
    output [1:0] AWBURST,
    output [3:0] AWREGION,
    output  AWVALID,
    input AWREADY,

    //address write channel 
    output [`AWID_WIDTH-1:0] ARID,
    output [`AWADDR_WIDTH-1:0] ARADDR,
    output [7:0] ARLEN,
    output [2:0] ARSIZE,
    output [1:0] ARBURST,
    output [3:0] ARREGION,
    output  ARVALID,
    input ARREADY,

    //write data channel
    output [`WDATA_WIDTH-1:0] WDATA,
    output [`WSTRB_WIDTH-1:0] WSTRB,
    output WLAST,
    output WVALID,
    input WREADY,

    //read data channel
    input [`AWID_WIDTH-1:0] RID,
    input [`WDATA_WIDTH-1:0] RDATA,
    input [1:0] RRESP,
    input RLAST,
    input RVALID,
    output RREADY, 
    //write response channel
    input [`AWID_WIDTH-1:0] BID,
    input [1:0] BRESP,
    input BVALID,
    output BREADY
);

    assign BREADY = wfi ? uart_BREADY : tpu_BREADY;
    assign RREADY = wfi ? uart_RREADY : tpu_RREADY;

    assign tpu_ARREADY = wfi ? 1'b0 : ARREADY; 
    assign tpu_AWREADY = wfi ? 1'b0 : AWREADY;
    assign uart_ARREADY = wfi ? ARREADY : 1'b0; 
    assign uart_AWREADY = wfi ? AWREADY : 1'b0; 
    assign uart_WREADY = wfi ? WREADY : 1'b0; 
    assign tpu_WREADY = wfi ? WREADY : 1'b0; 


    assign AWVALID = wfi ? uart_AWVALID : tpu_AWVALID;
    assign ARVALID = wfi ? uart_ARVALID : tpu_ARVALID;
    assign WVALID = wfi ? uart_WVALID : tpu_WVALID;

    assign AWID = wfi ? uart_AWID : tpu_AWID;
    assign AWADDR = wfi ? uart_AWADDR : tpu_AWADDR;
    assign AWLEN = wfi ? uart_AWLEN : tpu_AWLEN;
    assign AWSIZE = wfi ? uart_AWSIZE : tpu_AWSIZE;
    assign AWBURST = wfi ? uart_AWBURST : tpu_AWBURST;
    assign AWREGION = wfi ? uart_AWREGION : tpu_AWREGION;

    assign WDATA = wfi ? uart_WDATA : tpu_WDATA;
    assign WSTRB = wfi ? uart_WSTRB : tpu_WSTRB;
    assign WLAST = wfi ? uart_WLAST : tpu_WLAST;

    assign uart_RID = ARID;
    assign uart_RDATA = RDATA;
    assign uart_RRESP = RRESP;
    assign uart_RLAST = RLAST;
    assign uart_RVALID = RVALID & wfi;
    assign uart_BID = BID;
    assign uart_BRESP = BRESP;
    assign uart_BVALID = BVALID & wfi;

    assign tpu_RID = ARID;
    assign tpu_RDATA = RDATA;
    assign tpu_RRESP = RRESP;
    assign tpu_RLAST = RLAST;
    assign tpu_RVALID = RVALID & ~wfi;
    assign tpu_BID = BID;
    assign tpu_BRESP = BRESP;
    assign tpu_BVALID = BVALID & ~wfi;

endmodule