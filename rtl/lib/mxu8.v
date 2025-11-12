module mux8 (
    in0,
    in1,
    in2,
    in3,
    in4,
    in5,
    in6,
    in7,
    sel,
    out
);

    parameter WIDTH = 32;

    input [WIDTH-1:0] in0;
    input [WIDTH-1:0] in1;
    input [WIDTH-1:0] in2;
    input [WIDTH-1:0] in3;
    input [WIDTH-1:0] in4;
    input [WIDTH-1:0] in5;
    input [WIDTH-1:0] in6;
    input [WIDTH-1:0] in7;
    input [3:0] sel;
    output [WIDTH-1:0] out;

    assign out = (sel == 4'd0) ? in0 :
                 (sel == 4'd1) ? in1 :
                 (sel == 4'd2) ? in2 :
                 (sel == 4'd3) ? in3 :
                 (sel == 4'd4) ? in4 :
                 (sel == 4'd5) ? in5 :
                 (sel == 4'd6) ? in6 :
                                 in7 ;  

    
endmodule