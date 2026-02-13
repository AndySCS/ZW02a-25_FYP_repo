
module harness;

    reg clk;
    wire rst_n;
    wire start_vld;
    wire [11:0] start_addr;
    wire wfi;
    
    wire [`AWID_WIDTH-1:0] AWID;
    wire [`AWADDR_WIDTH-1:0] AWADDR;
    wire [7:0] AWLEN;
    wire [2:0] AWSIZE;
    wire [1:0] AWBURST;
    wire [3:0] AWREGION;
    wire  AWVALID;
    wire AWREADY;

    //write data channel
    wire [`WDATA_WIDTH-1:0] WDATA;
    wire [`WSTRB_WIDTH-1:0] WSTRB;
    wire WLAST;
    wire WVALID;
    wire WREADY;

    //write response channel
    wire [`AWID_WIDTH-1:0] BID;
    wire [1:0] BRESP;
    wire BVALID;
    wire BREADY;
    
    wire [`AWID_WIDTH-1:0] ARID;
    wire [`AWADDR_WIDTH-1:0] ARADDR;
    wire [7:0] ARLEN;
    wire [2:0] ARSIZE;
    wire [1:0] ARBURST;
    wire [3:0] ARREGION;
    wire ARVALID;
    wire ARREADY;

    wire [`AWID_WIDTH-1:0] RID;
    wire [`WDATA_WIDTH-1:0] RDATA;
    wire [1:0] RRESP;
    wire RLAST;
    wire RVALID;
    wire RREADY; 

    top_intf top_if(
        .clk(clk),
        .rst_n(rst_n),
        .start_vld(start_vld),
        .start_addr(start_addr),
        .wfi(wfi)
    );

    axi_rd_intf axi_rd_if(
        .clk(clk),
        .rst_n(rst_n),
        .ARID(ARID),
        .ARADDR(ARADDR),
        .ARLEN(ARLEN),
        .ARSIZE(ARSIZE),
        .ARBURST(ARBURST),
        .ARREGION(ARREGION),
        .ARVALID(ARVALID),
        .ARREADY(ARREADY),
        .RID(RID),
        .RDATA(RDATA),
        .RRESP(RRESP),
        .RLAST(RLAST),
        .RVALID(RVALID),
        .RREADY(RREADY)
    );

    axi_wr_intf axi_wr_if(
        .clk(clk),
        .rst_n(rst_n),
        .AWID(AWID),
        .AWADDR(AWADDR),
        .AWLEN(AWLEN),
        .AWSIZE(AWSIZE),
        .AWBURST(AWBURST),
        .AWREGION(AWREGION),
        .AWVALID(AWVALID),
        .AWREADY(AWREADY),
        .WDATA(WDATA),
        .WSTRB(WSTRB),
        .WLAST(WLAST),
        .WVALID(WVALID),
        .WREADY(WREADY),
        .BID(BID),
        .BRESP(BRESP),
        .BVALID(BVALID),
        .BREADY(BREADY)
    );
   
    tpu u_tpu(
        .clk(clk),
        .rst_n(rst_n),
        .start_vld(start_vld),
        .start_addr(start_addr),
        .wfi(wfi),
        // waddr interface
        .AWID(AWID),
        .AWADDR(AWADDR),
        .AWLEN(AWLEN),
        .AWSIZE(AWSIZE),
        .AWBURST(AWBURST),
        .AWREGION(AWREGION),
        .AWVALID(AWVALID),
        .AWREADY(AWREADY),
        .ARID(ARID),
        .ARADDR(ARADDR),
        .ARLEN(ARLEN),
        .ARSIZE(ARSIZE),
        .ARBURST(ARBURST),
        .ARREGION(ARREGION),
        .ARVALID(ARVALID),
        .ARREADY(ARREADY),
        // wdata interface
        .WDATA(WDATA),
        .WSTRB(WSTRB),
        .WLAST(WLAST),
        .WVALID(WVALID),
        .WREADY(WREADY),
        // read interface
        .RID(RID),
        .RDATA(RDATA),
        .RRESP(RRESP),
        .RLAST(RLAST),
        .RVALID(RVALID),
        .RREADY(RREADY),
        // wresp interface
        .BID(BID),
        .BRESP(BRESP),
        .BVALID(BVALID),
        .BREADY(BREADY)
    );

    //set up config db
    initial begin
        uvm_config_db#(virtual top_intf)::set(null, "uvm_test_top.tc_env.top_agt.top_drv", "top_if", top_if);
        uvm_config_db#(virtual top_intf)::set(null, "uvm_test_top.tc_env.top_agt.top_mon", "top_if", top_if);
        uvm_config_db#(virtual top_intf)::set(null, "uvm_test_top.tc_env.top_agt.top_sqr", "top_if", top_if);
        uvm_config_db#(virtual top_intf)::set(null, "uvm_test_top.tc_env.mxu_agt.mxu_mon", "top_if", top_if);
        
        uvm_config_db#(virtual axi_rd_intf)::set(null, "uvm_test_top.tc_env.axi_rd_agt.axi_rd_drv", "axi_rd_if", axi_rd_if);
        
        uvm_config_db#(virtual axi_wr_intf)::set(null, "uvm_test_top.tc_env.axi_wr_agt.axi_wr_drv", "axi_wr_if", axi_wr_if);
        uvm_config_db#(virtual axi_wr_intf)::set(null, "uvm_test_top.tc_env.axi_wr_agt.axi_wr_mon", "axi_wr_if", axi_wr_if);
        
        uvm_config_db#(virtual mxu_intf)::set(null, "uvm_test_top.tc_env.mxu_agt.mxu_mon", "mxu_if", u_tpu.u_mxu.mxu_if);
    end
    
    initial begin
	clk <= 0;
	forever #10 clk <= ~clk;
    end

    initial begin
        run_test("tc_base");
    end

endmodule
