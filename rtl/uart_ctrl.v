module uart_ctrl (
    input clk,
    input rst_n,

    input [7:0] rx_data,
    input rx_vld,
    input tx_ready,
    output [7:0] tx_data_in,
    output tx_vld,

    input AWREADY,
    output AWVALID,
    output [31:0] AWADDR,
    output [7:0] AWLEN,
    output [2:0] AWSIZE,
    output [1:0] AWBURST,
    output [3:0] AWREGION,
    output [3:0] AWID,

    input ARREADY,
    output ARVALID,
    output [31:0] ARADDR,
    output [7:0] ARLEN,
    output [2:0] ARSIZE,
    output [1:0] ARBURST,
    output [3:0] ARREGION,
    output [3:0] ARID,

    input RVALID,
    input [63:0] RDATA,
    input [1:0] RRESP,
    input [3:0] RID,
    input RLAST,
    output RREADY,

    input WREADY,
    output WVALID,
    output [63:0] WDATA,
    output [7:0] WSTRB,
    output WLAST,

    input BVALID,
    input [3:0] BID,
    input [1:0] BRESP,
    output BREADY,

    output start_vld,
    output [31:0] start_addr,
    input wfi
);

    localparam AXI_WR = 8'hff; //write cmd to axi
    localparam WR_STATE_IDLE = 2'b00;
    localparam WR_STATE_ADDR = 2'b01;
    localparam WR_STATE_DATA = 2'b10;
    localparam WR_STATE_SEND = 2'b11; //internal state to indicate we have received all data and can now send it to the FIFO
    localparam WR_SEND_DATA = 2'b11; //internal state to indicate we have received all data and can now send it to the FIFO
    localparam AW_CNT = 8'd48; //number of 64-bit words in AXI address space (4KB/4B)
    localparam B_CNT = AW_CNT + 1; //number of 64-bit words in AXI address space (4KB/4B)
    localparam AR_CNT = 10; //number of reads to issue after writes are done (one for each register we want to read back)

    wire [1:0] uart_wr_state;
    wire [1:0] uart_wr_state_nxt;
    wire write_axi;

    wire [31:0] axi_write_addr;
    wire [31:0] axi_write_addr_nxt;
    wire [31:0] axi_write_addr_msk;
    wire axi_write_addr_en;
    wire [3:0] addr_ptr;
    wire [3:0] addr_ptr_nxt;
    wire addr_ptr_en;
    wire axi_addr_end;

    wire [63:0] axi_write_data;
    wire [63:0] axi_write_data_nxt;
    wire axi_write_data_en;
    wire [63:0] axi_write_data_msk;
    wire [7:0] write_data_ptr;
    wire [7:0] write_data_ptr_nxt;
    wire write_data_ptr_en;

    wire wr_data_fifo_in_vld;
    wire wr_data_fifo_in_vld_nxt;
    wire wr_data_fifo_in_rdy;
    wire [63:0] wr_data_fifo_in_data;

    wire AWVALID_nxt;
    wire [31:0] AWADDR_nxt;
    wire AWVALID_qual;
    wire [7:0] awcnt;
    wire [7:0] awcnt_nxt;
    wire awcnt_en;
    wire AWADDR_en;
    wire [3:0] AWID_nxt;
    
    wire [3:0] BID_nouse;
    wire [1:0] BRESP_nouse;
    wire  BVALID_nouse;
    wire [7:0] bcnt;
    wire [7:0] bcnt_nxt;
    wire BVALID_qual;

    wire start_vld_nxt;
    wire w_data_done;

    wire [31:0] ARADDR_nxt;
    wire ARVALID_nxt;
    wire ARVALID_qual;
    wire [7:0] arcnt;
    wire [7:0] arcnt_nxt;
    wire arcnt_en;
    wire ARADDR_en;
    wire [3:0] ARID_nxt;

    wire rd_data_fifo_out_vld;
    wire [15:0] rd_data_fifo_out_data;
    wire rd_data_fifo_out_rdy;
    wire tx_vld_tmp;
    wire tx_vld_tmp_nxt;
    wire [15:0] tx_data_tmp;
    wire [15:0] tx_data_tmp_nxt;
    wire tx_data_state;
    wire tx_data_state_nxt;
    wire tx_data_tmp_en;

    wire [3:0] rcnt;
    wire [3:0] rcnt_nxt;
    wire rcnt_en;

    wire r_data_done;

    assign write_axi = rx_vld && (rx_data == AXI_WR);
    assign uart_wr_state_nxt = (uart_wr_state == WR_STATE_IDLE) ? (write_axi ? WR_STATE_ADDR : WR_STATE_IDLE) :
                               (uart_wr_state == WR_STATE_ADDR) ? (axi_addr_end ? WR_STATE_DATA : WR_STATE_ADDR) :
                               (uart_wr_state == WR_STATE_DATA) ? ((w_data_done & ~wfi) ? WR_STATE_SEND : WR_STATE_DATA) :
                               (uart_wr_state == WR_STATE_SEND) ? (r_data_done ? WR_STATE_IDLE : WR_STATE_IDLE) : WR_STATE_IDLE; //after sending data to FIFO, go back to idle
    assign axi_write_addr_en = (uart_wr_state == WR_STATE_ADDR) && rx_vld;

    assign axi_write_addr_msk = {{8{addr_ptr[3]}}, {8{addr_ptr[2]}}, {8{addr_ptr[1]}}, {8{addr_ptr[0]}}}; //mask for 4-bit addr ptr
    assign axi_write_addr_nxt = axi_write_addr & ~axi_write_addr_msk | {4{rx_data}} & axi_write_addr_msk; //update only the byte indicated by addr_ptr
    assign addr_ptr_nxt = write_axi ? 4'b0001 : (addr_ptr << 1); //shift left to move to next byte
    assign addr_ptr_en = rx_vld;
    assign axi_addr_end = (addr_ptr == 4'b1000); //after 4 bytes, we have a complete address

    DFFR #(.WIDTH(2)) 
    ff_uart_wr_state (
        .clk(clk), 
        .rst_n(rst_n),
        .d(uart_wr_state_nxt), 
        .q(uart_wr_state)
    );
    DFFRE #(.WIDTH(32)) 
    ff_axi_write_addr (
        .clk(clk), 
        .rst_n(rst_n), 
        .en(axi_write_addr_en), 
        .d(axi_write_addr_nxt),
        .q(axi_write_addr)
    );
    DFFRE #(.WIDTH(4))
    ff_addr_ptr (
        .clk(clk),
        .rst_n(rst_n),
        .en(addr_ptr_en),
        .d(addr_ptr_nxt),
        .q(addr_ptr)
    );
    DFFRE #(.WIDTH(8))
    ff_write_data_ptr (
        .clk(clk),
        .rst_n(rst_n),
        .en(write_data_ptr_en),
        .d(write_data_ptr_nxt),
        .q(write_data_ptr)
    );
    DFFE #(.WIDTH(64))
    ff_axi_write_data (
        .clk(clk),
        .en(axi_write_data_en),
        .d(axi_write_data_nxt),
        .q(axi_write_data)
    );

    assign axi_write_data_nxt = axi_write_data & ~axi_write_data_msk | {8{rx_data}} & axi_write_data_msk; //update only the byte indicated by addr_ptr
    assign axi_write_data_msk = {{8{write_data_ptr[7]}}, {8{write_data_ptr[6]}}, {8{write_data_ptr[5]}}, {8{write_data_ptr[4]}},
                                {8{write_data_ptr[3]}}, {8{write_data_ptr[2]}}, {8{write_data_ptr[1]}}, {8{write_data_ptr[0]}}}; //mask for 8-bit data ptr
    assign write_data_ptr_nxt = write_axi ? 8'b1 : write_data_ptr ^ 8'h3; //shift left to move to next byte
    assign write_data_ptr_en = rx_vld & (uart_wr_state == WR_STATE_DATA) | write_axi; //only shift data ptr when receiving data for address
    assign axi_write_data_en = rx_vld & (uart_wr_state == WR_STATE_DATA); //enable data latch when in data receiving state

    assign wr_data_fifo_in_vld_nxt = (uart_wr_state == WR_STATE_DATA) & rx_vld & (write_data_ptr == 8'b00000010) | wr_data_fifo_in_vld & ~wr_data_fifo_in_rdy; //valid when we have received the last byte of data
    assign wr_data_fifo_in_data = axi_write_data;

    DFFR #(.WIDTH(1))
    ff_wr_data_fifo_in_vld (
        .clk(clk),
        .rst_n(rst_n),
        .d(wr_data_fifo_in_vld_nxt),
        .q(wr_data_fifo_in_vld)
    );

    one_in_one_out_fifo_lib #(
        .ENT_NUM(32), 
        .DATA_SIZE(64)
    ) 
    wr_data_fifo (
        .clk(clk), 
        .rst_n(rst_n),
        .in_vld(wr_data_fifo_in_vld), 
        .in_rdy(wr_data_fifo_in_rdy), 
        .in_data(wr_data_fifo_in_data),
        .out_vld(WVALID), 
        .out_data(WDATA),
        .fifo_full(), 
        .pick_rdy(WREADY)
    );

    assign WSTRB = 8'h3; //always write full 64 bits
    assign WLAST = 1'b1; //each AXI write is a single beat

    assign awcnt_nxt = (uart_wr_state == WR_STATE_ADDR) & rx_vld ? 0 : awcnt+1; //increment awcnt for each byte of address received
    assign awcnt_en = (uart_wr_state == WR_STATE_ADDR) & rx_vld | AWVALID_qual; //enable awcnt when receiving address bytes or when waiting for AWREADY
    assign AWVALID_nxt = axi_addr_end & (uart_wr_state == WR_STATE_ADDR) | (uart_wr_state == WR_STATE_DATA) & (awcnt <= AW_CNT) | AWVALID & ~AWREADY; //assert AWVALID when we have a complete address or if it's already asserted and waiting for AWREADY
    assign AWADDR_nxt = uart_wr_state == WR_STATE_ADDR ? axi_write_addr_nxt : AWADDR + 16; //update AWADDR only in address state
    assign AWVALID_qual = AWVALID & AWREADY; //qualify AWVALID with ~AWREADY to ensure it stays high until the address is accepted
    assign AWADDR_en = (uart_wr_state == WR_STATE_ADDR) & rx_vld | AWVALID_qual; //enable AWADDR update when receiving address bytes or when waiting for AWREADY

    assign AWID_nxt = AWID + 1; //use a fixed ID for all writes since we have only one outstanding transaction at a time

    assign AWLEN = 8'h0; //single beat
    assign AWSIZE = 3'h3; //64 bits
    assign AWBURST = 2'h1; //incr
    assign AWREGION = 4'h0; //no region
    
    assign ARLEN = 8'h0; //single beat
    assign ARSIZE = 3'h1; //16 bits
    assign ARBURST = 2'h1; //incr
    assign ARREGION = 4'h0; //no region


    DFFRE #(.WIDTH(8))
    ff_awcnt (
        .clk(clk),
        .rst_n(rst_n),
        .en(awcnt_en), //increment awcnt for each byte of address received or when waiting for AWREADY
        .d(awcnt_nxt),
        .q(awcnt)
    );
    DFFR #(.WIDTH(1))
    ff_awvalid (
        .clk(clk),
        .rst_n(rst_n),
        .d(AWVALID_nxt),
        .q(AWVALID)
    );
    DFFRE #(.WIDTH(32))
    ff_awaddr (
        .clk(clk),
        .rst_n(rst_n),
        .en(AWADDR_en), //update AWADDR only in address state
        .d(AWADDR_nxt),
        .q(AWADDR)
    );
    DFFRE #(.WIDTH(4))
    ff_awid (
        .clk(clk),
        .rst_n(rst_n),
        .en(AWVALID_qual), //increment AWID when address is accepted
        .d(AWID_nxt),
        .q(AWID)
    );

    assign BREADY = 1; //always ready to accept write response
    assign BID_nouse = BID; //suppress unused signal warning
    assign BRESP_nouse = BRESP;
    assign BVALID_qual = BVALID & BREADY; //qualify BVALID with BREADY to ensure we only consider it when we are ready to accept the response

    assign bcnt_nxt = ((uart_wr_state == WR_STATE_ADDR) & rx_vld)? 0 :
                      BVALID_qual ? bcnt + 1 : bcnt; //increment bcnt for each valid response received
    DFFRE #(.WIDTH(8))
    ff_bcnt (
        .clk(clk),
        .rst_n(rst_n),
        .en(BVALID_qual), //increment bcnt when we receive a valid response
        .d(bcnt_nxt),
        .q(bcnt)
    );

    assign start_addr = 0;
    assign w_data_done = bcnt == B_CNT; //we are done with all writes when we have received responses for all of them
    assign start_vld_nxt = (uart_wr_state == WR_STATE_DATA) & w_data_done & ~wfi; //assert start_vld when we have received responses for all writes and are not waiting for interrupt
    
    DFFR #(.WIDTH(1))
    ff_start_vld (
        .clk(clk),
        .rst_n(rst_n),
        .d(start_vld_nxt),
        .q(start_vld)
    );

    assign ARVALID_qual = ARVALID & ARREADY; //qualify ARVALID with ARREADY to ensure it stays high until the address is accepted
    assign ARVALID_nxt = (uart_wr_state == WR_STATE_SEND) & wfi & (arcnt < AR_CNT) & ~ARVALID | (ARVALID & ~ARREADY); //assert ARVALID when start_vld is asserted or if it's already asserted and waiting for ARREADY
    assign arcnt_nxt = w_data_done ? 0 : arcnt + 1; //increment arcnt after we are done with all writes to start issuing reads
    assign arcnt_en = w_data_done | ARVALID_qual; //enable arcnt when we are done with all writes or when waiting for ARREADY
    assign ARADDR_nxt = w_data_done ? 32'd50672 : ARADDR + 4; //increment ARADDR by 4 for each read to read consecutive registers
    assign ARADDR_en = w_data_done | ARVALID_qual; //enable AR
    assign ARID_nxt = ARID + 1; //use a fixed ID for all reads since we have only one outstanding transaction at a time

    DFFRE #(.WIDTH(8))
    ff_arcnt (
        .clk(clk),
        .rst_n(rst_n),
        .en(arcnt_en), //increment arcnt after we are done with all writes
        .d(arcnt_nxt),
        .q(arcnt)
    );
    DFFR #(.WIDTH(1))
    ff_arvalid (
        .clk(clk),
        .rst_n(rst_n),
        .d(ARVALID_nxt),
        .q(ARVALID)
    );
    DFFRE #(.WIDTH(32))
    ff_araddr (
        .clk(clk),
        .rst_n(rst_n),
        .en(ARADDR_en), //update ARADDR when we are done with all writes
        .d(ARADDR_nxt),
        .q(ARADDR)
    );
    DFFRE #(.WIDTH(4))
    ff_arid (
        .clk(clk),
        .rst_n(rst_n),
        .en(ARVALID_qual), //increment ARID when address is accepted
        .d(ARID_nxt),
        .q(ARID)
    );

    one_in_one_out_fifo_lib #(
        .ENT_NUM(16), 
        .DATA_SIZE(16)
    ) 
    rd_data_fifo (
        .clk(clk), 
        .rst_n(rst_n),
        .in_vld(RVALID), 
        .in_rdy(RREADY), 
        .in_data(RDATA[15:0]), //only store the lower 16 bits of the read data since our registers are only 16 bits wide
        .out_vld(rd_data_fifo_out_vld), 
        .out_data(rd_data_fifo_out_data),
        .fifo_full(), 
        .pick_rdy(rd_data_fifo_out_rdy)
    );

    assign tx_data_state_nxt = ~(rd_data_fifo_out_rdy & rd_data_fifo_out_vld) | (tx_vld & tx_ready);
    assign rd_data_fifo_out_rdy = ~tx_vld_tmp | tx_data_state & tx_vld & tx_ready; //only ready to accept data from FIFO when we are not currently holding data to send or when we have accepted the data and are ready for the next one
    assign tx_vld_tmp_nxt = rd_data_fifo_out_vld & rd_data_fifo_out_rdy | tx_vld_tmp & ~tx_data_state | tx_vld & ~tx_ready; //valid when we have data to send and are ready to send it
    assign tx_data_tmp_nxt = (rd_data_fifo_out_vld & rd_data_fifo_out_rdy) ? rd_data_fifo_out_data : {8'b0, tx_data_tmp[15:7]}; //send the lower 8 bits of the read data as UART can only send 8 bits at a time
    assign tx_data_tmp_en = (rd_data_fifo_out_vld & rd_data_fifo_out_rdy) | tx_vld_tmp; //enable tx_data_tmp when we have new data from FIFO or when we are holding data to send

    assign tx_vld = tx_vld_tmp; //qualify tx_vld with tx_ready to ensure it stays high until the data is accepted
    assign tx_data_in = tx_data_tmp[7:0]; //send the lower 8 bits of tx_data_tmp as UART can only send 8 bits at a time

    DFFR #(.WIDTH(1))
    ff_tx_data_state (
        .clk(clk),
        .rst_n(rst_n),
        .d(tx_data_state_nxt),
        .q(tx_data_state)
    );
    DFFR #(.WIDTH(1))
    ff_tx_vld_tmp (
        .clk(clk),
        .rst_n(rst_n),
        .d(tx_vld_tmp_nxt),
        .q(tx_vld_tmp)
    );
    DFFRE #(.WIDTH(16))
    ff_tx_data_tmp (
        .clk(clk),
        .rst_n(rst_n),
        .en(tx_data_tmp_en),
        .d(tx_data_tmp_nxt),
        .q(tx_data_tmp)
    );

    assign rcnt_en = (uart_wr_state == WR_STATE_DATA) & w_data_done | RVALID & RREADY; //enable rcnt when we are done with all writes to start issuing reads
    assign rcnt_nxt = (uart_wr_state == WR_STATE_DATA) & w_data_done ? 0 : rcnt + 1; //increment rcnt after we are done with all writes to start issuing reads
    DFFRE #(.WIDTH(4))
    ff_rcnt (
        .clk(clk),
        .rst_n(rst_n),
        .en(rcnt_en),
        .d(rcnt_nxt),
        .q(rcnt)
    );

    assign r_data_done = (rcnt == AR_CNT) & (uart_wr_state == WR_STATE_SEND); //we are done with all reads when we have received the expected number of read data beats


endmodule