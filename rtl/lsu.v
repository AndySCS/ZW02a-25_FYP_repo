module lsu(
    clk,
    rst_n,

    //from idu
    idu_lsu_vld,
    idu_lsu_ld_iram,
    idu_lsu_ld_wram,
    idu_lsu_st_iram,
    idu_lsu_st_wram,
    idu_lsu_st_oram,
    idu_lsu_st_dram,
    idu_lsu_conv,
    idu_lsu_act,
    idu_lsu_pool,
    idu_lsu_wfi,
    idu_lsu_dram_addr,
    idu_lsu_num,
    idu_lsu_len,
    idu_lsu_str,
    idu_lsu_start_x,
    idu_lsu_start_y,
    idu_lsu_ld_st_addr,
    idu_lsu_st_low,
    idu_lsu_iram_start_addr,
    idu_lsu_iram_col_dir,
    idu_lsu_iram_row_dir,
    idu_lsu_iram_col_len,
    idu_lsu_iram_row_len,
    idu_lsu_wram_start_addr,
    idu_lsu_wram_col_dir,
    idu_lsu_wram_row_dir,
    idu_lsu_wram_col_len,
    idu_lsu_wram_row_len,
    idu_lsu_act_type,
    idu_lsu_pool_size,

    //from axi write 
    axi_lsu_awrdy,
    axi_lsu_wrdy,
    axi_lsu_bid,
    axi_lsu_bresp,
    axi_lsu_bvld,
    axi_lsu_resp_oram_addr,

    //from axi read
    axi_lsu_arrdy,
    axi_lsu_rid,
    axi_lsu_rdata,
    axi_lsu_rresp,
    axi_lsu_rlast,
    axi_lsu_rvld,

    //to idu
    lsu_idu_rdy,

    //to mxu
    lsu_mxu_vld,
    lsu_mxu_clr,
    lsu_mxu_iram_vld,
    lsu_mxu_iram_pld,
    lsu_mxu_wram_vld,
    lsu_mxu_wram_pld,
    lsu_mxu_pool_vld,
    lsu_mxu_pool_size,
    lsu_mxu_act_vld,
    lsu_mxu_act_type,
    lsu_mxu_wfi,


    mxu_lsu_int8_row0_data,
    mxu_lsu_int16_row0_data,
    mxu_lsu_int8_row1_data,
    mxu_lsu_int16_row1_data,
    mxu_lsu_int8_row2_data,
    mxu_lsu_int16_row2_data,
    mxu_lsu_int8_row3_data,
    mxu_lsu_int16_row3_data,
    mxu_lsu_int8_row4_data,
    mxu_lsu_int16_row4_data,
    mxu_lsu_int8_row5_data,
    mxu_lsu_int16_row5_data,
    mxu_lsu_int8_row6_data,
    mxu_lsu_int16_row6_data,
    mxu_lsu_int8_row7_data,
    mxu_lsu_int16_row7_data,
    mxu_lsu_int8_row8_data,
    mxu_lsu_int16_row8_data,
    mxu_lsu_int8_row9_data,
    mxu_lsu_int16_row9_data,
    mxu_lsu_int8_row10_data,
    mxu_lsu_int16_row10_data,
    mxu_lsu_int8_row11_data,
    mxu_lsu_int16_row11_data,
    mxu_lsu_int8_row12_data,
    mxu_lsu_int16_row12_data,
    mxu_lsu_int8_row13_data,
    mxu_lsu_int16_row13_data,
    mxu_lsu_int8_row14_data,
    mxu_lsu_int16_row14_data,
    mxu_lsu_int8_row15_data,
    mxu_lsu_int16_row15_data,
    mxu_lsu_data_rdy,
    mxu_lsu_rdy,

    //to axi write
    lsu_axi_awid,
    lsu_axi_awaddr,
    lsu_axi_awlen,
    lsu_axi_awsize,
    lsu_axi_awburst,
    lsu_axi_awstr,
    lsu_axi_awnum,
    lsu_axi_awvld,
    lsu_axi_oram_addr,
    lsu_axi_wdata,
    lsu_axi_wstrb,
    lsu_axi_wlast,
    lsu_axi_wvld,
    lsu_axi_brdy,

    //to axi read
    lsu_axi_arid,
    lsu_axi_araddr,
    lsu_axi_arlen,
    lsu_axi_arsize,
    lsu_axi_arburst,
    lsu_axi_arstr,
    lsu_axi_arnum,
    lsu_axi_arvld,
    lsu_axi_rrdy

);
    input clk;
    input rst_n;

    //from idu
    //instruction related
    input idu_lsu_vld;
    input idu_lsu_ld_iram;
    input idu_lsu_ld_wram;
    input idu_lsu_st_iram;
    input idu_lsu_st_wram;
    input idu_lsu_st_oram;
    input idu_lsu_st_dram;
    input idu_lsu_conv;
    input idu_lsu_act;
    input idu_lsu_pool;
    input idu_lsu_wfi;

    //paylaod related for load store
    input [30:0] idu_lsu_dram_addr;
    input [7:0] idu_lsu_num;
    input [2:0] idu_lsu_len;
    input [2:0] idu_lsu_str;
    input [3:0] idu_lsu_start_x;
    input [3:0] idu_lsu_start_y;
    input [11:0] idu_lsu_ld_st_addr;
    input idu_lsu_st_low;

    //payload related for matrix mutiplication
    input [11:0] idu_lsu_iram_start_addr;
    input idu_lsu_iram_col_dir;
    input idu_lsu_iram_row_dir;
    input [3:0] idu_lsu_iram_col_len;
    input [3:0] idu_lsu_iram_row_len;

    input [11:0]idu_lsu_wram_start_addr;
    input idu_lsu_wram_col_dir;
    input idu_lsu_wram_row_dir;
    input [3:0] idu_lsu_wram_col_len;
    input [3:0] idu_lsu_wram_row_len;

    //payload for other instructions
    input [1:0] idu_lsu_act_type;
    input [1:0] idu_lsu_pool_size; 

    //from axi write
    input axi_lsu_awrdy;
    input axi_lsu_wrdy;
    input axi_lsu_bid;
    input [1:0] axi_lsu_bresp;
    input axi_lsu_bvld;
    input [11:0] axi_lsu_resp_oram_addr;

    //from axi read
    input axi_lsu_arrdy;
    input [7:0] axi_lsu_rid;
    input [63:0] axi_lsu_rdata;
    input [1:0] axi_lsu_rresp;
    input axi_lsu_rlast;
    input axi_lsu_rvld;

    //from mxu
    input [127:0] mxu_lsu_int8_row0_data;
    input [255:0] mxu_lsu_int16_row0_data;
    input [127:0] mxu_lsu_int8_row1_data;
    input [255:0] mxu_lsu_int16_row1_data;
    input [127:0] mxu_lsu_int8_row2_data;
    input [255:0] mxu_lsu_int16_row2_data;
    input [127:0] mxu_lsu_int8_row3_data;
    input [255:0] mxu_lsu_int16_row3_data;
    input [127:0] mxu_lsu_int8_row4_data;
    input [255:0] mxu_lsu_int16_row4_data;
    input [127:0] mxu_lsu_int8_row5_data;
    input [255:0] mxu_lsu_int16_row5_data;
    input [127:0] mxu_lsu_int8_row6_data;
    input [255:0] mxu_lsu_int16_row6_data;
    input [127:0] mxu_lsu_int8_row7_data;
    input [255:0] mxu_lsu_int16_row7_data;
    input [127:0] mxu_lsu_int8_row8_data;
    input [255:0] mxu_lsu_int16_row8_data;
    input [127:0] mxu_lsu_int8_row9_data;
    input [255:0] mxu_lsu_int16_row9_data;
    input [127:0] mxu_lsu_int8_row10_data;
    input [255:0] mxu_lsu_int16_row10_data;
    input [127:0] mxu_lsu_int8_row11_data;
    input [255:0] mxu_lsu_int16_row11_data;
    input [127:0] mxu_lsu_int8_row12_data;
    input [255:0] mxu_lsu_int16_row12_data;
    input [127:0] mxu_lsu_int8_row13_data;
    input [255:0] mxu_lsu_int16_row13_data;
    input [127:0] mxu_lsu_int8_row14_data;
    input [255:0] mxu_lsu_int16_row14_data;
    input [127:0] mxu_lsu_int8_row15_data;
    input [255:0] mxu_lsu_int16_row15_data;
    input mxu_lsu_data_rdy;
    input mxu_lsu_rdy;

    //to idu
    output lsu_idu_rdy;

    //to mxu
    output lsu_mxu_vld;
    output lsu_mxu_clr;
    output [15:0] lsu_mxu_iram_vld;
    output [127:0] lsu_mxu_iram_pld;
    output [15:0] lsu_mxu_wram_vld;
    output [127:0] lsu_mxu_wram_pld;
    output lsu_mxu_pool_vld;
    output [1:0] lsu_mxu_pool_size;
    output lsu_mxu_act_vld;
    output [1:0] lsu_mxu_act_type;
    output lsu_mxu_wfi;

    //to axi interface
    //for write interface
    output [7:0] lsu_axi_awid;
    output [9:0] lsu_axi_awaddr;
    output [7:0] lsu_axi_awlen;
    output [2:0] lsu_axi_awsize;
    output [1:0] lsu_axi_awburst;
    output [2:0] lsu_axi_awstr;
    output [7:0] lsu_axi_awnum;
    output lsu_axi_awvld;
    output [11:0] lsu_axi_oram_addr;
    output [63:0] lsu_axi_wdata;
    output lsu_axi_wstrb;
    output lsu_axi_wlast;
    output lsu_axi_wvld;
    output lsu_axi_brdy;
    //for read interface
    output [7:0] lsu_axi_arid;
    output [9:0] lsu_axi_araddr;
    output [7:0] lsu_axi_arlen;
    output [2:0] lsu_axi_arsize;
    output [7:0] lsu_axi_arnum;
    output [1:0] lsu_axi_arburst;
    output [2:0] lsu_axi_arstr;
    output lsu_axi_arvld;
    output lsu_axi_rrdy;
   
    //for new instr
    wire lsu_instr_vld;
    wire lsu_rdy_nxt;
    wire lsu_rdy;

    //for instr end
    wire lsu_instr_finish;

    //for store instr
    wire lsu_st;
    wire [1:0] lsu_st_type;
    wire lsu_st_finish;

    //for load instr
    wire lsu_ld_finish;

    //for mm instr
    wire lsu_mm_finish;

    //for sram
    wire lsu_iram_we;
    wire lsu_iram_ce;
    wire [7:0] lsu_iram_addr;
    wire [127:0] lsu_iram_din;
    wire [127:0] lsu_iram_dout;

    wire lsu_wram_we;
    wire lsu_wram_ce;
    wire [7:0] lsu_wram_addr;
    wire [127:0] lsu_wram_din;
    wire [127:0] lsu_wram_dout;
    
    wire lsu_oram_we;
    wire lsu_oram_ce;
    wire [7:0] lsu_oram_addr;
    wire [127:0] lsu_oram_din;
    wire [127:0] lsu_oram_dout;

    wire lsu_vld_nxt;
    wire lsu_vld;



    assign lsu_instr_vld = idu_lsu_vld & lsu_idu_rdy;
    assign lsu_vld_nxt = lsu_instr_vld | lsu_vld & ~lsu_instr_finish;

    assign lsu_instr_finish = lsu_st_finish | lsu_ld_finish | lsu_mm_finish;
    assign lsu_idu_rdy =  ~lsu_vld|lsu_instr_finish; 


    DFFR #(.WIDTH(1))
    ff_lsu_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_vld_nxt),
        .q(lsu_vld)
    );
    wire lsu_st_iram_ff;
    wire lsu_st_wram_ff;
    wire lsu_st_oram_ff;
    wire lsu_st_dram_ff;
    DFFR #(.WIDTH(1))
    ff_lsu_st_iram(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_st_iram),
        .q(lsu_st_iram_ff)
    );

    DFFR #(.WIDTH(1))
    ff_lsu_st_wram(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_st_wram),
        .q(lsu_st_wram_ff)
    );
    DFFR #(.WIDTH(1))
    ff_lsu_st_oram(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_st_oram),
        .q(lsu_st_oram_ff)
    );
    DFFR #(.WIDTH(1))
    ff_lsu_st_dram(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_st_dram),
        .q(lsu_st_dram_ff)
    );
    
    //FOR store instr


    wire lsu_st_en;
    wire lsu_st_vld_ff;
    //assign lsu_st_vld = lsu_vld & (idu_lsu_st_iram_ff | idu_lsu_st_wram_ff | idu_lsu_st_wram_ff | idu_lsu_st_wram_ff);
    assign lsu_st_vld = lsu_vld & (lsu_st_iram_ff | lsu_st_wram_ff | lsu_st_wram_ff | lsu_st_wram_ff);
    assign lsu_st_en = lsu_st_vld | lsu_st_finish;
    DFFRE #(.WIDTH(1))
    ff_lsu_st_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_vld),
        .en(lsu_st_en),
        .q(lsu_st_vld_ff)
    );
    //check what store is it
    //lsu_st_type[0] == type1 store
    //lsu_st_type[1] == type2 store
    //00 : iram
    //01 : wram
    //10 : oram
    //11 : dram
    assign lsu_st_type = lsu_st_iram_ff ? 2'b00 : 
                         lsu_st_wram_ff ? 2'b01 :
                         lsu_st_oram_ff ? 2'b10 : 2'b11;
   
     
    wire [1:0] lsu_st_type_ff;
    DFFRE #(.WIDTH(2))
    ff_lsu_st_type(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type),
        .en(lsu_st_en),
        .q(lsu_st_type_ff)
    );
    //type1 sram store
    //basic flow
    //1/check the incoming idu instr vld
    //2/check the mxu rdy
    //3/get the mxu data
    //4/assign the sram memory wrapper element
    //a/cen
    //b/wen
    //c/addr
    //d/din

    //if the incoming instruction is vld pull high st_type1 qual
    wire lsu_st_type1_qual;
    wire lsu_st_type1_qual_ff;
    assign lsu_st_type1_qual = lsu_st_vld ? (lsu_st_vld & ~lsu_st_type[1]) & mxu_lsu_data_rdy : (lsu_st_vld_ff & ~lsu_st_type_ff[1]) & mxu_lsu_data_rdy;

    DFFRE #(.WIDTH(1))
    ff_lsu_st_type_qual(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type1_qual),
        .en(lsu_st_en),
        .q(lsu_st_type1_qual_ff)
    );
    wire lsu_st_type1_done;
    //MXU count
    //choose the row by Y
    //total 16 row
    //start = start Y
    //end   = start Y + len

    //assign lsu_st_sram_done = lsu_st_sram_count_row == (lsu_st_mxu_start_y+lsu_st_sram_num);
    wire lsu_st_type1_doing;
    wire [3:0] lsu_st_type1_cnt_row_nxt;
    wire [3:0] lsu_st_type1_cnt_row;
    wire lsu_st_type1_cnt_row_en;

    assign lsu_st_type1_done = lsu_st_type1_cnt_row == (idu_lsu_start_y + idu_lsu_len);
    assign lsu_st_type1_doing = (lsu_st_type1_qual | lsu_st_type1_qual_ff) & ~lsu_st_type1_done;
    //if is start, then assign startY as first row
    //else if not yet end assign startY+1;
    //else assign currentY
    assign lsu_st_type1_cnt_row_nxt = lsu_st_vld & lsu_st_type1_doing ? idu_lsu_start_y + 1'b1 : lsu_st_type1_cnt_row + 1;
    assign lsu_st_type1_cnt_row_en = lsu_st_type1_doing | lsu_st_vld;
    
    DFFRE #(.WIDTH(4))
    ff_lsu_type1_cnt_row (
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type1_cnt_row_nxt),
        .en(lsu_st_type1_cnt_row_en),
        .q(lsu_st_type1_cnt_row)
    );
    //get the mxu row
    wire [3:0]lsu_st_type1_row_sel;
    wire [127:0] lsu_st_type1_din_int8_raw;
    assign lsu_st_type1_row_sel = lsu_st_vld & lsu_st_type1_doing ? idu_lsu_start_y : lsu_st_type1_cnt_row;

    mux16 #(.WIDTH(128)) mux16rowdata_int8(.in0(mxu_lsu_int8_row0_data),
                                         .in1(mxu_lsu_int8_row1_data),
                                         .in2(mxu_lsu_int8_row2_data),
                                         .in3(mxu_lsu_int8_row3_data),
                                         .in4(mxu_lsu_int8_row4_data),
                                         .in5(mxu_lsu_int8_row5_data),
                                         .in6(mxu_lsu_int8_row6_data),
                                         .in7(mxu_lsu_int8_row7_data),
                                         .in8(mxu_lsu_int8_row8_data),
                                         .in9(mxu_lsu_int8_row9_data),
                                         .in10(mxu_lsu_int8_row10_data),
                                         .in11(mxu_lsu_int8_row11_data),
                                         .in12(mxu_lsu_int8_row12_data),
                                         .in13(mxu_lsu_int8_row13_data),
                                         .in14(mxu_lsu_int8_row14_data),
                                         .in15(mxu_lsu_int8_row15_data),
                                         .sel(lsu_st_type1_row_sel),
                                         .out(lsu_st_type1_din_int8_raw)
                                        );
    //get the use col
    wire [127:0] lsu_st_type1_din_int8_qual;

    //filter the useable element in int8 => 128bit
    //by the start_x and the len
    //assume it will not over the boundary limit
    wire [7:0] lsu_st_type1_shift_len;
    wire [7:0] lsu_st_type1_shift_start;

    wire [7:0] lsu_st_type1_shift_end;
    wire lsu_st_type1_ce;
    wire lsu_st_type1_we;

    wire [7:0] lsu_st_type1_addr;
    wire [7:0] lsu_st_type1_addr_nxt;

    wire [7:0] lsu_st_type1_addr_ff;
    //since our target is start_x*8
    //so we need shift 3 bit to get *8
    dec_len dec_data_len(.in(idu_lsu_len), .out(lsu_st_type1_shift_len));
    assign lsu_st_type1_shift_start = idu_lsu_start_x << 2'd3;
    assign lsu_st_type1_shift_end = 8'd128-lsu_st_type1_shift_start-lsu_st_type1_shift_len;
    assign lsu_st_type1_din_int8_qual = lsu_st_type1_din_int8_raw >> lsu_st_type1_shift_start << lsu_st_type1_shift_end >> lsu_st_type1_shift_end;
    assign lsu_st_type1_ce =  lsu_st_type1_doing;
    assign lsu_st_type1_we =  lsu_st_type1_doing;
	
    assign lsu_st_type1_addr = (lsu_st_type1_qual&lsu_st_vld) ? idu_lsu_ld_st_addr[11:4] : lsu_st_type1_addr_ff;
    assign lsu_st_type1_addr_nxt = lsu_st_type1_addr + 1;

    DFFRE #(.WIDTH(8))
    ff_lsu_type1_store_addr (
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type1_addr_nxt),
        .en(lsu_st_type1_doing),
        .q(lsu_st_type1_addr_ff)
    );
    
    wire lsu_st_type1_iram_we;
    wire lsu_st_type1_iram_ce;
    wire [7:0] lsu_st_type1_iram_addr;
    wire [127:0] lsu_st_type1_iram_din;

    assign lsu_st_type1_iram_we   = lsu_st_vld ? (~lsu_st_type[1] & ~lsu_st_type[0] & lsu_st_type1_we) : (~lsu_st_type_ff[1] & ~lsu_st_type_ff[0] & lsu_st_type1_we);
    assign lsu_st_type1_iram_ce   = lsu_st_vld ? (~lsu_st_type[1] & ~lsu_st_type[0] & lsu_st_type1_ce) : (~lsu_st_type_ff[1] & ~lsu_st_type_ff[0] & lsu_st_type1_ce);
    assign lsu_st_type1_iram_addr = lsu_st_vld ? {8{~lsu_st_type[1] & ~lsu_st_type[0]}} & lsu_st_type1_addr : {8{~lsu_st_type_ff[1] & ~lsu_st_type_ff[0]}} & lsu_st_type1_addr;
    assign lsu_st_type1_iram_din  = lsu_st_vld ? {128{~lsu_st_type[1] & ~lsu_st_type[0]}} & lsu_st_type1_din_int8_qual : {128{~lsu_st_type_ff[1] & ~lsu_st_type_ff[0]}} & lsu_st_type1_din_int8_qual;
    assign lsu_iram_dout = 128'b0;
