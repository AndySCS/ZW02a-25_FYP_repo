module exp(
    clk,
    rst,
    exp_vld,
    in_num,
    output_num,
    exp_done,
    exp_err,
    exp_rdy,
    exp_divide
);

    parameter EULER  = 32'b0000_0000_0000_0010_1011_0111_1110_0011;
    parameter NUM_WIDTH = 32;
 
    input clk;
    input rst;
    input exp_vld;
    input [NUM_WIDTH-1:0] in_num;
    output [NUM_WIDTH-1:0] output_num;
    output exp_done;
    output exp_err;
    output exp_rdy;
    output exp_divide;

    wire exp_vld_qual;
    wire [NUM_WIDTH-1:0] in_num_abs;
    wire [NUM_WIDTH-1:0] num_cnt;
    wire [NUM_WIDTH-1:0] num_cnt_nxt;
    wire num_cnt_en;
    wire in_num_neg;
    wire exp_doing;
    wire exp_doing_nxt;
    wire exp_done_nxt;
    wire exp_err_nxt;

    wire [NUM_WIDTH*2-1:0] acc_product;
    wire [NUM_WIDTH-1:0] acc_product_32;
    wire exp_overflow;
    wire num_cnt_done;
    
    wire [NUM_WIDTH-1:0] output_num_nxt;
    wire output_num_en;

    assign exp_vld_qual = exp_vld & exp_rdy;
    assign in_num_abs = in_num[NUM_WIDTH-1] ? (~in_num+1) : in_num;

    assign acc_product = output_num * EULER;
    assign exp_overflow = |acc_product[NUM_WIDTH*2-1:NUM_WIDTH+15];
    assign num_cnt_done = (num_cnt == 1) | ~(|num_cnt);
    assign exp_doing_nxt = (exp_vld_qual | exp_doing & ~(num_cnt_done | exp_overflow));

    assign acc_product_32 = acc_product[15]? acc_product[NUM_WIDTH+15:NUM_WIDTH-16]+1 //round off
                            : acc_product[NUM_WIDTH+15:NUM_WIDTH-16];
    assign output_num_nxt = exp_vld_qual ? (~|in_num) ? 32'h10000 : EULER : acc_product_32;
    assign output_num_en = exp_vld_qual | exp_doing & ~num_cnt_done;

    assign num_cnt_nxt = exp_vld_qual ? {16'b0, in_num_abs[NUM_WIDTH-1:16]} : num_cnt - 1;
    assign num_cnt_en = exp_vld_qual | exp_doing;

    assign exp_done_nxt = exp_doing & (num_cnt_done | exp_overflow);

    assign exp_err_nxt = exp_overflow & ~num_cnt_done & exp_doing;

    DFFE #(.WIDTH(32)) ff_output_num (
        .clk(clk),
        .en(output_num_en),
        .d(output_num_nxt),
        .q(output_num)
    );
    
    DFFE #(.WIDTH(32)) ff_num_cnt (
        .clk(clk),
        .en(num_cnt_en),
        .d(num_cnt_nxt),
        .q(num_cnt)
    );

    DFF #(.WIDTH(1)) ff_exp_done (
        .clk(clk),
        .d(exp_done_nxt),
        .q(exp_done)
    );
    
    DFFR #(.WIDTH(1)) ff_exp_doing (
        .clk(clk),
        .rst(rst),
        .d(exp_doing_nxt),
        .q(exp_doing)
    );

    DFFR #(.WIDTH(1)) ff_exp_err (
        .clk(clk),
        .rst(rst),
        .d(exp_err_nxt),
        .q(exp_err)
    );
    
    DFFE #(.WIDTH(1)) ff_in_num_neg (
        .clk(clk),
        .en(exp_vld_qual),
        .d(in_num[NUM_WIDTH-1]),
        .q(in_num_neg)
    );

    assign exp_divide = in_num_neg;
    assign exp_rdy = ~exp_doing;

endmodule