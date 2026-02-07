    module mm_ctrl_buffer(
        clk,
        rst_n,
        //ram wire
        lsu_mm_buff_ram_alloc_vld,
        lsu_mm_buff_ram_alloc_addr,
        lsu_mm_buff_ram_alloc_data,

        //ctrl wirelsu
        lsu_mm_buff_ctrl_start,
        lsu_mm_buff_ctrl_vld,
        lsu_mm_buff_ctrl_row_len,
        lsu_mm_buff_ctrl_col_len,
        lsu_mm_buff_ctrl_start_addr,
        lsu_mm_buff_ctrl_ram_type,

        //to ram
        lsu_mm_buff_ram_read_vld,
        lsu_mm_buff_ram_read_addr,

        //to mxu
        lsu_mm_buff_mxu_vld,
        lsu_mm_buff_mxu_data,
        lsu_mm_buff_mxu_end
    ); 

    input clk;
    input rst_n;

    input          lsu_mm_buff_ram_alloc_vld;
    input  [7:0]   lsu_mm_buff_ram_alloc_addr;
    input  [127:0] lsu_mm_buff_ram_alloc_data;

    input lsu_mm_buff_ctrl_start;
    input          lsu_mm_buff_ctrl_vld;
    input  [3:0]   lsu_mm_buff_ctrl_row_len;
    input  [3:0]   lsu_mm_buff_ctrl_col_len;
    input  [11:0]  lsu_mm_buff_ctrl_start_addr;
    input lsu_mm_buff_ctrl_ram_type;

    output         lsu_mm_buff_ram_read_vld;
    output [7:0]   lsu_mm_buff_ram_read_addr;

    output [15:0]  lsu_mm_buff_mxu_vld;
    output [127:0] lsu_mm_buff_mxu_data;
    output lsu_mm_buff_mxu_end;

    wire [3:0] lsu_mm_buff_addr_cnt;
    wire [3:0] lsu_mm_buff_addr_cnt_ff;
    wire lsu_mm_buff_addr_cnt_end;
    wire lsu_mm_buff_ctrl_vld_ff;
    wire lsu_mm_buff_start_pulse;
    wire lsu_mm_buff_start_pulse_ff;
   
    wire [3:0] lsu_mm_buff_ctrl_row;
    wire [3:0] lsu_mm_buff_ctrl_col;

    assign lsu_mm_buff_start_pulse = lsu_mm_buff_ctrl_start;
    assign lsu_mm_buff_ram_read_vld = lsu_mm_buff_ctrl_vld & (~lsu_mm_buff_addr_cnt_end | lsu_mm_buff_start_pulse);

    //if it reach the col_len (y-axis) => end of get data
    assign lsu_mm_buff_addr_cnt_end = (lsu_mm_buff_addr_cnt_ff == lsu_mm_buff_ctrl_col_len);
    assign lsu_mm_buff_addr_cnt = lsu_mm_buff_start_pulse ? 1'b0
                                : lsu_mm_buff_addr_cnt_end ? lsu_mm_buff_addr_cnt_ff 
                                : lsu_mm_buff_addr_cnt_ff + 1'b1;

    DFFR #(.WIDTH(4))
    ff_lsu_mm_buffer_addr_cnt(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_mm_buff_addr_cnt),
        .q(lsu_mm_buff_addr_cnt_ff)
    );

    DFFR #(.WIDTH(1))
    ff_lsu_mm_buff_start_pulse(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_mm_buff_start_pulse),
        .q(lsu_mm_buff_start_pulse_ff)
    );

    DFFR #(.WIDTH(1))
    ff_lsu_mm_buff_ctrl_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_mm_buff_ctrl_vld),
        .q(lsu_mm_buff_ctrl_vld_ff)
    );

    assign lsu_mm_buff_ram_read_addr = lsu_mm_buff_ctrl_vld ? lsu_mm_buff_ctrl_start_addr[11:4] + lsu_mm_buff_addr_cnt 
                                     : lsu_mm_buff_ctrl_start_addr[11:4] + lsu_mm_buff_addr_cnt_ff;
   
    wire [5:0]lsu_mm_buff_cycle_need;
    wire [5:0]lsu_mm_buff_cycle_cnt;
    wire [5:0]lsu_mm_buff_cycle_cnt_ff;
    wire lsu_mm_buff_ent_cnt;
    wire [127:0] lsu_mm_buff_ent_data_raw [15:0];
    wire [127:0] lsu_mm_buff_ent_data_raw_ff [15:0];
    wire [127:0] lsu_mm_buff_ent_data [15:0];
    wire [15:0] lsu_mm_buff_ent_vld [15:0];
    wire [5:0] lsu_mm_buff_offset;
    wire [15:0] lsu_mm_buff_mxu_vld_ff;
    wire lsu_mm_buff_cycle_cnt_end;
    wire lsu_mm_buff_mxu_end_ff;

    assign lsu_mm_buff_cycle_need = (lsu_mm_buff_ctrl_col_len + lsu_mm_buff_ctrl_row_len);
    assign lsu_mm_buff_cycle_cnt = (lsu_mm_buff_start_pulse_ff | lsu_mm_buff_start_pulse) ? 1'b0 
                                 : lsu_mm_buff_ctrl_vld_ff & ~(lsu_mm_buff_cycle_cnt_ff==lsu_mm_buff_cycle_need) ? lsu_mm_buff_cycle_cnt_ff+1 
                                 : lsu_mm_buff_cycle_cnt_ff;
    assign lsu_mm_buff_mxu_end = (lsu_mm_buff_cycle_cnt == lsu_mm_buff_cycle_need) & lsu_mm_buff_ctrl_vld_ff;
    
    DFFR #(.WIDTH(1))
    ff_lsu_mm_buff_mxu_end(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_mm_buff_mxu_end),
        .q(lsu_mm_buff_mxu_end_ff)
    );

    DFFR #(.WIDTH(6))
    ff_lsu_mm_buff_cycle_cnt(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_mm_buff_cycle_cnt),
        .q(lsu_mm_buff_cycle_cnt_ff)
    );
    
    DFFRE #(.WIDTH(16))
    ff_lsu_mm_buff_mxu_vld(
        .clk(clk),
        .rst_n(rst_n),
	.en(lsu_mm_buff_ram_alloc_vld),
        .d(lsu_mm_buff_mxu_vld),
        .q(lsu_mm_buff_mxu_vld_ff)
    );

    wire [15:0]  lsu_mm_buff_mxu_vld_iram;
    wire [127:0] lsu_mm_buff_mxu_data_iram;
    wire [15:0]  lsu_mm_buff_mxu_vld_wram;
    wire [127:0] lsu_mm_buff_mxu_data_wram;

    genvar i;
    generate
        for (i = 0; i < 16 ; i=i+1) begin

    	    assign lsu_mm_buff_ent_data_raw[i] = lsu_mm_buff_ram_alloc_vld & (lsu_mm_buff_addr_cnt_ff == i) ? lsu_mm_buff_ram_alloc_data : lsu_mm_buff_ent_data_raw_ff[i];

    	    DFFRE #(.WIDTH(128))
    	    ff_lsu_mm_buff_ent_data_raw(
            	.clk(clk),
            	.rst_n(rst_n),
	    	 .en(lsu_mm_buff_ram_alloc_vld & (lsu_mm_buff_addr_cnt_ff == i)),
            	.d(lsu_mm_buff_ent_data_raw[i]),
            	.q(lsu_mm_buff_ent_data_raw_ff[i])
   	    );

    	    data_byte_shift data_shifter(
                .in(lsu_mm_buff_ent_data_raw[i]), 
                .offset(lsu_mm_buff_cycle_cnt-i[5:0]+lsu_mm_buff_ctrl_start_addr[3:0]), 
                .out(lsu_mm_buff_ent_data[i])
            );
            //source the data horizontally
            assign lsu_mm_buff_mxu_vld_wram[i] = (lsu_mm_buff_ctrl_vld_ff & lsu_mm_buff_cycle_cnt >= i & i<=lsu_mm_buff_ctrl_col_len) ? (lsu_mm_buff_cycle_cnt<=(i+lsu_mm_buff_ctrl_row_len)) : 1'b0;
            assign lsu_mm_buff_mxu_vld_iram[i] = (lsu_mm_buff_ctrl_vld_ff & lsu_mm_buff_cycle_cnt >= i & i<=lsu_mm_buff_ctrl_row_len) ? (lsu_mm_buff_cycle_cnt<=(i+lsu_mm_buff_ctrl_col_len)) : 1'b0;
    	    assign lsu_mm_buff_mxu_data_wram[i*8+7:i*8] = {lsu_mm_buff_ent_data[i][7:0]};
            assign lsu_mm_buff_mxu_data_iram[127-i*8:127-i*8-7] = {lsu_mm_buff_ent_data[i][7:0]};
	end
    endgenerate

    assign lsu_mm_buff_mxu_data = lsu_mm_buff_ctrl_ram_type ? ((lsu_mm_buff_cycle_cnt > 15) ? lsu_mm_buff_mxu_data_iram << (lsu_mm_buff_cycle_cnt-15)*8 : (lsu_mm_buff_mxu_data_iram >> (15-lsu_mm_buff_cycle_cnt)*8)): lsu_mm_buff_mxu_data_wram;
    assign lsu_mm_buff_mxu_vld =  lsu_mm_buff_mxu_end_ff ? 1'b0 : (lsu_mm_buff_ctrl_ram_type ? lsu_mm_buff_mxu_vld_iram : lsu_mm_buff_mxu_vld_wram);
    

endmodule
