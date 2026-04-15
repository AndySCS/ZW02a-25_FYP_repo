module resp_assign(
    in_num,
    in,
    out
);

    input [2:0] in_num;
    input [31:0] in;
    output reg [255:0] out;

    always @(*) begin
        case (in_num)
            3'b000 : out[31:0] <= in;
            3'b001 : out[63:32] <= in;
            3'b010 : out[95:64] <= in;
            3'b011 : out[127:96] <= in;
            3'b100 : out[159:128] <= in;
            3'b101 : out[191:160] <= in;
            3'b110 : out[223:192] <= in;
            3'b111 : out[255:224] <= in;
            default: out[31:0] <= {32{1'b0}};
        endcase
    end

endmodule