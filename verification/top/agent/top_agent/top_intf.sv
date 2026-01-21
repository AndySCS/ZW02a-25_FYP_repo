interface top_intf(
    clk,
    rst_n,
    start_vld,
    start_addr,
    wfi
);
   
    input clk;
    input rst_n;
    input start_vld;
    input [11:0] start_addr;
    input wfi;
    //parameter

endinterface