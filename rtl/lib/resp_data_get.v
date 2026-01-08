module resp_data_get(
    in_num,
    in,
    out
);

    input [2:0] in_num;
    input [255:0] in;
    output reg [31:0] out;

    always @(*) begin
        case (in_num)
            3'b000 : out <= in[31:0];
            3'b001 : out <= in[63:32];
            3'b010 : out <= in[95:64];
            3'b011 : out <= in[127:96];
            3'b100 : out <= in[159:128];
            3'b101 : out <= in[191:160];
            3'b110 : out <= in[223:192];
            3'b111 : out <= in[255:224];
            default: out <= {32{1'bx}};
        endcase
    end

endmodule