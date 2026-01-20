interface axi_rd_intf(
    clk,
    rst_n,
    ARID,
    ARADDR,
    ARLEN,
    ARSIZE,
    ARBURST,
    ARREGION,
    ARVALID,
    ARREADY,
    RID,
    RDATA,
    RRESP,
    RLAST,
    RVALID,
    RREADY,
);

    input clk;
    input rst_n;

    input [AWID_WIDTH-1:0] ARID;
    input [AWADDR_WIDTH-1:0] ARADDR;
    input [7:0] ARLEN;
    input [2:0] ARSIZE;
    input [1:0] ARBURST;
    input [3:0] ARREGION;
    input  ARVALID;
    input ARREADY;

    input [AWID_WIDTH-1:0] RID;
    input [WDATA_WIDTH-1:0] RDATA;
    input [1:0] RRESP;
    input RLAST;
    input RVALID;
    input RREADY; 

endinterface