//    mux16 #(.WIDTH(9)) mux16rowdata_int16(.in0(mxu_lsu_int16_row0_data),
//                                         .in1(mxu_lsu_int16_row1_data),
//                                         .in2(mxu_lsu_int16_row2_data),
//                                         .in3(mxu_lsu_int16_row3_data),
//                                         .in4(mxu_lsu_int16_row4_data),
//                                         .in5(mxu_lsu_int16_row5_data),
//                                         .in6(mxu_lsu_int16_row6_data),
//                                         .in7(mxu_lsu_int16_row7_data),
//                                         .in8(mxu_lsu_int16_row8_data),
//                                         .in9(mxu_lsu_int16_row9_data),
//                                         .in10(mxu_lsu_int16_row10_data),
//                                         .in11(mxu_lsu_int16_row11_data),
//                                         .in12(mxu_lsu_int16_row12_data),
//                                         .in13(mxu_lsu_int16_row13_data),
//                                         .in14(mxu_lsu_int16_row14_data),
//                                         .in15(mxu_lsu_int16_row15_data),
//                                         .sel(lsu_st_type1_row_sel),
//                                         .out(lsu_st_type1_din_int16_raw)
//                                        );




    assign lsu_st_finish = 1'b0;
    //FOR load instr
    assign lsu_ld_finish = 1'b0;
    
    //FOR mm instr
    assign lsu_mm_finish = 1'b0;

    //FOR sram memory wrapper


    assign lsu_iram_we   = lsu_st_type1_iram_we;
    assign lsu_iram_ce   = lsu_st_type1_iram_ce;
    assign lsu_iram_addr = lsu_st_type1_iram_addr;
    assign lsu_iram_din  = lsu_st_type1_iram_din;
    assign lsu_iram_dout = 128'b0;

    mem_wrapper #(.DATA_WIDTH(128))
    iram(
        .clk (clk),
        .we  (lsu_iram_we), 
        .ce  (lsu_iram_ce),
        .addr(lsu_iram_addr),
        .din (lsu_iram_din),
        .dout(lsu_iram_dout)
    );

    assign lsu_wram_we   = (~lsu_st_type[1]&lsu_st_type[0]) & lsu_st_type1_we;
    assign lsu_wram_ce   = (~lsu_st_type[1] & lsu_st_type[0] & lsu_st_type1_ce);
    assign lsu_wram_addr = {8{~lsu_st_type[1] & lsu_st_type[0]}} & lsu_st_type1_addr;
    assign lsu_wram_din  = {128{~lsu_st_type[1] & lsu_st_type[0]}} & lsu_st_type1_din_int8_qual;
    assign lsu_wram_dout = 128'b0;

    mem_wrapper #(.DATA_WIDTH(128))
    wram(
        .clk (clk),
        .we  (lsu_wram_we), 
        .ce  (lsu_wram_ce),
        .addr(lsu_wram_addr),
        .din (lsu_wram_din),
        .dout(lsu_wram_dout)
    );

    assign lsu_oram_we   = 1'b0;
    assign lsu_oram_ce   = 1'b0;
    assign lsu_oram_addr = 8'b0;
    assign lsu_oram_din  = 128'b0;
    assign lsu_oram_dout = 128'b0;

    mem_wrapper #(.DATA_WIDTH(128))
    oram(
        .clk (clk),
        .we  (lsu_oram_we), 
        .ce  (lsu_oram_ce),
        .addr(lsu_oram_addr),
        .din (lsu_oram_din),
        .dout(lsu_oram_dout)
    );

endmodule   

