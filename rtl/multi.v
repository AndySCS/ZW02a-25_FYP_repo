module multi(
    clk,
    rst_n,
    multi_vld,
    in0_data,
    in1_data,
    multi_busy,
    out_vld,
    out_data
);
  
    input clk;
    input rst_n;
    input multi_vld;
    input [7:0] in0_data;
    input [7:0] in1_data;
    output multi_busy;
    output out_vld;
    output [15:0] out_data;

    wire multi_done;
//    wire multi_early_done;

    wire [15:0] src0_shift0;
    wire [15:0] src0_shift1;
    wire [15:0] src0_shift2;
    wire [15:0] src0_shift3;
    wire [15:0] src0_shift4;
    wire [15:0] src0_shift5;
    wire [15:0] src0_shift6;
    wire [15:0] src0_shift7;
    wire [15:0] src0_shift8;
    
    wire src_buff_vld;
    wire src_buff_vld_nxt;
    wire src_buff_data_en;
    wire [15:0] src0_buff_data;
    wire [15:0] src0_buff_data_nxt;
    wire [7:0] src1_buff_data;
    wire [7:0] src1_buff_data_nxt;
    wire [7:0] src1_buff_data_drop;
    wire [7:0] src1_buff_data_msk;

    wire src_fifo_alloc_vld;
    wire [7:0] src0_fifo_alloc_data;
    wire src0_fifo_out_vld;
    wire [7:0] src0_fifo_out_data;
    wire src0_fifo_full;
    wire [7:0] src1_fifo_alloc_data;
    wire src1_fifo_out_vld;
    wire [7:0] src1_fifo_out_data;
    wire src1_fifo_full;
    wire fifo_pick_allow;

    assign src0_shift0 = {{8{src0_buff_data[7]}}, src0_buff_data};
    assign src0_shift1 = {{8{src0_buff_data[7]}}, src0_buff_data} << 1;
    assign src0_shift2 = {{8{src0_buff_data[7]}}, src0_buff_data} << 2;
    assign src0_shift3 = {{8{src0_buff_data[7]}}, src0_buff_data} << 3;
    assign src0_shift4 = {{8{src0_buff_data[7]}}, src0_buff_data} << 4;
    assign src0_shift5 = {{8{src0_buff_data[7]}}, src0_buff_data} << 5;
    assign src0_shift6 = {{8{src0_buff_data[7]}}, src0_buff_data} << 6;
    assign src0_shift7 = {{8{src0_buff_data[7]}}, src0_buff_data} << 7;

    assign out_data = src1_buff_data[7] ? src0_shift7
                    : src1_buff_data[6] ? src0_shift6
                    : src1_buff_data[5] ? src0_shift5
                    : src1_buff_data[4] ? src0_shift4
                    : src1_buff_data[3] ? src0_shift3
                    : src1_buff_data[2] ? src0_shift2
                    : src1_buff_data[1] ? src0_shift1
                    : src1_buff_data[0] ? src0_shift0
                    : 16'b0;
    
    assign src_buff_vld_nxt = multi_vld | src0_fifo_out_vld & src1_fifo_out_vld | src_buff_vld & ~multi_done;

    assign src0_buff_data_nxt = (src_buff_vld & ~multi_done) ? src0_buff_data
                              : src0_fifo_out_vld ? src0_fifo_out_data
                              : in0_data;

    assign src1_buff_data_nxt = (src_buff_vld & ~multi_done) ? src1_buff_data_drop
                              : src1_fifo_out_vld ? src1_fifo_out_data
                              : in1_data;

    assign src_buff_data_en = src_buff_vld | src1_fifo_out_vld | src0_fifo_out_vld | multi_vld;

    DFFR #(.WIDTH(1))
    ff_src_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(src_buff_vld_nxt),
        .q(src_buff_vld)
    );
    
    DFFE #(.WIDTH(16))
    ff_src0_buff_data(
        .clk(clk),
        .en(src_buff_data_en),
        .d(src0_buff_data_nxt),
        .q(src0_buff_data_nxt)
    );    
    
    DFFE #(.WIDTH(8))
    ff_src1_buff_data(
        .clk(clk),
        .en(src_buff_data_en),
        .d(src1_buff_data_nxt),
        .q(src1_buff_data_nxt)
    );

    one_in_one_out_fifo_lib #(
        .ENT_NUM(16),
        .DATA_SIZE(8)
    )
    src0_fifo(
        .clk(clk),
        .rst_n(rst_n),
        .in_vld(src_fifo_alloc_vld),
        .in_data(src0_fifo_alloc_data),
        .out_vld(src0_fifo_out_vld),
        .out_data(src0_fifo_out_data),
        .fifo_full(src0_fifo_full),
        .pick_rdy(fifo_pick_allow)
    );
    
    one_in_one_out_fifo_lib #(
        .ENT_NUM(16),
        .DATA_SIZE(8)
    )
    src1_fifo(
        .clk(clk),
        .rst_n(rst_n),
        .in_vld(src_fifo_alloc_vld),
        .in_data(src1_fifo_alloc_data),
        .out_vld(src1_fifo_out_vld),
        .out_data(src1_fifo_out_data),
        .fifo_full(src1_fifo_full),
        .pick_rdy(fifo_pick_allow)
    );

    assign src_fifo_alloc_vld = multi_vld & src_buff_vld & ~multi_done;
    assign src0_fifo_alloc_data = in0_data;
    assign src1_fifo_alloc_data = in1_data;
    assign fifo_pick_allow = ~src_buff_vld | src_buff_vld & multi_done;

    assign src1_buff_data_msk = src1_buff_data[7] ? 8'b0111_1111
                              : src1_buff_data[6] ? 8'b1011_1111
                              : src1_buff_data[5] ? 8'b1101_1111
                              : src1_buff_data[4] ? 8'b1110_1111
                              : src1_buff_data[3] ? 8'b1111_0111
                              : src1_buff_data[2] ? 8'b1111_1011
                              : src1_buff_data[1] ? 8'b1111_1101
                              : src1_buff_data[0] ? 8'b1111_1110
                              : 8'h0;

    assign src1_buff_data_drop = src1_buff_data & src1_buff_data;
    
    assign multi_done = ~(|out_data) | ~(|src1_buff_data_drop);

    assign out_vld = src_buff_vld & (|out_data);

    assign multi_busy = src0_fifo_out_vld | src1_fifo_out_vld | multi_vld | src_buff_vld;

endmodule