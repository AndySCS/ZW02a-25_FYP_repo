    module mm_ctrl_buffer(
        clk,
        rst_n,
        //ram wire
        lsu_mm_buff_ram_alloc_vld,
        lsu_mm_buff_ram_alloc_addr,
        lsu_mm_buff_ram_alloc_data,

        //ctrl wirelsu_
        lsu_mm_buff_ctrl_vld,
        lsu_mm_buff_ctrl_row_len,
        lsu_mm_buff_ctrl_col_len,
        lsu_mm_buff_ctrl_start_addr

        //to ram
        lsu_mm_buff_ram_read_vld,
        lsu_mm_buff_ram_read_addr,

        //to mxu
        lsu_mm_buff_mxu_vld,
        lsu_mm_buff_mxu_data 
    ); 

    input          lsu_mm_buff_ram_alloc_vld;
    input  [7:0]   lsu_mm_buff_ram_alloc_addr;
    input  [127:0] lsu_mm_buff_ram_alloc_data;

    input          lsu_mm_buff_ctrl_vld;
    input  [3:0]   lsu_mm_buff_ctrl_row_len;
    input  [3:0]   lsu_mm_buff_ctrl_col_len;
    input  [11:0]  lsu_mm_buff_ctrl_start_addr;

    output         lsu_mm_buff_ram_read_vld;
    output [7:0]   lsu_mm_buff_ram_read_addr;

    output [15:0]  lsu_mm_buff_mxu_vld;
    output [127:0] lsu_mm_buff_mxu_data;

    wire [3:0] lsu_mm_buff_addr_cnt;
    wire [3:0] lsu_mm_buff_addr_cnt_ff;
    wire [3:0] lsu_mm_buff_addr_cnt_end;

    assign lsu_mm_buff_ram_read_vld = lsu_mm_buff_ctrl_vld;
    assign lsu_mm_buff_addr_cnt_end = lsu_mm_buff_cnt_ff == lsu_mm_buff_ctrl_row_len;
    assign lsu_mm_buff_addr_cnt = lsu_mm_buff_start_pulse ? 1'b0 : lsu_mm_buff_cnt_end ? lsu_mm_buff_addr_cnt_ff : lsu_mm_buff_addr_cnt_ff + 1'b1;

    DFFR #(.WIDTH(1))
    ff_lsu_mm_buffer_addr_cnt(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_mm_buff_addr_cnt),
        .q(lsu_mm_buff_addr_cnt_ff)
    );

    assign lsu_mm_buff_ram_read_addr = lsu_mm_buff_ctrl_vld ? lsu_mm_buff_ctrl_start_addr + lsu_mm_buff_addr_cnt_ff | lsu_mm_buff_ctrl_start_addr + lsu_mm_buff_addr_cnt;


endmodule
