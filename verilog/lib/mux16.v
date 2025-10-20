module mux16 (
    in0,
    in1,
    in2,
    in3,
    in4,
    in5,
    in6,
    in7,
    in8,
    in9,
    in10,
    in11,
    in12,
    in13,
    in14,
    in15,
    sel,
    out
);

    parameter WIDTH = 4;

    input [WIDTH-1:0] in0,
    input [WIDTH-1:0] in1,
    input [WIDTH-1:0] in2,
    input [WIDTH-1:0] in3,
    input [WIDTH-1:0] in4,
    input [WIDTH-1:0] in5,
    input [WIDTH-1:0] in6,
    input [WIDTH-1:0] in7,
    input [WIDTH-1:0] in8,
    input [WIDTH-1:0] in9,
    input [WIDTH-1:0] in10,
    input [WIDTH-1:0] in11,
    input [WIDTH-1:0] in12,
    input [WIDTH-1:0] in13,
    input [WIDTH-1:0] in14,
    input [WIDTH-1:0] in15,
    input [3:0] sel,
    output [WIDTH-1:0] out

    assign out = (sel == 4'd0)  ? in0  :
                 (sel == 4'd1)  ? in1  :
                 (sel == 4'd2)  ? in2  :
                 (sel == 4'd3)  ? in3  :
                 (sel == 4'd4)  ? in4  :
                 (sel == 4'd5)  ? in5  :
                 (sel == 4'd6)  ? in6  :
                 (sel == 4'd7)  ? in7  :
                 (sel == 4'd8)  ? in8  :
                 (sel == 4'd9)  ? in9  :
                 (sel == 4'd10) ? in10 :
                 (sel == 4'd11) ? in11 :
                 (sel == 4'd12) ? in12 :
                 (sel == 4'd13) ? in13 :
                 (sel == 4'd14) ? in14 :
                                 in15;

    
endmodule