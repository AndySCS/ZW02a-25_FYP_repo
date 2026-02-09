module mm_ctrl_buffer(
    clk,
    rst_n,
    //ram wire
    lsu_mm_buff_ram_alloc_vld,
    lsu_mm_buff_ram_alloc_addr,
    lsu_mm_buff_ram_alloc_data,

    //ctrl wire lsu
    lsu_mm_buff_ctrl_start,
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

    local parameter           STR_LEN  = 4;
    parameter [STR_LEN*8-1:0] RAM_TYPE = "WRAM";

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
    output         lsu_mm_buff_mxu_end;

    wire        lsu_ram_buff_read_vld_nxt;
    wire        lsu_ram_buff_read_vld_raw;
    wire        lsu_ram_buff_read_addr_en;

    wire [11:0] lsu_ram_buff_read_addr_nxt;
    wire [11:0] lsu_ram_buff_read_addr_raw;
    wire        lsu_mm_buff_ram_read_end;
    
    wire [3:0]  lsu_mm_buff_ctrl_row_len_ff;
    wire [3:0]  lsu_mm_buff_ctrl_col_len_ff;
    wire [11:0] lsu_mm_buff_ctrl_start_addr_ff;

    wire [127:0] lsu_mm_buff_ram_alloc_data_shifted;

    wire [3:0] lsu_mm_buff_addr_cnt_nxt;
    wire [3:0] lsu_mm_buff_addr_cnt;
    wire       lsu_mm_buff_addr_cnt_en;
    wire lsu_mm_buff_addr_cnt_end;
   
    wire [3:0] lsu_mm_buff_ctrl_row;
    wire [3:0] lsu_mm_buff_ctrl_col;

    wire lsu_mm_buff_ent_cnt;

    wire [127:0] lsu_mm_buff_ent_data_raw    [15:0];
    wire [127:0] lsu_mm_buff_ent_data_raw_ff [15:0];
    wire [127:0] lsu_mm_buff_ent_data        [15:0];
    wire [15:0]  lsu_mm_buff_ent_alloc_en;
    wire [15:0]  lsu_mm_buff_mxu_vld_ff;

    wire [15:0] lsu_mm_buff_mxu_vld_nxt;
    wire lsu_mm_buff_mxu_end_ff;
    
    DFFR #(.WIDTH(1))
    ff_lsu_mm_buff_ram_read_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_ram_buff_read_vld_nxt),
        .q(lsu_ram_buff_read_vld_raw)
    );    
   
    DFFE #(.WIDTH(12))
    ff_lsu_mm_buff_ram_read_addr(
        .clk(clk),
        .en(lsu_ram_buff_read_addr_en),
        .d(lsu_ram_buff_read_addr_nxt),
        .q(lsu_ram_buff_read_addr_raw)
    );   
    
    assign lsu_mm_buff_ram_read_end   = lsu_mm_buff_ctrl_vld ? ~(|lsu_mm_buff_ctrl_row_len) 
                                      : (lsu_mm_buff_addr_cnt == lsu_mm_buff_ctrl_row_len_ff);
    assign lsu_ram_buff_read_vld_nxt  = lsu_mm_buff_ram_read_vld & ~(lsu_mm_buff_ram_read_end);
    assign lsu_ram_buff_read_addr_en  = lsu_mm_buff_ram_read_vld;
    assign lsu_ram_buff_read_addr_nxt = lsu_mm_buff_ram_read_vld ? lsu_mm_buff_ctrl_start_addr + 12'h10
                                      : lsu_ram_buff_read_addr_raw + 12'h10;

    assign lsu_mm_buff_ram_read_vld  = lsu_ram_buff_read_vld_raw | lsu_mm_buff_ctrl_vld;
    assign lsu_mm_buff_ram_read_addr = lsu_mm_buff_ctrl_vld ? lsu_mm_buff_ctrl_start_addr[11:4] 
                                     : lsu_ram_buff_read_addr_raw[11:4];
    
    DFFE #(.WIDTH(4))
    ff_lsu_mm_buff_ctrl_row_len(
        .clk(clk),
        .en(lsu_mm_buff_ctrl_vld),
        .d(lsu_mm_buff_ctrl_row_len),
        .q(lsu_mm_buff_ctrl_row_len_ff)
    );

    DFFE #(.WIDTH(4))
    ff_lsu_mm_buff_ctrl_col_len(
        .clk(clk),
        .en(lsu_mm_buff_ctrl_vld),
        .d(lsu_mm_buff_ctrl_col_len),
        .q(lsu_mm_buff_ctrl_col_len_ff)
    );

    DFFE #(.WIDTH(12))
    ff_lsu_mm_buff_ctrl_start_addr(
        .clk(clk),
        .en(lsu_mm_buff_ctrl_vld),
        .d(lsu_mm_buff_ctrl_start_addr),
        .q(lsu_mm_buff_ctrl_start_addr_ff)
    );

    assign lsu_mm_buff_addr_cnt_en = lsu_mm_buff_ctrl_vld | lsu_mm_buff_ram_alloc_vld;
    assign lsu_mm_buff_addr_cnt_nxt = lsu_mm_buff_ctrl_vld ? 4'b0 : (lsu_mm_buff_addr_cnt + 4'b1);

    DFFE #(.WIDTH(12))
    ff_lsu_mm_buff_ctrl_addr_cnt(
        .clk(clk),
        .en(lsu_mm_buff_addr_cnt_en),
        .d(lsu_mm_buff_addr_cnt_nxt),
        .q(lsu_mm_buff_addr_cnt)
    );

    data_byte_shift ram_data_byte_shift(
        .in(lsu_mm_buff_ram_alloc_data), 
        .offset(lsu_mm_buff_ctrl_start_addr_ff[3:0]), 
        .out(lsu_mm_buff_ram_alloc_data_shifted)
    );

    genvar i;
    generate

    if (RAM_TYPE == "WRAM") begin
        wire [3:0]  lsu_mm_buff_cycle_cnt     [15:0];
        wire [3:0]  lsu_mm_buff_cycle_cnt_nxt [15:0];
        wire [15:0] lsu_mm_buff_cycle_cnt_en;
        wire [15:0] lsu_mm_buff_cycle_cnt_end;
    end
    else if(RAM_TYPE == "IRAM") begin
    end

    for (i = 0; i < 16 ; i=i+1) begin

        if (RAM_TYPE == "WRAM") begin
            assign lsu_mm_buff_cycle_cnt_nxt[i] = lsu_mm_buff_ctrl_vld ? 4'b0 : lsu_mm_buff_cycle_cnt[i] + 4'b1;
            assign lsu_mm_buff_cycle_cnt_en[i]  = lsu_mm_buff_ctrl_vld 
                                                | lsu_mm_buff_ram_alloc_vld & (lsu_mm_buff_addr_cnt == i) 
                                                | (|lsu_mm_buff_cycle_cnt[i]) & ~lsu_mm_buff_cycle_cnt_end[i];
            assign lsu_mm_buff_cycle_cnt_end[i] = (lsu_mm_buff_cycle_cnt[i] == lsu_mm_buff_ctrl_col_len_ff);
            assign lsu_mm_buff_mxu_vld_nxt[i]   = lsu_mm_buff_ram_alloc_vld & (lsu_mm_buff_addr_cnt == i)
                                                | lsu_mm_buff_mxu_vld[i] & ~lsu_mm_buff_cycle_cnt_end[i];

    	    DFFE #(.WIDTH(4))
    	    ff_lsu_mm_buff_cycle_cnt(
            	.clk(clk),
	        	.en(lsu_mm_buff_cycle_cnt_en[i]),
            	.d(lsu_mm_buff_cycle_cnt_nxt[i]),
            	.q(lsu_mm_buff_cycle_cnt[i])
   	        );

            assign lsu_mm_buff_ent_alloc_en[i] = lsu_mm_buff_ram_alloc_vld & (lsu_mm_buff_addr_cnt == i);
    	    assign lsu_mm_buff_ent_data_raw[i] = lsu_mm_buff_ram_alloc_vld ? lsu_mm_buff_ram_alloc_data_shifted 
                                               : {lsu_mm_buff_ent_data_raw_ff[i][7:0], lsu_mm_buff_ent_data_raw_ff[i][127:8]};

            assign lsu_mm_buff_mxu_data[i*8+7:i*8] = {lsu_mm_buff_ent_data_raw_ff[i][7:0]};
        end
        else if(RAM_TYPE == "IRAM") begin
            if (i == 0) begin
                assign lsu_mm_buff_ent_alloc_en[i] = lsu_mm_buff_ctrl_vld;
                assign lsu_mm_buff_mxu_vld_nxt[i]  = lsu_mm_buff_ctrl_vld;
                assign lsu_mm_buff_ent_data_raw[i] = lsu_mm_buff_ram_alloc_data_shifted;
            end
            else begin
                assign lsu_mm_buff_ent_alloc_en[i] = lsu_mm_buff_mxu_vld[i-1] & ~(i <= lsu_mm_buff_ctrl_row_len_ff);
                assign lsu_mm_buff_mxu_vld_nxt[i]  = lsu_mm_buff_mxu_vld[i-1] & ~(i <= lsu_mm_buff_ctrl_row_len_ff);
                assign lsu_mm_buff_ent_data_raw[i] = lsu_mm_buff_ent_data_raw_ff[i-1];
            end

            assign lsu_mm_buff_mxu_data[i*8+7:i*8] = {lsu_mm_buff_ent_data_raw_ff[i][i*8+7:i*8]};
        end
        
    	DFFE #(.WIDTH(128))
    	ff_lsu_mm_buff_ent_data_raw(
        	.clk(clk),
	    	.en(lsu_mm_buff_ent_alloc_en[i]),
        	.d(lsu_mm_buff_ent_data_raw[i]),
        	.q(lsu_mm_buff_ent_data_raw_ff[i])
   	    );

    end

    endgenerate

    DFFR #(.WIDTH(16))
    ff_lsu_mm_buff_mxu_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_mm_buff_mxu_vld_nxt),
        .q(lsu_mm_buff_mxu_vld)
    ); 

endmodule
