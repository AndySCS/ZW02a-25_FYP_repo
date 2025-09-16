`include "define.v"
module moduleName (
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
    // internal interfaces
    axi_rd_last,

    axi_rd_vld,
    axi_rd_addr,
    axi_rd_data,
    axi_rd_strb,
    axi_rd_region,
    sram_rd_done
);

     //parameter
    parameter ARID_WIDTH = 8;
    parameter ARARRD_WIDTH = 12;
    parameter RDATA_WIDTH = 32;
    parameter RSTRB_WIDTH = 4; // should be WDATA_WIDTH/4

    //A10.3
    input clk;
    input rst_n;
    //addreass read channel
    input ARID;
    input ARADDR;
    input[7:0] ARLEN;
    input[2:0] ARSIZE;
    input[1:0] ARBURST;
    input[1:0] ARREGION;
    input ARVALID;
    output ARREADY;

    //read interface
    output[ARID_WIDTH-1:0] RID,
    output[ARDATA_WIDTH-1:0] RDATA,
    output[1:0] RRESP,
    output RLAST,
    output RVALID,
    input RREADY,

    // internal interfaces
    input axi_rd_last,
    //the read data that from ram
    input axi_rd_ram_data;

  
    
    wire axi_rd_begin;

    //read addr channel define
    wire[7:0] axi_rd_ac_len;
    wire[2:0] axi_rd_ac_size;
    wire[1:0] axi_rd_ac_burst;
    wire[ARARRD_WIDTH:0] axi_rd_ac_addr;
    wire[ARID_WIDTH:0] axi_rd_ac_id;
    wire[1:0]axi_rd_ac_region;
    //read addr channel next define
    wire[7:0] axi_rd_len_nxt;
    wire[2:0] axi_rd_size_nxt;
    wire[1:0] axi_rd_burst_nxt;
    wire[ARARRD_WIDTH:0] axi_rd_addr_nxt;
    wire[ARID_WIDTH:0] axi_rd_id_nxt;
    wire[1:0] axi_rd_region_nxt;


    wire rvld_nxt;

    //A3.2.1                                 
    assign axi_rd_begin = ARVALID & ARREADY; //transfer only occur when both vld & rdy    
    assign arready_nxt = ~axi_rd_begin | axi_rd_done; // pull down the arready after begin / pull high when the read is done
    DFFRE ff_arready (.clk(clk), .rst(rst_n), .en(arready_nxt) .d(arready_nxt), .q(ARREADY));
    //change to use DFFE if and only if meet the above arready_nxt cond
    
    //read doing define
    assign axi_rd_doing_nxt = axi_rd_begin | ~axi_rd_finish;
    assign axi_rd_doing_en = axi_rd_begin | axi_rd_finish; // only change the rd_doing when read begin/ read finish
    assign axi_rd_finish = (~(|axi_rd_cnt) | WLAST) & axi_wr_doing & axi_wr_received; //received last transaction
    assign axi_rd_finish_status_nxt = axi_wr_finish | axi_wr_finish_status & ~axi_transfer_done;
    assign axi_rd_finish_status_en = axi_wr_doing_en | axi_transfer_done;
    DFFE ff_rd_doing (.clk(clk), .en(axi_rd_doing_en), .d(axi_rd_doing_nxt), .q(axi_rd_doing));

    

    //A3.2.2
    //final read burst                                                          
    assign axi_rd_finish = RLAST;

    //A3.4.1
    //adress channel element assignment

    //Burst length
    assign axi_rd_ac_len_nxt = axi_rd_doing ? axi_rd_ac_len : ARLEN;
    //Burst size
    assign axi_rd_ac_size_nxt = axi_rd_doing ? axi_rd_ac_size : ARSIZE;
    //Burst type
    assign axi_rd_ac_burst_nxt = axi_rd_doing ? axi_rd_ac_burst : (&ARBURST | ARBURST[1]) ? `ARBURST_MAX : ARBURST;
    //BRUST addr
    assign axi_rd_ac_channel_addr_nxt = axi_rd_doing ? axi_rd_ac_channel_addr : ARADDR;
    //BURST id
    assign axi_rd_ac_id_nxt = axi_rd_doing ? axi_rd_ac_id : ARID;
    //BURST region 
    assign axi_rd_ac_region_nxt = axi_rd_doing ? axi_rd_ac_region : ARREGION;

    //ff for next cycle
    DFFE  #(.WIDTH(8))              ff_axi_rd_len       (.clk(clk), .en(ARVALID), .d(axi_rd_len_nxt),    .q(axi_rd_len));
    DFFE  #(.WIDTH(3))              ff_axi_rd_size      (.clk(clk), .en(ARVALID), .d(axi_rd_size_nxt),   .q(axi_rd_size));
    DFFE  #(.WIDTH(2))              ff_axi_rd_burst     (.clk(clk), .en(ARVALID), .d(axi_rd_burst_nxt),  .q(axi_rd_burst)); 
    DFFE  #(.WIDTH(ARARRD_WIDTH))   ff_axi_rd_addr      (.clk(clk), .en(ARVALID), .d(axi_rd_addr_nxt),   .q(axi_rd_addr));
    DFFE  #(.WIDTH(ARID_WIDTH))     ff_axi_rd_id        (.clk(clk), .en(ARVALID), .d(axi_rd_id_nxt),     .q(axi_rd_id));
    DFFE  #(.WIDTH(2))              ff_axi_rd_region    (.clk(clk), .en(ARVALID), .d(axi_rd_region_nxt), .q(axi_rd_region));

    //read channel 
    assign axi_rd_transfer_done = oram_rd_done;
    assign axi_rd_recived = (RREADY & RVLIAD & axi_rd_doing); //only receive read data when received valid address read
    assign rvld_nxt = ~axi_rd_recived | axi_rd_transfer_done; 
    DFFE #(.WIDTH(1)) ff_rvld  (.clk(clk), .en(rst_n), .d(rvld_nxt), .q(RVALID)); //after reset rvld must be low  :A3.1.2
    
    //rid get from the above adress channel
    assign RID = axi_rd_ac_id;
    //rdata get from read data from the dout of the ram
    assign RDATA = axi_rd_ram_data; 
    //TODO count back the the rd_data with burst and len
    //TODO how to define ram last
    assign RLAST = axi_rd_ram_last; 

    //read response
    assign slverr_allowed = ~RRESP[1];
    assign rresp_next = axi_read_begin ? 2'b00  
                        : slverr_allowed ? `AXI_SLVERR : RRESP; `   
    assign rresp_en = axi_transfer_done_read | axi_read_begin;
    DFFE #(.WIDTH(2)) ff_rresp (.clk(clk), .en(rresp_en), .d(rresp_nxt), .q(RRESP));


endmodule