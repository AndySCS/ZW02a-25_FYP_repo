module dec_size(
    in,
    out
);

    input [3:0] in;
    output reg [15:0] out;

    always @(*) begin
        case (in)
            4'd0: out <=  8'b0000_1000;
            4'd1: out <=  8'b0001_0000;
            4'd2: out <=  8'b0010_0000;
            4'd3: out <=  8'b0100_0000;
            4'd4: out <=  8'b1000_0000;
            default: out <= 16'hxxxx;
        endcase
    end

endmodule
