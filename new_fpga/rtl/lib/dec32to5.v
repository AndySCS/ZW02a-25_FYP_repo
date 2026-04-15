module dec32to5(
    in,
    out
);

    input [31:0] in;
    output reg [4:0] out;

    always @(*) begin
        case (in)
            'b1xxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b11111; 
            'b01xx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b11110;
            'b001x_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b11101; 
            'b0001_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b11100; 
            'b0000_1xxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b11011; 
            'b0000_01xx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b11010; 
            'b0000_001x_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b11001; 
            'b0000_0001_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b11000; 
            
            'b0000_0000_1xxx_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b10111; 
            'b0000_0000_01xx_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b10110;
            'b0000_0000_001x_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b10101; 
            'b0000_0000_0001_xxxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b10100; 
            'b0000_0000_0000_1xxx_xxxx_xxxx_xxxx_xxxx : out <=  5'b10011; 
            'b0000_0000_0000_01xx_xxxx_xxxx_xxxx_xxxx : out <=  5'b10010; 
            'b0000_0000_0000_001x_xxxx_xxxx_xxxx_xxxx : out <=  5'b10001; 
            'b0000_0000_0000_00x1_xxxx_xxxx_xxxx_xxxx : out <=  5'b10000;
            
            'b0000_0000_0000_0000_1xxx_xxxx_xxxx_xxxx : out <=  5'b01111; 
            'b0000_0000_0000_0000_01xx_xxxx_xxxx_xxxx : out <=  5'b01110;
            'b0000_0000_0000_0000_001x_xxxx_xxxx_xxxx : out <=  5'b01101; 
            'b0000_0000_0000_0000_0001_xxxx_xxxx_xxxx : out <=  5'b01100; 
            'b0000_0000_0000_0000_0000_1xxx_xxxx_xxxx : out <=  5'b01011; 
            'b0000_0000_0000_0000_0000_01xx_xxxx_xxxx : out <=  5'b01010; 
            'b0000_0000_0000_0000_0000_001x_xxxx_xxxx : out <=  5'b01001; 
            'b0000_0000_0000_0000_0000_0001_xxxx_xxxx : out <=  5'b01000; 

            'b0000_0000_0000_0000_0000_0000_1xxx_xxxx : out <=  5'b00111; 
            'b0000_0000_0000_0000_0000_0000_01xx_xxxx : out <=  5'b00110;
            'b0000_0000_0000_0000_0000_0000_001x_xxxx : out <=  5'b00101; 
            'b0000_0000_0000_0000_0000_0000_0001_xxxx : out <=  5'b00100; 
            'b0000_0000_0000_0000_0000_0000_0000_1xxx : out <=  5'b00011; 
            'b0000_0000_0000_0000_0000_0000_0000_01xx : out <=  5'b00010; 
            'b0000_0000_0000_0000_0000_0000_0000_001x : out <=  5'b00001; 
            'b0000_0000_0000_0000_0000_0000_0000_0001 : out <=  5'b00000; 
            default: out <= 16'hxxxx;
        endcase
    end

endmodule