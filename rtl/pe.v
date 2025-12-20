module pe (
    clk,
    rst_n,
    in0_vld,
    in0_data,
    in1_vld,
    in1_data,
    pe_en,
    out0_vld,
    out0_data,
    out1_vld,
    out1_data,
    pe_doing,
    c1_vld,
    c1_data
);

    input clk;
    input rst_n;
    //ram input
    input in0_vld;
    input [7:0] in0_data;
    input in1_vld;
    input [7:0] in1_data;
    //pe en signal
    input pe_en;
    //pipe output
    output out0_vld;
    output [7:0] out0_data;
    output out1_vld ;
    output [7:0] out1_data;
    //pe result
    output pe_doing;
    output c1_vld;
    output [15:0] c1_data;

    wire multi_vld;
    wire multi_busy = 1'b0;

    //pipeline signal
    wire c0_vld;
    wire [15:0] c0_data;

    assign multi_vld = in0_vld & in1_vld & pe_en;
/*
    multi u_multi(
        .clk(clk),
        .rst_n(rst_n),
        .multi_vld(multi_vld),
        .in0_data(in0_data),
        .in1_data(in1_data),
        .multi_busy(multi_busy),
        .out_vld(c0_vld),
        .out_data(c0_data)
    );
*/
    assign c0_vld = multi_vld;
    assign c0_data = in0_data * in1_data;

    DFFR #(.WIDTH(1)) 
    ff_c1_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(c0_vld),
        .q(c1_vld)
    );

    DFFE #(.WIDTH(16)) 
    ff_c1_data(
        .clk(clk),
        .en(c0_vld),
        .d(c0_data),
        .q(c1_data)
    );
 
    DFFR #(.WIDTH(1)) 
    ff_out0_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(in0_vld),
        .q(out0_vld)
    );

    DFFE #(.WIDTH(8)) 
    ff_out0_data(
        .clk(clk),
        .en(in0_vld),
        .d(in0_data),
        .q(out0_data)
    );

    DFFR #(.WIDTH(1)) 
    ff_out1_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(in1_vld),
        .q(out1_vld)
    );

    DFFE #(.WIDTH(8)) 
    ff_out1_data(
        .clk(clk),
        .en(in1_vld),
        .d(in1_data),
        .q(out1_data)
    );

    assign pe_doing = multi_busy;

endmodule
