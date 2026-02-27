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
    //read & response interface
    RID,
    RDATA,
    RRESP,
    RLAST,
    RVALID,
    RREADY,
    //lsu interface
    lsu_axi_arid,
    lsu_axi_araddr,
    lsu_axi_arlen,
    lsu_axi_arsize,
    lsu_axi_arburst,
    lsu_axi_arstr,
    lsu_axi_sram_addr,
    lsu_axi_arnum,
    lsu_axi_arvld,
    lsu_axi_rrdy,
    axi_lsu_rid,
    axi_lsu_rdata,
    axi_lsu_rresp,
    axi_lsu_rlast,
    axi_lsu_sram_addr,
    axi_lsu_dram_addr,
    axi_lsu_rvld,
    axi_lsu_arrdy,
    axi_lsu_axi_done
);
    //parameter
    parameter ARID_WIDTH = 4;
    parameter ARADDR_WIDTH = 10;
    parameter RDATA_WIDTH = 64;
    parameter RSTRB_WIDTH = RDATA_WIDTH/8; // should be WDATA_WIDTH/8
    input clk;
    input rst_n;
    //addr read channel
    output [ARID_WIDTH-1:0] ARID;
    output [ARADDR_WIDTH-1:0] ARADDR;
    output [7:0] ARLEN;
    output [2:0] ARSIZE;
    output [1:0] ARBURST;
    output [3:0] ARREGION;
    output ARVALID;
    input ARREADY;
    //read and response channel
    input [ARID_WIDTH-1:0] RID;
    input [RDATA_WIDTH-1:0] RDATA;
    input [1:0] RRESP;
    input RLAST;
    input RVALID;
    output RREADY; 
    //lsu->axi intf
    input [7:0] lsu_axi_arid;
    input [ARADDR_WIDTH-1:0] lsu_axi_araddr;
    input [7:0] lsu_axi_arlen;
    input [2:0] lsu_axi_arsize;
    input [1:0] lsu_axi_arburst;
    input [2:0] lsu_axi_arstr;
    input [11:0] lsu_axi_sram_addr;
    input [7:0] lsu_axi_arnum;
    input lsu_axi_arvld;
    input lsu_axi_rrdy;
    //axi_lsu intf
    output [7:0] axi_lsu_rid;
    output [63:0] axi_lsu_rdata;
    output [1:0] axi_lsu_rresp;
    output axi_lsu_rlast;
    output [11:0] axi_lsu_sram_addr;
    output [31:0] axi_lsu_dram_addr;
    output axi_lsu_rvld;
    output axi_lsu_arrdy;
    output axi_lsu_axi_done;

    //AXI ID
    wire        sram_en;
    wire [11:0] sram_addr      [15:0];
    wire [11:0] sram_addr_nxt;
    wire [11:0] sram_addr_cur;
    wire [31:0] dram_addr      [15:0];
    wire [31:0] dram_addr_nxt;
    wire [3:0]  ram_ptr_nxt;
    wire [3:0]  ram_ptr;
    wire [15:0] ram_addr_en;
    wire [3:0]  ram_nxt;

    wire [15:0] axi_vld;
    wire [15:0] axi_vld_nxt;
    wire [15:0] axi_alloc_en;
    wire [15:0] axi_alloc_ptr;
    wire [15:0] axi_alloc_ptr_nxt;
    wire        axi_alloc_ptr_en;
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

    //ADDR READ INTF
    wire lsu_axi_arvld_qual;
    wire ARVALID_nxt;
    wire ARVALID_sent;
    wire [ARID_WIDTH-1:0] ARID_nxt;
    wire [ARADDR_WIDTH-1:0] ARADDR_nxt;
    wire [ARADDR_WIDTH-1:0] ARADDR_pconst;
    wire [ARADDR_WIDTH-1:0] ARADDR_add_str;
    wire ARADDR_en;
    wire [7:0] ARLEN_nxt;
    wire [2:0] ARSIZE_nxt;
    wire [1:0] ARBURST_nxt;
    wire [3:0] ARREGION_nxt;
    wire [2:0] arstr;
    wire [2:0] arstr_nxt;
    wire [7:0] arnum;
    wire [7:0] arnum_nxt;
    wire axi_doing_ld;
    wire axi_doing_ld_nxt;
    wire [7:0] arcnt;
    wire [7:0] arcnt_nxt;
    wire arcnt_en;
     
    wire RVALID_qual;
    wire lsu_resp_recv;
    wire [7:0] axi_lsu_rid_nxt;
    wire [RDATA_WIDTH-1:0]axi_lsu_rdata_nxt;
    wire [1:0] axi_lsu_rresp_nxt;
    wire axi_lsu_rlast_nxt;
    wire axi_lsu_rvld_nxt;

    wire axi_rlast_cnt_en;
    wire [8:0] axi_rlast_cnt;
    wire [8:0] axi_rlast_cnt_nxt;

    wire [3:0] axi_rid;

    assign axi_invld = ~axi_vld;
    assign axi_alloc_en = {16{axi_alloc_vld}} & axi_alloc_ptr & axi_invld;
    assign axi_alloc_vld = lsu_axi_arvld_qual | axi_doing_ld;
    assign axi_vld_nxt = axi_alloc_en | axi_vld & ~({16{lsu_resp_recv}} & axi_recv_ptr);
    assign axi_sent_nxt = {16{ARVALID_sent}} & axi_sent_ptr | axi_sent & ~axi_alloc_en;
    assign axi_recv_nxt = {16{RVALID_qual}} | axi_recv & ~axi_alloc_en; 
    assign axi_sent_ptr_nxt = {axi_sent_ptr[14:0], axi_sent_ptr[15]};
    assign axi_alloc_ptr_nxt = {axi_alloc_ptr[14:0], axi_alloc_ptr[15]};
    assign axi_alloc_ptr_en  = |axi_alloc_en;
    assign axi_sent_en = axi_alloc_vld | ARVALID_sent;
    assign axi_recv_en = axi_alloc_vld | RVALID_qual;

    DFFSE #(.WIDTH(1))
    ff_axi_sent_ptr_lo(
        .clk(clk),
        .rst_n(rst_n),
        .en(ARVALID_sent),
        .d(axi_sent_ptr_nxt[0]),
        .q(axi_sent_ptr[0])
    );

    DFFRE #(.WIDTH(15))
    ff_axi_sent_ptr_hi(
        .clk(clk),
        .rst_n(rst_n),
        .en(ARVALID_sent),
        .d(axi_sent_ptr_nxt[15:1]),
        .q(axi_sent_ptr[15:1])
    );

    DFFSE #(.WIDTH(1))
    ff_axi_alloc_ptr_lo(
        .clk(clk),
        .rst_n(rst_n),
        .en(axi_alloc_ptr_en),
        .d(axi_alloc_ptr_nxt[0]),
        .q(axi_alloc_ptr[0])
    );
    DFFRE #(.WIDTH(15))
    ff_axi_alloc_ptr_hi(
        .clk(clk),
        .rst_n(rst_n),
        .en(axi_alloc_ptr_en),
        .d(axi_alloc_ptr_nxt[15:1]),
        .q(axi_alloc_ptr[15:1])
    );
    
    DFFR #(.WIDTH(16))
    ff_axi_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(axi_vld_nxt),
        .q(axi_vld)
    );
    DFFRE #(.WIDTH(16))
    ff_axi_sent(
        .clk(clk),
        .rst_n(rst_n),
        .en(axi_sent_en),
        .d(axi_sent_nxt),
        .q(axi_sent)
    );
    DFFRE #(.WIDTH(16))
    ff_axi_recv(
        .clk(clk),
        .rst_n(rst_n),
        .en(axi_recv_en),
        .d(axi_recv_nxt),
        .q(axi_recv)
    );

    assign axi_lsu_arrdy = ~(|axi_vld);

    assign ARVALID = |(axi_vld & ~axi_sent);
    assign ARID_nxt = ARVALID_sent ? ARID + 4'b1 : ARID;
    assign lsu_axi_arvld_qual = lsu_axi_arvld & axi_lsu_arrdy;
    assign ARVALID_sent = ARVALID & ARREADY;
    assign ARADDR_en = ARVALID_sent | lsu_axi_arvld_qual;
    assign ARADDR_pconst = 32'b1 << ARSIZE;
    assign ARADDR_add_str = ARADDR + ARADDR_pconst;
    assign ARADDR_nxt = lsu_axi_arvld_qual ? lsu_axi_araddr
                        : axi_doing_ld ? ARADDR_add_str
                        : ARADDR;
    assign ARLEN_nxt = lsu_axi_arvld_qual? lsu_axi_arlen : ARLEN;
    assign ARSIZE_nxt = lsu_axi_arvld_qual? lsu_axi_arsize : ARSIZE;
    assign ARBURST_nxt = lsu_axi_arvld_qual? lsu_axi_arburst : ARBURST;
    assign ARREGION_nxt = 4'b0;//lsu_axi_ARvld_qual? lsu_axi_ARID : ARID;
    assign arnum_nxt = lsu_axi_arvld_qual ? lsu_axi_arnum : arnum;
    assign arstr_nxt = lsu_axi_arvld_qual ? lsu_axi_arstr : arstr;
    assign arcnt_nxt = lsu_axi_arvld_qual ? 8'b0 : arcnt + 8'b1;
    assign arcnt_en = |axi_alloc_en;
    assign axi_doing_ld = arcnt < arnum;

    assign ram_ptr_nxt = ram_ptr + 4'b1;
    assign sram_addr_nxt = lsu_axi_arvld_qual ? lsu_axi_sram_addr : sram_addr_cur + 12'd16;
    assign dram_addr_nxt = lsu_axi_arvld_qual ? lsu_axi_araddr : ARADDR_add_str;
    assign ram_addr_en = axi_alloc_en;

    genvar i;
    generate;
        for(i = 0; i < 16; i=i+1)begin

            //assign ram_addr_en[i] = (ARVALID_sent) & (ram_ptr == i);

            DFFE #(.WIDTH(12))
            ff_sram_addr (
                .clk(clk),
                .en(ram_addr_en[i]),
                .d(sram_addr_nxt),
                .q(sram_addr[i])
            );
            
            DFFE #(.WIDTH(32))
            ff_dram_addr (
                .clk(clk),
                .en(ram_addr_en[i]),
                .d(dram_addr_nxt),
                .q(dram_addr[i])
            );

        end
    endgenerate
   
    assign sram_en = |ram_addr_en;
    assign ram_nxt = lsu_axi_arvld_qual ? 4'b0 : ram_ptr + 4'b1;

    DFFE #(.WIDTH(12))
    ff_sram_addr_cur (
        .clk(clk),
        .en(sram_en),
        .d(sram_addr_nxt),
        .q(sram_addr_cur)
    );

    DFFE #(.WIDTH(4))
    ff_ram_ptr (
        .clk(clk),
        .en(sram_en),
        .d(ram_nxt),
        .q(ram_ptr)
    );

    DFFRE #(.WIDTH(ARID_WIDTH))
    ff_ARID (
        .clk(clk),
        .rst_n(rst_n),
        .en(ARVALID_sent),
        .d(ARID_nxt),
        .q(ARID)
    );

    DFFRE #(.WIDTH(ARADDR_WIDTH))
    ff_ARADDR (
        .clk(clk),
	.rst_n(rst_n),
        .en(ARADDR_en),
        .d(ARADDR_nxt),
        .q(ARADDR)
    );

    DFFRE #(.WIDTH(8))
    ff_ARLEN (
        .clk(clk),
	.rst_n(rst_n),
        .en(lsu_axi_arvld),
        .d(ARLEN_nxt),
        .q(ARLEN)
    );

    DFFRE #(.WIDTH(3))
    ff_ARSIZE (
        .clk(clk),
	.rst_n(rst_n),
        .en(lsu_axi_arvld),
        .d(ARSIZE_nxt),
        .q(ARSIZE)
    );

    DFFRE #(.WIDTH(2))
    ff_ARBURST (
        .clk(clk),
	.rst_n(rst_n),
        .en(lsu_axi_arvld),
        .d(ARBURST_nxt),
        .q(ARBURST)
    );
    
    DFFRE #(.WIDTH(8))
    ff_arnum (
        .clk(clk),
	.rst_n(rst_n),
        .en(lsu_axi_arvld),
        .d(arnum_nxt),
        .q(arnum)
    );
    
    DFFRE #(.WIDTH(3))
    ff_arstr (
        .clk(clk),
	.rst_n(rst_n),
        .en(lsu_axi_arvld),
        .d(arstr_nxt),
        .q(arstr)
    );
    
    DFFRE #(.WIDTH(8))
    ff_arcnt (
        .clk(clk),
	.rst_n(rst_n),
        .en(arcnt_en),
        .d(arcnt_nxt),
        .q(arcnt)
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
    assign axi_lsu_rvld_nxt = RVALID_qual | axi_lsu_rvld & ~lsu_axi_rrdy;
    assign axi_lsu_rresp_nxt = RVALID_qual ? RRESP : axi_lsu_rresp;
    assign axi_lsu_rlast_nxt = RVALID_qual ? RLAST : axi_lsu_rlast;
    assign axi_lsu_rdata_nxt = RVALID_qual ? RDATA : axi_lsu_rdata;

    //FIXME change the RID back to the read addr 
    assign axi_lsu_rid_nxt = RVALID_qual ? RID : axi_lsu_rid;
    assign RREADY = ~axi_lsu_rvld;
    //assign RREADY = 1'b1;

    wire[15:0] axi_recv_ptr_raw; 

    dec4to16 resp_RID_dec(.in(axi_rid), .out(axi_recv_ptr_raw));
    assign axi_recv_ptr = {16{axi_lsu_rlast}} & axi_recv_ptr_raw;

    assign axi_lsu_sram_addr = sram_addr[axi_rid];
    assign axi_lsu_dram_addr = dram_addr[axi_rid];
    assign axi_rlast_cnt_en = RVALID_qual | lsu_axi_arvld_qual;
    assign axi_rlast_cnt_nxt = lsu_axi_arvld_qual ? 9'b0 
                             : RVALID_qual & RLAST ? axi_rlast_cnt + 9'b1 
                             : axi_rlast_cnt;

    assign axi_lsu_axi_done = (axi_rlast_cnt > arnum);

    //FIXME rid
    DFFRE #(.WIDTH(8))
    ff_axi_lsu_rid (
        .clk(clk),
        .rst_n(rst_n),
        .en(RVALID),
        .d(axi_lsu_rid_nxt),
        .q(axi_lsu_rid)
    );
    //rdata
    DFFRE #(.WIDTH(64))
    ff_axi_lsu_rdata (
        .clk(clk),
        .rst_n(rst_n),
        .en(RVALID),
        .d(axi_lsu_rdata_nxt),
        .q(axi_lsu_rdata)
    );
    //rresp
    DFFRE #(.WIDTH(2))
    ff_axi_lsu_resp (
        .clk(clk),
        .rst_n(rst_n),
        .en(RVALID),
        .d(axi_lsu_rresp_nxt),
        .q(axi_lsu_rresp)
    );
    //rlast
    DFFRE #(.WIDTH(1))
    ff_axi_lsu_rlast (
        .clk(clk),
        .rst_n(rst_n),
        .en(RVALID),
        .d(axi_lsu_rlast_nxt),
        .q(axi_lsu_rlast)
    );
    
    DFFE #(.WIDTH(4))
    ff_axi_rid (
        .clk(clk),
        .en(RVALID_qual),
        .d(RID),
        .q(axi_rid)
    );
    
    DFFE #(.WIDTH(9))
    ff_axi_rlast_cnt (
        .clk(clk),
        .en(axi_rlast_cnt_en),
        .d(axi_rlast_cnt_nxt),
        .q(axi_rlast_cnt)
    );
    //rvld
    DFFR #(.WIDTH(1))
    ff_axi_lsu_rvld(
        .clk(clk),
        .rst_n(rst_n),
        .d(axi_lsu_rvld_nxt),
        .q(axi_lsu_rvld)
    ); 

endmodule
