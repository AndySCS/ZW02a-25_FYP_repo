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
    input [15 : 0]we;
    input ce;
    input [ADDR_WIDTH-1:0] addr;
    input [DATA_WIDTH-1:0] din;
    output reg [DATA_WIDTH-1:0] dout;

    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
    
    always @(posedge clk) begin
        if ((|we) & ce) begin
        	for (int i = 0; i < 16 ; i=i+1) begin
	   	 	    if(we[i])begin
        			for (int j = 0; j < 8 ; j=j+1) begin
            				mem[addr][(i*8)+j] <= din[(i*8)+j];
				    end
	    		end
        	end
        end
        else if(ce) begin
            dout <= mem[addr]; // Synchronous read
        end
    end

endmodule

