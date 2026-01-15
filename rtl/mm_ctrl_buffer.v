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
        lsu_mm_buff_ctrl_start_addr,

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

    input          lsu_mm_buff_ctrl_vld;
    input  [3:0]   lsu_mm_buff_ctrl_row_len;
    input  [3:0]   lsu_mm_buff_ctrl_col_len;
    input  [11:0]  lsu_mm_buff_ctrl_start_addr;

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
   

    assign lsu_mm_buff_start_pulse = lsu_mm_buff_ctrl_vld & ~lsu_mm_buff_ctrl_vld_ff;
    assign lsu_mm_buff_ram_read_vld = lsu_mm_buff_ctrl_vld & (~lsu_mm_buff_addr_cnt_end | lsu_mm_buff_start_pulse);

    assign lsu_mm_buff_addr_cnt_end = lsu_mm_buff_addr_cnt_ff == lsu_mm_buff_ctrl_row_len;
    assign lsu_mm_buff_addr_cnt = lsu_mm_buff_start_pulse ? 1'b0 : lsu_mm_buff_addr_cnt_end ? lsu_mm_buff_addr_cnt_ff : lsu_mm_buff_addr_cnt_ff + 1'b1;

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

    assign lsu_mm_buff_ram_read_addr = lsu_mm_buff_ctrl_vld ? lsu_mm_buff_ctrl_start_addr[11:4] + lsu_mm_buff_addr_cnt : lsu_mm_buff_ctrl_start_addr[11:4] + lsu_mm_buff_addr_cnt_ff;
   
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
    assign lsu_mm_buff_cycle_cnt = (lsu_mm_buff_start_pulse_ff | lsu_mm_buff_start_pulse) ? 1'b0 : lsu_mm_buff_ctrl_vld_ff & ~(lsu_mm_buff_cycle_cnt_ff==lsu_mm_buff_cycle_need) ? lsu_mm_buff_cycle_cnt_ff+1 : lsu_mm_buff_cycle_cnt_ff;	
    assign lsu_mm_buff_mxu_end = lsu_mm_buff_cycle_cnt == lsu_mm_buff_cycle_need & lsu_mm_buff_ctrl_vld_ff;
    
    DFFR #(.WIDTH(6))
    ff_lsu_mm_buff_cycle_cnt(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_mm_buff_cycle_cnt),
        .q(lsu_mm_buff_cycle_cnt_ff)
    );
    //assign lsu_mm_buff_mxu_vld = lsu_mm_buff_ctrl_vld_ff ? (lsu_mm_buff_ram_alloc_vld ? {16{1'b1}} >> 5'd15-lsu_mm_buff_addr_cnt_ff : ((lsu_mm_buff_ctrl_col_len<lsu_mm_buff_cycle_cnt) ? lsu_mm_buff_mxu_vld_ff >> (lsu_mm_buff_cycle_cnt-lsu_mm_buff_addr_cnt_ff) << (lsu_mm_buff_cycle_cnt-lsu_mm_buff_addr_cnt_ff) : {16{1'b1}} >> 5'd15-lsu_mm_buff_addr_cnt_ff)) : 16'b0; 
    DFFRE #(.WIDTH(16))
    ff_lsu_mm_buff_mxu_vld(
        .clk(clk),
        .rst_n(rst_n),
	.en(lsu_mm_buff_ram_alloc_vld),
        .d(lsu_mm_buff_mxu_vld),
        .q(lsu_mm_buff_mxu_vld_ff)
    );

    genvar i;
    generate
        for (i = 0; i < 16 ; i=i+1) begin
    		assign lsu_mm_buff_ent_data_raw[i] = lsu_mm_buff_ram_alloc_vld & (lsu_mm_buff_addr_cnt_ff == i) ? lsu_mm_buff_ram_alloc_data : lsu_mm_buff_ent_data_raw_ff[i];
    		DFFRE #(.WIDTH(128))
    		ff_lsu_mm_buff_ent_data_raw(
        		.clk(clk),
        		.rst_n(rst_n),
        		.d(lsu_mm_buff_ent_data_raw[i]),
			.en(lsu_mm_buff_ram_alloc_vld & (lsu_mm_buff_addr_cnt_ff == i)),
        		.q(lsu_mm_buff_ent_data_raw_ff[i])
   		    );
    		data_byte_shift data_shifter0(.in(lsu_mm_buff_ent_data_raw[i]), .offset(lsu_mm_buff_cycle_cnt-i), .out(lsu_mm_buff_ent_data[i]));
		assign lsu_mm_buff_mxu_vld[i] = (lsu_mm_buff_ctrl_vld_ff & lsu_mm_buff_cycle_cnt >= i & i<=lsu_mm_buff_ctrl_row_len) ? (lsu_mm_buff_cycle_cnt<=(i+lsu_mm_buff_ctrl_col_len)) : 1'b0;	
    		assign lsu_mm_buff_mxu_data[i*8+7:i*8] = {lsu_mm_buff_ent_data[i][7:0]};
	end
    endgenerate

    //data_byte_shifter data_shifter0(.in(lsu_mm_buff_ent_data_raw[0]), .offset(lsu_mm_buff_addr_cnt_ff), .out(lsu_mm_buff_ent_data[0]));

    //data_byte_shift data_shifter0(.in(lsu_mm_buff_ent_data_raw[0]), .offset(lsu_mm_buff_addr_cnt_ff), .out(lsu_mm_buff_ent_data[0]));
    //extract the data start from start_addr[3:0] => col_len;
    //assign lsu_mm_buff_ent_data[0] = {8{lsu_mm_buff_ram_alloc_vld}} & lsu_mm_buff_ent_data[0][7:0];
    

endmodule







