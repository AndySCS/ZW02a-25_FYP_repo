`timescale 10ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2026 03:11:30 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb(
    );
  // DUT signals
  reg clk = 0;
  reg rst_n = 1;
  reg start_vld = 0;
  reg [11:0] start_addr = 12'h000;
  wire wfi;

  // Instantiate the DUT
  tpu top_tpu (
    .clk        (clk),
    .rst_n      (rst_n),
    .start_vld  (start_vld),
    .start_addr (start_addr),
    .wfi        (wfi)
  );

  // Clock generator (50% duty cycle, 100 MHz by default with #5 time units)
  always #5 clk = ~clk;

  // Stimulus
  initial begin
    // Initialize
    rst_n      = 0;
    start_vld  = 0;
    start_addr = 12'h1;
    

    // Apply reset
    #20;
    rst_n = 1;

    // Wait a couple of clock edges
    repeat (3) @(posedge clk);

    // Example stimulus: issue a start with a 12-bit address
    start_vld  = 1;
    start_addr = 12'h0;
    @(posedge clk);
    start_vld  = 0;

    // Observe for some cycles
    repeat (50) @(posedge clk);

    // End simulation
    //$finish;
  end

  // Optional: simple monitor to print signals each clock
  always @(posedge clk) begin
    $display("time=%0t clk=%0b rst_n=%0b start_vld=%0b addr=%h wfi=%0b",
             $time, clk, rst_n, start_vld, start_addr, wfi);
  end

    
endmodule