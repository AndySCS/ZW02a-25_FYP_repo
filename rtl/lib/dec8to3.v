module dec8to3(
    in,
    out
);

    input [7:0] in;
    output reg [2:0] out;

    always @(*) begin
        case (in)
            'b1xxxxxxx: out <=  3'b111;
            'b01xxxxxx: out <=  3'b110;
            'b001xxxxx: out <=  3'b101;
            'b0001xxxx: out <=  3'b100;
            'b00001xxx: out <=  3'b011;
            'b000001xx: out <=  3'b010;
            'b0000001x: out <=  3'b001;
            'b00000001: out <=  3'b000;
            default: out <= 3'bxxx;
        endcase
    end

endmodule

