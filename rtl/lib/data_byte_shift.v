module data_byte_shift(
    in,
    offset,
    out
);
    input [127:0] in;
    input [3:0]   offset;
    output reg [127:0] out;
 
    always @(*) begin
        case(offset)
            4'b0000 : out <= in;
            4'b0001 : out <= {in[7:0], in[127:8]};
            4'b0010 : out <= {in[15:0], in[127:16]};
            4'b0011 : out <= {in[23:0], in[127:24]};
            4'b0100 : out <= {in[31:0], in[127:32]};
            4'b0101 : out <= {in[39:0], in[127:40]};
            4'b0110 : out <= {in[47:0], in[127:48]};
            4'b0111 : out <= {in[55:0], in[127:56]};
            4'b1000 : out <= {in[63:0], in[127:64]};
            4'b1001 : out <= {in[71:0], in[127:72]};
            4'b1010 : out <= {in[79:0], in[127:80]};
            4'b1011 : out <= {in[87:0], in[127:88]};
            4'b1100 : out <= {in[95:0], in[127:96]};
            4'b1101 : out <= {in[103:0], in[127:104]};
            4'b1110 : out <= {in[111:0], in[127:112]};
            4'b1111 : out <= {in[119:0], in[127:120]};
            default : out <= in;
        endcase 
    end

endmodule

