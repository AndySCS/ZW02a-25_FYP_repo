`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 11:48:22 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
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
    
    tpu top_tpu (
    .clk        (clk),
    .rst_n      (rst_n),
    .start_vld  (start_vld),
    .start_addr (start_addr),
    .wfi        (wfi)
  );
  
endmodule
