module pe (
    clk,
    rst_n,
    in0_vld,
    in0_data,
    in1_vld,
    in1_data,
    pe_en,
    load_vld,
    load_data,
    out0_vld,
    out0_data,
    out1_vld,
    out1_data,
    pe_doing,
    pe_data
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
    //load data
    input load_vld;
    input [7:0] load_data;
    //pipe output
    output out0_vld;
    output [7:0] out0_data;
    output out1_vld ;
    output [7:0] out1_data;
    //pe result
    output pe_doing;
    output [15:0] pe_data;

    //pipeline signal
    wire c0_vld;
    wire [15:0] c0_data;

    wire c1_vld;
    wire [15:0] c1_data;
    
    //register signal
    wire [15:0] buf_data;
    wire [15:0] buf_data_nxt;
    wire [15:0] acc_data;
    wire buf_data_en

    assign c0_vld = in0_vld & in1_vld & pe_en;
    assign c0_data = {8'b0, in0_data} * {8'b0, in1_data};

    DFFR #(.WIDTH(1)) 
    ff_c1_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(c0_vld),
        .q(c1_vld)
    );

    DFFE #(.WIDTH(15)) 
    ff_c1_data(
        .clk(clk),
        .rst_n(rst_n),
        .en(c0_vld),
        .d(c0_data),
        .q(c1_data)
    );

    assign acc_data = buf_data + c1_data;
    assign buf_data_nxt = load_vld ? load_data :
                          c1_vld ? acc_data;
    assign buf_data_en = load_vld & pe_en | c1_vld;
    
    DFFE #(.WIDTH(15)) 
    ff_buf_data(
        .clk(clk),
        .rst_n(rst_n),
        .en(buf_data_en)
        .d(buf_data_nxt),
        .q(buf_data)
    );
    
    DFFR #(.WIDTH(1)) 
    ff_out0_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(in0_vld),
        .q(out0_vld)
    );

    DFFE #(.WIDTH(15)) 
    ff_out0_data(
        .clk(clk),
        .rst_n(rst_n),
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

    DFFE #(.WIDTH(15)) 
    ff_out1_data(
        .clk(clk),
        .rst_n(rst_n),
        .en(in1_vld),
        .d(in1_data),
        .q(out1_data)
    );

    assign pe_data = buf_data;
    assign pe_doing = c0_vld | load_vld & pe_en | c1_vld;

endmodule