`include "define.vh"

module AXI_READ_INFT(
    clk,
    rst_n,
    //read addr interface
    ARID,
    ARADDR,
    ARLEN,
    ARSIZE,
    ARBURST,
    ARREGION,
    ARVALID,
    ARREADY,
    //read interface
    RID,
    RDATA,
    RRESP,
    RLAST,
    RVALID,
    RREADY,
    //internal interfaces
    lsu_axi_arid,
    lsu_axi_araddr,
    lsu_axi_arlen,
    lsu_axi_arsize,
    lsu_axi_arburst,
    lsu_axi_arstr,
    lsu_axi_arnum,
    lsu_axi_arvld,
    //FIXME response addr in,
    axi_lsu_rid,
    axi_lsu_rdata,
    axi_lsu_rresp,
    axi_lsu_rlast,
    axi_lsu_rvld,
    axi_lsu_rrdy
    //FIXME response addr out

);
    //parameter
    parameter ARID_WIDTH = 4;
    parameter ARADDR_WIDTH = 10;
    parameter RDATA_WIDTH = 64;
    parameter RSTRB_WIDTH = RDATA_WIDTH/8; // should be WDATA_WIDTH/8

    input clk;
    input rst_n,
    //read addr interface
    ARID,
    ARADDR,
    ARLEN,
    ARSIZE,
    ARBURST,
    ARREGION,
    ARVALID,
    ARREADY,
    //read interface
    RID,
    RDATA,
    RRESP,
    RLAST,
    RVALID,
    RREADY,
    //lsu_interface

    //lsu-axi communication interface
    input lsu_axi_arid;
    input lsu_axi_araddr;
    input lsu_axi_arlen;
    input lsu_axi_arsize;
    input lsu_axi_arburst;
    input lsu_axi_arstr;
    input lsu_axi_arnum;
    input lsu_axi_arvld;
    //FIXME response addr in;
    output axi_lsu_rid;
    output axi_lsu_rdata;
    output axi_lsu_rresp;
    output axi_lsu_rlast;
    output axi_lsu_rvld;
    output axi_lsu_rrd;
    //FIXME response addr out

    //AXI ID
    assign axi_invld = ~axi_vld;
    assign axi_alloc_en = {16{axi_alloc_vld}} & axi_alloc_ptr & axi_invld;
    assign axi_alloc_vld = lsu_axi_arvld_qual | axi_doing_st;
    assign axi_vld_nxt = axi_alloc_en | axi_vld & ~({16{lsu_resp_recv}} & axi_recv_ptr);
    assign axi_sent_nxt = {16{ARVALID_sent}} & axi_sent_ptr | axi_sent & ~axi_alloc_en;
    assign axi_recv_nxt = {16{RVALID_qual}} & BID_16 | axi_recv & ~axi_alloc_en; 
    assign axi_sent_ptr_nxt = {axi_sent_ptr[14:0], axi_sent_ptr[15]};
    assign axi_alloc_ptr_nxt = {axi_alloc_ptr[14:0], axi_alloc_ptr[15]};
    assign axi_sent_en = axi_alloc_vld | ARVALID_sent;
    assign axi_recv_en = axi_alloc_vld | RVALID_qual;

    DFFSE ff_axi_sent_ptr_lo #(.WIDTH(1))(
        .clk(clk),
        .rst_n(rst_n),
        .en(ARVALID_sent),
        .d(axi_sent_ptr_nxt[0]),
        .q(axi_sent_ptr[0])
    );
    DFFRE ff_axi_sent_ptr_lo #(.WIDTH(15))(
        .clk(clk),
        .rst_n(rst_n),
        .en(ARVALID_sent),
        .d(axi_sent_ptr_nxt[15:1]),
        .q(axi_sent_ptr[15:1])
    );

    DFFSE ff_axi_alloc_ptr_lo #(.WIDTH(1))(
        .clk(clk),
        .rst_n(rst_n),
        .en(ARVALID_alloc),
        .d(axi_alloc_ptr_nxt[0]),
        .q(axi_alloc_ptr[0])
    );
    DFFRE ff_axi_alloc_ptr_lo #(.WIDTH(15))(
        .clk(clk),
        .rst_n(rst_n),
        .en(ARVALID_alloc),
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
 
    //ADDR READ INTF
    assign axi_lsu_arrdy = |axi_vld;

    assign ARVALID = |(axi_vld & ~axi_sent);
    assign ARID_nxt = ARID + 4'b1;
    assign lsu_axi_arvld_qual = lsu_axi_arvld & axi_lsu_arrdy;
    assign ARVALID_sent = ARVALID & ARREADY;
    assign ARADDR_en = ARVALID_sent | lsu_axi_arvld_qual;
    assign ARADDR_pconst = {ARADDR_WIDTH{(arstr == 3'b000)}} & 'd16
                         | {ARADDR_WIDTH{(arstr == 3'b001)}} & 'd32
                         | {ARADDR_WIDTH{(arstr == 3'b010)}} & 'd64
                         | {ARADDR_WIDTH{(arstr == 3'b011)}} & 'd128
                         | {ARADDR_WIDTH{(arstr == 3'b100)}} & 'd156;
    assign ARADDR_add_str = ARADDR + ARADDR_pconst;
    assign ARADDR_nxt = lsu_axi_arvld_qual ? lsu_axi_araddr
                        : axi_doing_ld ? ARADDR_add_str
                        : ARADDR;
    assign ARLEN_nxt = axi_arvld_qual? lsu_axi_arlen : ARLEN;
    assign ARSIZE_nxt = axi_arvld_qual? lsu_axi_arsize : ARSIZE;
    assign ARBURST_nxt = axi_arvld_qual? lsu_axi_arburst : ARBURST;
    assign ARREGION_nxt = 4'b0;//lsu_axi_ARvld_qual? lsu_axi_ARID : ARID; 
    assign arstr_nxt = axi_ar_qual ? lsu_axi_arstr : arstr;
    assign arnum_nxt = axi_ar_qual ? lsu_axi_arnum : arnum;
    assign arcnt_nxt = axi_ar_qual ? 4'b0 : arcnt + 4'b1;
    assign arcnt_en = |axi_alloc_en;
    assign axi_doing_st = arcnt < arnum;

    DFFRE ff_ARID #(.WIDTH(ARID_WIDTH))(
        .clk(clk),
        .rst_n(rst_n),
        .en(ARVALID_sent),
        .d(ARID_nxt),
        .q(ARID)
    );

    DFFE ff_ARADDR #(.WIDTH(ARADDR_WIDTH))(
        .clk(clk),
        .en(ARADDR_en),
        .d(ARADDR_nxt),
        .q(ARADDR)
    );

    DFFE ff_ARLEN #(.WIDTH(8))(
        .clk(clk),
        .en(lsu_axi_arvld),
        .d(ARLEN_nxt),
        .q(ARLEN)
    );

    DFFE ff_ARSIZE #(.WIDTH(3))(
        .clk(clk),
        .en(lsu_axi_arvld),
        .d(ARSIZE_nxt),
        .q(ARSIZE)
    );

    DFFE ff_ARBURST #(.WIDTH(2))(
        .clk(clk),
        .en(lsu_axi_arvld),
        .d(ARBURST_nxt),
        .q(ARBURST)
    );
    
    DFFE ff_ARnum #(.WIDTH(4))(
        .clk(clk),
        .en(lsu_axi_arvld),
        .d(arnum_nxt),
        .q(arnum)
    );
    
    DFFE ff_ARstr #(.WIDTH(3))(
        .clk(clk),
        .en(lsu_axi_arvld),
        .d(arstr_nxt),
        .q(arstr)
    );

    assign ARREGION = 4'b0;

    //R INTF and RESP
    //what i will recive from dram 
    //1/ rid
    //2/ rdata
    //3/ rresp
    //4/ rlast
    //5/ rvld
    //qual if can send read data to LSU
    assign RVALID_qual = RVALID & RREADY;
    assign lsu_resp_recv = lsu_axi_rrdy & axi_lsu_rvld;
    //update the read resp siganl if RVALID
    assign axi_lsu_rvld_nxt = RVALID_qual | axi_lsu_rvld & ~lsu_resp_recv;
    assign axi_lsu_resp_rdata_nxt = RVALID_qual ? RDATA : axi_lsu_rdata;
    assign axi_lsu_rresp_nxt = RVALID_qual ? RRESP : axi_lsu_rresp;
    assign axi_lsu_rlast_nxt = RVALID_qual ? RLAST : axi_lsu_rlast;
    assign axi_lsu_rdata_nxt = RVALID_qual ? RDATA : axi_lsu_rdata;

    //FIXME change the RID back to the read addr 
    assign axi_lsu_resp_bid_nxt = BVALID_qual ? RID : axi_lsu_rid;
    assign RREADY = ~axi_lsu_rvld;
     
    //FIXME rid
    DFFE ff_axi_lsu_resp_rid #(.WIDTH(1))(
        .clk(clk),
        .en(RVALID),
        .d(axi_lsu_resp_rid_nxt),
        .q(axi_lsu_rid)
    );
    //rresp
    DFFE ff_axi_lsu_resp #(.WIDTH(64))(
        .clk(clk),
        .en(RVALID),
        .d(axi_lsu_rdata_nxt),
        .q(axi_lsu_rdata)
    );
    //rresp
    DFFE ff_axi_lsu_resp #(.WIDTH(2))(
        .clk(clk),
        .en(RVALID),
        .d(axi_lsu_resp_nxt),
        .q(axi_lsu_rresp)
    );
    //rlast
    DFFE ff_axi_lsu_rlast #(.WIDTH(1))(
        .clk(clk),
        .en(RVALID),
        .d(axi_lsu_rlast_nxt),
        .q(axi_lsu_rlast)
    );
    //rvld
    DFFR ff_axi_lsu_rvld #(.WIDTH(1))(
        .clk(clk),
        .rst_n(rst_n),
        .d(axi_lsu_rvld_nxt),
        .q(axi_lsu_rvld)
    ); 

endmodule