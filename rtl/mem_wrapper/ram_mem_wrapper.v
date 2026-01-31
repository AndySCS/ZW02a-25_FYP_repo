module ram_mem_wrapper (
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
    input [DATA_WIDTH/8-1:0]we;
    input ce;
    input [ADDR_WIDTH-1:0] addr;
    input [DATA_WIDTH-1:0] din;
    output reg [DATA_WIDTH-1:0] dout;

    wire [DATA_WIDTH-1:0] we_wide;
    reg  [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    genvar i;
    generate;
        for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
            assign we_wide[7+i*8:0+i*8] = {8{we[i]}};
        end
    endgenerate
    
    always @(posedge clk) begin
        if ((|we) & ce) begin
            mem[addr] <= (din & we_wide) | (mem[addr] & ~we_wide); // Synchronous writeqq
        end
        else if(ce) begin
            dout <= mem[addr]; // Synchronous read
        end
    end

endmodule

