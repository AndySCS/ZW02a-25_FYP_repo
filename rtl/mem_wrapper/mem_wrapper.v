module mem_wrapper (
    clk,
    we,
    ce,
    addr,
    din,
    dout
);

parameter ADDR_WIDTH = 8;
parameter DATA_WIDTH = 16;
parameter DEPTH = 1 << ADDR_WIDTH;

input clk;
input we;
input ce;
input [ADDR_WIDTH-1:0] addr;
input [DATA_WIDTH-1:0] din;
output reg [DATA_WIDTH-1:0] dout;
reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

always @(posedge clk) begin
    if (we & ce) begin
        mem[addr] <= din;
    end
    else if(ce) begin
        dout <= mem[addr]; // Synchronous read
    end
end

endmodule
