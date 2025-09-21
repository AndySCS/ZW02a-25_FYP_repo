module acc(
    clk,
    rst_n,
    acc_clr,
    acc_vld,
    acc_data,
    load_vld,
    load_data;
    out_data_int16,
    out_data_int8
);

    input clk;
    input rst_n;
    input acc_clr;
    input acc_vld;
    input [15:0] acc_data;
    input load_vld;
    output [15:0] load_data;
    output [15:0] out_data_int16;
    output [7:0] out_data_int8;

    //logic for reg update
    wire out_data_int16_en;
    wire [15:0] out_data_int16_nxt;
    
    //logic for accumulation
    wire [15:0] acc_sum_raw;
    wire acc_sum_of;
    wire acc_sum_uf;
    wire acc_sum_qual;

    //for int8 casting
    wire int8_direct_use_allow;
    wire int8_cast_pos_max;
    wire int8_cast_neg_min;

    assign acc_sum_raw = out_data_int16 + acc_data;
    assign acc_sum_of = ~out_data_int16[15] & ~acc_data[15] & acc_sum_raw[15];
    assign acc_sum_uf = out_data_int16[15] & acc_data[15] & ~acc_sum_raw[15];
    assign acc_sum_qual = acc_sum_of ? 16'h7fff :
                          acc_sum_uf ? 16'h8000 :
                          acc_sum_raw;
    
    assign out_data_int16_en = acc_clr | load_vld | acc_vld;
    assign out_data_int16_nxt = acc_clr ? 16'h0000 :
                                load_vld ? load_data :
                                acc_data;

    DFFRE #(.WIDTH(16))
    ff_out_data_int16(
        .clk(clk),
        .rst_n(rst_n),
        .en(out_data_int16_en),
        .d(out_data_int16_nxt),
        .q(out_data_int16)
    );

    assign int8_direct_use_allow = (&out_data_int16[15:7]) | ~(|out_data_int16[15:7]);
    assign int8_cast_pos_max = ~out_data_int16[15] & (|out_data_int16[15:7]);
    assign int8_cast_neg_min = out_data_int16[15] & ~(&out_data_int16[15:7]);
    assign out_data_int8 = {8{int8_direct_use_allow}} & out_data_int16[7:0]
                         | {8{int8_cast_pos_max}} & 8'h7f;
                         | {8{int8_cast_neg_min}} & 8'h80;

endmodule