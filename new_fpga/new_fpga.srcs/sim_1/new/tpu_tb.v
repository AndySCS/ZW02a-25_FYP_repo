`timescale 10ns / 1ns
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
    repeat (30) @(posedge clk);
    rst_n_in = 0;
    repeat (10) @(posedge clk);
    // Example stimulus: issue a start with a 12-bit address
    start_vld_in  = 1;
    //start_addr = 12'h0;
    repeat (1) @(posedge clk);
    //repeat (65535) @(posedge clk);
    start_vld_in  = 0;
    // End simulation
    //$finish;
  end

  // Optional: simple monitor to print signals each clock
  always @(posedge clk) begin
  //$display(" cnt=%1d, state=%1b ", top_tpu.get_start_vld.count,top_tpu.get_start_vld.state);
    //$display("time=%0t clk=%0b rst_n=%0b start_vld=%0b addr=%h wfi=%0b",
             //$time, clk, rst_n, start_vld, start_addr, wfi);
        //if(top_tpu.u_lsu.axi_lsu_rvld)begin
        //    $display("rdata=%0h ", top_tpu.u_lsu.axi_lsu_rdata);
        //end
        //if(top_tpu.axi_lsu_rvld & top_tpu.lsu_axi_rrdy)begin
            //$display("rid=%0h addr=%0h rdata=%0h ", top_tpu.u_lsu.axi_lsu_rid, top_tpu.u_lsu.axi_lsu_dram_addr, top_tpu.u_lsu.axi_lsu_rdata);
            //$display("rid=%0h rdata=%0h ", top_tpu.external_mem.s_axi_rid,  top_tpu.external_mem.s_axi_rdata);        
            //$display("rid=%0h rdata=%0h ", top_tpu.external_mem.s_axi_rid,  top_tpu.external_mem.s_axi_rdata); 
            //$display("rid=%0h rdata=%0h ", top_tpu.axi_lsu_rid,  top_tpu.axi_lsu_rdata); 
        //end
        //if(top_tpu.lsu_mxu_conv_vld)begin
        //     $display("new_mxu_conv");
        //     $display("iram_vld=%0h iram_pld=%0h wram_vld=%0h wram_pld=%0h", top_tpu.lsu_mxu_iram_vld,top_tpu.lsu_mxu_iram_pld,top_tpu.lsu_mxu_wram_vld,top_tpu.lsu_mxu_wram_pld);     
        //end
        
        //if((|top_tpu.lsu_mxu_iram_vld) | (|top_tpu.lsu_mxu_wram_vld))begin
        //    $display("iram_vld=%0h iram_pld=%0h wram_vld=%0h wram_pld=%0h", top_tpu.lsu_mxu_iram_vld,top_tpu.lsu_mxu_iram_pld,top_tpu.lsu_mxu_wram_vld,top_tpu.lsu_mxu_wram_pld);     
        //end
    end
endmodule
