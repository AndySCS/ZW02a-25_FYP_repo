module rresp_update (
    in,
    addr,
    en,
    out
);

    input [255:0] in;
    input [7:0] addr;
    input en;
    output [255:0] out;

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