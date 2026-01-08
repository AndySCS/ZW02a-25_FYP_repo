
module harness;

    reg clk;
    reg rst_n;
    /*
    //set up config db'
    initial begin
        uvm_config_db#(virtual mxu_intf)::set(null, "uvm_test_top.tc_env.mxu_agt.mxu_drv", "mxu_if", mxu_if);
        uvm_config_db#(virtual mxu_intf)::set(null, "uvm_test_top.tc_env.mxu_agt.mxu_imon", "mxu_if", mxu_if);
        uvm_config_db#(virtual mxu_intf)::set(null, "uvm_test_top.tc_env.mxu_agt.mxu_omon", "mxu_if", mxu_if);
        uvm_config_db#(virtual mxu_intf)::set(null, "uvm_test_top.tc_env.mxu_agt.mxu_sqr", "mxu_if", mxu_if);
    end
    //
*/

    tpu u_tpu(
        .clk(),
        .rst_n(),
        .start_vld(),
        .start_addr(),
        // waddr interface
        .AWID(),
        .AWADDR(),
        .AWLEN(),
        .AWSIZE(),
        .AWBURST(),
        .AWREGION(),
        .AWVALID(),
        .AWREADY(),
        .ARID(),
        .ARADDR(),
        .ARLEN(),
        .ARSIZE(),
        .ARBURST(),
        .ARREGION(),
        .ARVALID(),
        .ARREADY(),
        // wdata interface
        .WDATA(),
        .WSTRB(),
        .WLAST(),
        .WVALID(),
        .WREADY(),
        // read interface
        .RID(),
        .RDATA(),
        .RRESP(),
        .RLAST(),
        .RVALID(),
        .RREADY(),
        // wresp interface
        .BID(),
        .BRESP(),
        .BVALID(),
        .BREADY()
    );
    /*
    initial begin
	clk <= 0;
	forever #10 clk <= ~clk;
    end

    initial begin
	rst_n <= 0;
	#100;
	rst_n <= 1;
    end


    initial begin
        run_test("tc_base");
    end
    */
endmodule
