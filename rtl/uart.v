module uart (
    clk,
    rst_n,
    tx,
    rx,
    rx_data,
    rx_vld,
    tx_data_in,
    tx_vld,
    tx_ready
);
    
    input clk;
    input rst_n;
    input rx;
    input [7:0] tx_data_in;
    input tx_vld;
    output tx;
    output [7:0] rx_data;
    output rx_vld;
    output tx_ready;

    wire tx_ptr_en;
    wire [3:0] tx_ptr;
    wire [3:0] tx_ptr_nxt;
    wire tx_fifo_full;
    wire [9:0] tx_data;
    wire [7:0] tx_data_nxt;
    wire tx_data_en;
    wire tx_doing;
    wire tx_doing_nxt;
    wire tx_fifo_pick_rdy;
    wire tx_fifo_out_vld;

    wire [7:0] rx_ptr;
    wire [7:0] rx_ptr_nxt;
    wire rx_ptr_en;
    wire [7:0] rx_data_nxt;
    wire rx_data_en;
    wire [1:0] rx_fsm;
    wire [1:0] rx_fsm_nxt;
    wire rx_fsm_en;
    wire rx_begin;
    wire rx_vld_nxt;
    wire rx_data_en;

    one_in_one_out_fifo #(
        .ENT_NUM(16),
        .DATA_SIZE(8)
    ) tx_fifo (
        .clk(clk),
        .rst_n(rst_n),
        .in_vld(tx_vld),
        .in_data(tx_data_in),
        .out_vld(tx_data_nxt),
        .out_data(tx_nxt),
        .fifo_full(tx_fifo_full),
        .pick_rdy(tx_fifo_pick_rdy)
    );

    assign tx_ready = ~tx_fifo_full;
    assign tx_fifo_pick_rdy = ~tx_doing;

    assign tx = tx_doing ? tx_data[tx_ptr] : 1'b1; //idle high
    assign tx_ptr_nxt = ~tx_doing? 0 : tx_ptr + 1;
    assign tx_ptr_en = tx_doing | tx_fifo_out_vld; //start counting when start tx, stop counting when end tx, start new tx when not doing and fifo out vld

    assign tx_doing_nxt = tx_doing ? (tx_ptr != 4'b1001) : tx_fifo_out_vld; //start new tx when not doing and fifo out vld
    assign tx_data[0] = 1'b0; //start bit
    assign tx_data_en = tx_fifo_out_vld & tx_fifo_pick_rdy; //latch data when start tx
    assign tx_data[9] = ^tx_data[8:1]; //parity bit

    DFFRE #(.WIDTH(4)) 
    ff_tx_ptr (
        .clk(clk), 
        .rst_n(rst_n), 
        .en(tx_ptr_en), 
        .d(tx_ptr_nxt), 
        .q(tx_ptr)
    );
    DFFR #(.WIDTH(1)) ff_tx_doing (
        .clk(clk), 
        .rst_n(rst_n), 
        .d(tx_doing_nxt), 
        .q(tx_doing)
    );
    DFFRE #(.WIDTH(8)) ff_tx_data (
        .clk(clk), 
        .rst_n(rst_n), 
        .en(tx_data_en), 
        .d(tx_data_nxt), 
        .q(tx_data[8:1])
    );

    assign rx_begin = ~rx & (rx_fsm == 2'b00); //detect start bit
    assign rx_ptr_nxt = rx_fsm == 2'b00 ? 1 : {rx_ptr[6:0], rx_ptr[7]};
    assign rx_ptr_en = rx_begin | (rx_fsm != 2'b00 & rx_fsm != 2'b11); //count data bits
    assign rx_data_nxt = {8{rx}} & rx_ptr | rx_data & ~rx_ptr; //latch data bits
    assign rx_data_en = rx_fsm == 2'b01; //latch data bits when in data receiving state
    assign rx_vld_nxt = rx_fsm == 2'b10; //data

    assign rx_fsm_nxt = rx_fsm == 2'b00 ? (rx_begin ? 2'b01 : 2'b00) :
                        rx_fsm == 2'b01 ? (rx_ptr == 8'h40 ? 2'b10 : 2'b01) :
                        rx_fsm == 2'b10 ? 2'b00 : rx_fsm; //fsm for receiving data, wait for start bit, then count data bits, then wait for stop bit
    
    DFFRE #(.WIDTH(8)) ff_rx_ptr (
        .clk(clk),
        .rst_n(rst_n),
        .en(rx_ptr_en),
        .d(rx_ptr_nxt),
        .q(rx_ptr)
    );
    DFFRE #(.WIDTH(8)) ff_rx_data (
        .clk(clk),
        .rst_n(rst_n),
        .en(rx_data_en),
        .d(rx_data_nxt),
        .q(rx_data)
    );
    DFFR #(.WIDTH(2)) ff_rx_fsm (
        .clk(clk),
        .rst_n(rst_n),
        .d(rx_fsm_nxt),
        .q(rx_fsm)
    );
    DFFR #(.WIDTH(1)) ff_rx_vld (
        .clk(clk),
        .rst_n(rst_n),
        .d(rx_vld_nxt),
        .q(rx_vld)
    );

endmodule