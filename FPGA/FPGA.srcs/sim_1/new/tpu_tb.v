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
  reg rst_n_in = 0;
  reg start_vld_in = 0;
  reg [11:0] start_addr = 12'h000;
  wire wfi;

  // Instantiate the DUT
  tpu top_tpu (
    .clk        (clk),
    .rst_n_in      (rst_n_in),
    .start_vld_in  (start_vld_in),
    //.start_addr (start_addr),
    .wfi        (wfi)
  );

  // Clock generator (50% duty cycle, 100 MHz by default with #5 time units)
  always #5 clk = ~clk;

  // Stimulus
  initial begin
    // Initialize
    rst_n_in      = 0;
    start_vld_in  = 0;
    //start_addr = 12'h0;

    // Apply reset
    #20;
    rst_n_in = 1;

    // Wait a couple of clock edges
    repeat (3) @(posedge clk);
    rst_n_in = 0;

    // Example stimulus: issue a start with a 12-bit address
    start_vld_in  = 1;
    //start_addr = 12'h0;
    repeat (2000000) @(posedge clk);
    start_vld_in  = 0;
    // End simulation
    //$finish;
  end

  // Optional: simple monitor to print signals each clock
  always @(posedge clk) begin
  $display(" cnt=%0d ", top_tpu.u_start_vld.cnt_debounce);
    //$display("time=%0t clk=%0b rst_n=%0b start_vld=%0b addr=%h wfi=%0b",
             //$time, clk, rst_n, start_vld, start_addr, wfi);
        if(top_tpu.u_lsu.axi_lsu_rvld)begin
            $display("rid=%h addr=%h rdata=%0h ", top_tpu.u_lsu.axi_lsu_rid, top_tpu.u_lsu.axi_lsu_sram_addr, top_tpu.u_lsu.axi_lsu_rdata);
            
        end
    end
endmodule