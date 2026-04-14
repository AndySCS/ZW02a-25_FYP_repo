module uart #(
    parameter CLK_FREQ = 50000000,
    parameter BAUD_RATE = 115200
)(
    input clk,
    input rst_n,
    input rx,
    input [7:0] tx_data_in,
    input tx_vld,
    output tx,
    output [7:0] rx_data,
    output rx_vld,
    output tx_ready
);

    // --- Baud Rate Generation ---
    localparam BIT_PERIOD = CLK_FREQ / BAUD_RATE;
    wire [15:0] baud_cnt;
    wire [15:0] baud_cnt_nxt;
    wire baud_tick; // High for one clk cycle at end of bit period

    assign baud_cnt_nxt = (baud_tick || ~tx_doing) ? 0 : baud_cnt + 1;
    assign baud_tick = (baud_cnt == BIT_PERIOD - 1);

    DFFR #(.WIDTH(16)) ff_baud_gen (.clk(clk), .rst_n(rst_n), .d(baud_cnt_nxt), .q(baud_cnt));

    // --- TX Logic ---
    wire [7:0] tx_fifo_out_data;
    wire tx_fifo_out_vld;
    wire tx_fifo_pick_rdy;
    wire [10:0] tx_full_frame; // Start(0), Data(8), Parity(1), Stop(1)

    one_in_one_out_fifo_lib #(.ENT_NUM(16), .DATA_SIZE(8)) tx_fifo (
        .clk(clk), .rst_n(rst_n),
        .in_vld(tx_vld), .in_rdy(tx_ready), .in_data(tx_data_in),
        .out_vld(tx_fifo_out_vld), .out_data(tx_fifo_out_data),
        .fifo_full(), .pick_rdy(tx_fifo_pick_rdy)
    );

    // Only pick from FIFO if we aren't currently sending
    assign tx_fifo_pick_rdy = ~tx_doing & tx_fifo_out_vld;

    wire [3:0] tx_ptr;
    wire [3:0] tx_ptr_nxt;
    wire tx_doing;
    wire tx_doing_nxt;
    wire [7:0] tx_latch_data;

    // Frame assembly: Stop(1), Parity, Data[7:0], Start(0)
    assign tx_full_frame = {1'b1, ^tx_latch_data, tx_latch_data, 1'b0};
    
    assign tx = tx_doing ? tx_full_frame[tx_ptr] : 1'b1;
    assign tx_doing_nxt = tx_doing ? ~(tx_ptr == 4'd10 && baud_tick) : tx_fifo_out_vld;
    assign tx_ptr_nxt = ~tx_doing ? 0 : (baud_tick ? tx_ptr + 1 : tx_ptr);

    DFFR  #(.WIDTH(1)) ff_tx_doing (.clk(clk), .rst_n(rst_n), .d(tx_doing_nxt), .q(tx_doing));
    DFFR  #(.WIDTH(4)) ff_tx_ptr   (.clk(clk), .rst_n(rst_n), .d(tx_ptr_nxt),   .q(tx_ptr));
    DFFRE #(.WIDTH(8)) ff_tx_latch (.clk(clk), .rst_n(rst_n), .en(tx_fifo_pick_rdy), .d(tx_fifo_out_data), .q(tx_latch_data));

    // --- RX Logic ---
    // Note: A robust RX needs a 16x oversampler, but here we use a simplified bit-center sampler.
    wire [1:0] rx_fsm;
    wire [1:0] rx_fsm_nxt;
    wire [15:0] rx_baud_cnt;
    wire [15:0] rx_baud_cnt_nxt;
    wire [3:0] rx_bit_ptr;
    wire [3:0] rx_bit_ptr_nxt;
    wire rx_sample_tick = (rx_baud_cnt == BIT_PERIOD/2); // Sample at middle
    wire rx_bit_done    = (rx_baud_cnt == BIT_PERIOD - 1);

    assign rx_fsm_nxt = (rx_fsm == 2'b00 && ~rx) ? 2'b01 : // Detect Start
                        (rx_fsm == 2'b01 && rx_bit_done && rx_bit_ptr == 4'd9) ? 2'b10 : // End of frame
                        (rx_fsm == 2'b10) ? 2'b00 : rx_fsm;

    assign rx_baud_cnt_nxt = (rx_fsm == 2'b00 || rx_bit_done) ? 0 : rx_baud_cnt + 1;
    assign rx_bit_ptr_nxt  = (rx_fsm == 2'b00) ? 0 : (rx_bit_done ? rx_bit_ptr + 1 : rx_bit_ptr);

    // Latch data bits only (bits 1 through 8 of the frame)
    wire rx_data_bit_en = (rx_fsm == 2'b01 && rx_sample_tick && rx_bit_ptr >= 1 && rx_bit_ptr <= 8);
    wire [7:0] rx_data_nxt_val = {rx, rx_data[7:1]}; // Shift in LSB first

    DFFR  #(2)  ff_rx_fsm  (.clk(clk), .rst_n(rst_n), .d(rx_fsm_nxt), .q(rx_fsm));
    DFFR  #(16) ff_rx_baud (.clk(clk), .rst_n(rst_n), .d(rx_baud_cnt_nxt), .q(rx_baud_cnt));
    DFFR  #(4)  ff_rx_bit  (.clk(clk), .rst_n(rst_n), .d(rx_bit_ptr_nxt), .q(rx_bit_ptr));
    DFFRE #(8)  ff_rx_data (.clk(clk), .rst_n(rst_n), .en(rx_data_bit_en), .d(rx_data_nxt_val), .q(rx_data));
    DFFR  #(1)  ff_rx_vld  (.clk(clk), .rst_n(rst_n), .d(rx_fsm == 2'b10), .q(rx_vld));

endmodule