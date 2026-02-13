initial begin
    uvm_config_db#(virtual top_intf)::set(null, "uvm_test_top.tc_env.top_agt.top_drv", "top_if", top_if);
    uvm_config_db#(virtual top_intf)::set(null, "uvm_test_top.tc_env.top_agt.top_mon", "top_if", top_if);
    uvm_config_db#(virtual top_intf)::set(null, "uvm_test_top.tc_env.top_agt.top_sqr", "top_if", top_if);
    uvm_config_db#(virtual top_intf)::set(null, "uvm_test_top.tc_env.mxu_agt.mxu_mon", "top_if", top_if);
    
    uvm_config_db#(virtual axi_rd_intf)::set(null, "uvm_test_top.tc_env.axi_rd_agt.axi_rd_drv", "axi_rd_if", axi_rd_if);
    
    uvm_config_db#(virtual axi_wr_intf)::set(null, "uvm_test_top.tc_env.axi_wr_agt.axi_wr_drv", "axi_wr_if", axi_wr_if);
    uvm_config_db#(virtual axi_wr_intf)::set(null, "uvm_test_top.tc_env.axi_wr_agt.axi_wr_mon", "axi_wr_if", axi_wr_if);
    
    uvm_config_db#(virtual mxu_intf)::set(null, "uvm_test_top.tc_env.mxu_agt.mxu_mon", "mxu_if", mxu_if);
end