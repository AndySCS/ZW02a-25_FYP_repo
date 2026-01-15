module data_byte_shift(
    in,
    offset,
    out
);
    input [127:0] in;
    input [5:0] offset;
    output [127:0] out;
 
    assign out = (in >> (offset*8));

endmodule

