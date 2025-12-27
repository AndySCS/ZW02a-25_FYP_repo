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
    output [4:0] lsu_axi_awnum;
    output lsu_axi_awvld;
    output [11:0] lsu_axi_oram_addr;
    output [63:0] lsu_axi_wdata;
    output [7:0] lsu_axi_wstrb;
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

    wire lsu_st_type1_doing;

    wire [7:0] lsu_oram_addr_ff;

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
    wire lsu_ld_iram_ff;
    wire lsu_ld_wram_ff;

    wire lsu_st_iram_pulse;
    wire lsu_st_wram_pulse;
    wire lsu_st_oram_pulse;
    wire lsu_st_dram_pulse;
    wire lsu_ld_iram_pulse;
    wire lsu_ld_wram_pulse;

    assign lsu_st_iram_pulse = idu_lsu_st_iram & lsu_instr_vld;
    assign lsu_st_wram_pulse = idu_lsu_st_wram & lsu_instr_vld;
    assign lsu_st_oram_pulse = idu_lsu_st_oram & lsu_instr_vld;
    assign lsu_st_dram_pulse = idu_lsu_st_dram & lsu_instr_vld;
    assign lsu_ld_iram_pulse = idu_lsu_ld_iram & lsu_instr_vld;
    assign lsu_ld_wram_pulse = idu_lsu_ld_wram & lsu_instr_vld;

    DFFR #(.WIDTH(1))
    ff_lsu_st_iram(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_iram_pulse),
        .q(lsu_st_iram_ff)
    );

    DFFR #(.WIDTH(1))
    ff_lsu_st_wram(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_wram_pulse),
        .q(lsu_st_wram_ff)
    );
    DFFR #(.WIDTH(1))
    ff_lsu_st_oram(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_oram_pulse),
        .q(lsu_st_oram_ff)
    );
    DFFR #(.WIDTH(1))
    ff_lsu_st_dram(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_dram_pulse),
        .q(lsu_st_dram_ff)
    );
    DFFR #(.WIDTH(1))
    ff_lsu_ld_iram(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_ld_iram_pulse),
        .q(lsu_ld_iram_ff)
    );

    DFFR #(.WIDTH(1))
    ff_lsu_ld_wram(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_ld_wram_pulse),
        .q(lsu_ld_wram_ff)
    );

    //FOR store instr
    wire lsu_st_en;
    wire lsu_st_vld_ff;
    //assign lsu_st_vld = lsu_vld & (idu_lsu_st_iram_ff | idu_lsu_st_wram_ff | idu_lsu_st_wram_ff | idu_lsu_st_wram_ff);
    assign lsu_st_vld = lsu_vld & (lsu_st_iram_ff | lsu_st_wram_ff | lsu_st_oram_ff | lsu_st_dram_ff);
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
    // type1 store ==> sram store
    // type2 store ==> dram store
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

    //type2 dram store
    wire lsu_st_type2_qual;
    wire lsu_st_type2_qual_ff;

    assign lsu_st_type2_qual = lsu_st_vld ? (lsu_st_vld & (&lsu_st_type) & axi_lsu_awrdy) : (lsu_st_vld_ff & (&lsu_st_type_ff)) & axi_lsu_awrdy;
    DFFRE #(.WIDTH(1))
    ff_lsu_st_type2_qual(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type2_qual),
        .en(lsu_st_en),
        .q(lsu_st_type2_qual_ff)
    );

    wire [7:0] lsu_st_type2_awid;
    wire [9:0] lsu_st_type2_awaddr;
    wire [7:0] lsu_st_type2_awlen;
    wire [2:0] lsu_st_type2_awsize;
    wire [1:0] lsu_st_type2_awburst;
    wire [2:0] lsu_st_type2_awstr;
    wire [4:0] lsu_st_type2_awnum;

    wire lsu_st_type2_doing_ff;
    wire lsu_st_type2_aw_en;
    assign lsu_st_type2_aw_en = lsu_st_en & (&lsu_st_type);
    
    DFFRE #(.WIDTH(8))
    ff_lsu_st_type2_awid(
        .clk(clk),
        .rst_n(rst_n),
        .d(8'b0),
        .en(lsu_st_type2_aw_en),
        .q(lsu_st_type2_awid)
    );
    DFFRE #(.WIDTH(10))
    ff_lsu_st_type2_awaddr(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_dram_addr[13:4]),
        .en(lsu_st_type2_aw_en),
        .q(lsu_st_type2_awaddr)
    );
    DFFRE #(.WIDTH(8))
    ff_lsu_st_type2_awlen(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_num),
        .en(lsu_st_type2_aw_en),
        .q(lsu_st_type2_awlen)
    );
    DFFRE #(.WIDTH(3))
    ff_lsu_st_type2_awsize(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_len),
        .en(lsu_st_type2_aw_en),
        .q(lsu_st_type2_awsize)
    );
    //burst type not support
    DFFRE #(.WIDTH(2))
    ff_lsu_st_type2_awburst(
        .clk(clk),
        .rst_n(rst_n),
        .d(2'b0),
        .en(lsu_st_type2_aw_en),
        .q(lsu_st_type2_awburst)
    );
    DFFRE #(.WIDTH(3))
    ff_lsu_st_type2_awstr(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_str),
        .en(lsu_st_type2_aw_en),
        .q(lsu_st_type2_awstr)
    );
    wire [4:0] lsu_awnum_raw;
    assign lsu_awnum_raw = 5'b10000 >> idu_lsu_len; 
    DFFRE #(.WIDTH(5))
    ff_lsu_st_type2_awnum(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_awnum_raw),
        .en(lsu_st_type2_aw_en),
        .q(lsu_st_type2_awnum)
    );
    wire lsu_st_type2_st_low_ff;
    DFFRE #(.WIDTH(1))
    ff_lsu_st_type2_st_low(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_st_low),
        .en(lsu_st_type2_aw_en),
        .q(lsu_st_type2_st_low_ff)
    );
    //adress write part
    //once we sense store instr give awvld and other aw signal
    //id and burst not support 
    assign lsu_axi_awvld   = (lsu_st_vld & (&lsu_st_type)) | (lsu_st_vld_ff & (&lsu_st_type_ff)) ; 
    assign lsu_axi_awid    = (lsu_st_vld & (&lsu_st_type)) ? 'b0               : {8{(lsu_st_vld_ff  &(&lsu_st_type_ff))}} & lsu_st_type2_awid;
    assign lsu_axi_awaddr  = (lsu_st_vld & (&lsu_st_type)) ? idu_lsu_dram_addr : {10{(lsu_st_vld_ff &(&lsu_st_type_ff))}} & lsu_st_type2_awaddr;
    assign lsu_axi_awlen   = (lsu_st_vld & (&lsu_st_type)) ? idu_lsu_num       : {8{(lsu_st_vld_ff  &(&lsu_st_type_ff))}} & lsu_st_type2_awlen;
    assign lsu_axi_awsize  = (lsu_st_vld & (&lsu_st_type)) ? idu_lsu_len       : {3{(lsu_st_vld_ff  &(&lsu_st_type_ff))}} & lsu_st_type2_awsize;
    assign lsu_axi_awburst = (lsu_st_vld & (&lsu_st_type)) ? 2'b00             : {2{(lsu_st_vld_ff  &(&lsu_st_type_ff))}} & lsu_st_type2_awburst;
    assign lsu_axi_awstr   = (lsu_st_vld & (&lsu_st_type)) ? idu_lsu_str       : {3{(lsu_st_vld_ff  &(&lsu_st_type_ff))}} & lsu_st_type2_awstr;
    assign lsu_axi_awnum   = (lsu_st_vld & (&lsu_st_type)) ? lsu_awnum_raw     : {5{(lsu_st_vld_ff  &(&lsu_st_type_ff))}} & lsu_st_type2_awnum;
    //write data part
    //once we know lsu_st_type2_qual => axi_awrdy & vld
    wire lsu_st_type2_oram_ce;
    wire lsu_st_type2_oram_ce_ff;

    wire lsu_st_type2_oram_we;
    wire [7:0] lsu_st_type2_oram_addr;
    wire [7:0] lsu_st_type2_oram_addr_ff;
    wire [7:0] lsu_st_type2_oram_addr_nxt;
    wire [127:0] lsu_st_type2_oram_din;
    wire [127:0] lsu_st_type2_oram_dout;
    wire lsu_st_type2_doing;
    wire lsu_st_type2_wr_done;

    wire [7:0] lsu_st_type2_cnt_row_nxt;
    wire [7:0] lsu_st_type2_cnt_row;
    wire lsu_st_type2_cnt_row_en;
    wire lsu_st_type2_new_chunk;
    wire lsu_st_type2_chunk_last;
    wire [7:0] lsu_st_type2_chunk_count;
    wire [7:0] lsu_st_type2_chunk_count_nxt;
    wire lsu_st_type2_wr_cnt_end;
    assign lsu_st_type2_wr_cnt_end = (lsu_st_type2_cnt_row == idu_lsu_num) & ~lsu_st_vld;
    assign lsu_st_type2_chunk_count_nxt = (lsu_st_type2_qual & lsu_st_vld) | lsu_st_type2_chunk_last? 8'b0 : lsu_st_type2_chunk_count + 1'b1;
    //if element size 128 => need wait 2 cycle sin update 
    //assign lsu_st_type2_chunk_last = lsu_axi_awsize[2] ? (lsu_st_type2_chunk_count == (lsu_axi_awnum)) & (|lsu_axi_awnum) & ~lsu_st_type2_wr_done : (lsu_st_type2_chunk_count == (lsu_axi_awnum-1'b1)) & (|lsu_axi_awnum) & ~lsu_st_type2_wr_done;
    
    assign lsu_st_type2_chunk_last = lsu_axi_awsize[2] ? (lsu_st_type2_chunk_count == (lsu_axi_awnum)) & (|lsu_axi_awnum) : (lsu_st_type2_chunk_count == (lsu_axi_awnum-1'b1)) & (|lsu_axi_awnum);
    assign lsu_st_type2_new_chunk = (lsu_st_type2_qual & lsu_st_vld) | lsu_st_type2_chunk_last;
	//type2_qual may not same as st_vld

    assign lsu_st_type2_wr_done = lsu_st_type2_wr_cnt_end & lsu_st_type2_chunk_last;
    assign lsu_st_type2_doing = (lsu_st_type2_qual | lsu_st_type2_qual_ff) & ~lsu_st_type2_wr_done; 
    assign lsu_st_type2_oram_addr = ((&lsu_st_type)&lsu_st_vld) ? idu_lsu_ld_st_addr[11:4] : lsu_st_type2_oram_addr_ff;
    assign lsu_st_type2_oram_addr_nxt = lsu_st_type2_oram_addr + 1;
    assign lsu_st_type2_oram_ce = lsu_st_type2_doing & lsu_st_type2_new_chunk;
    assign lsu_st_type2_oram_we = 1'b0;
    assign lsu_st_type2_oram_din = {127{1'b0}};
    assign lsu_st_type2_oram_dout = lsu_st_type2_oram_ce_ff ? lsu_oram_dout : {127{1'b0}};
    assign lsu_st_type2_cnt_row_nxt = lsu_st_vld & lsu_st_type2_doing ? 1'b1 : lsu_st_type2_cnt_row + 1;
    assign lsu_st_type2_cnt_row_en = lsu_st_type2_doing;
    // 1/ always get oram_dout 
    // 2/ shift right 
    // if oram_dout_raw == 0 => finish

    wire [127:0] lsu_st_type2_wdata_mdf_nxt;
    wire [127:0] lsu_st_type2_wdata_mdf;
    wire [127:0] lsu_st_type2_wdata;
    wire [7:0] lsu_st_type2_shift_len;
    wire [7:0] lsu_st_type2_target_shift;
    wire [127:0] lsu_st_type2_wdata_raw;

    dec_len dec_data2_len(.in(lsu_axi_awsize), .out(lsu_st_type2_shift_len));
    //assign lsu_st_type2_target_shift = ~(|lsu_axi_awsize) ? 8'd120 : ((8'd128)-(lsu_st_type2_shift_len));
    assign lsu_st_type2_target_shift = lsu_st_type2_st_low_ff ? 8'd120 : ~(|lsu_axi_awsize) ? 8'd112 : ((8'd128)-(lsu_st_type2_shift_len));
    //assign lsu_st_type2_wdata_raw = lsu_st_type2_oram_ce_ff ? lsu_st_type2_oram_dout & (lsu_st_type2_oram_dout << lsu_st_type2_target_shift >> lsu_st_type2_target_shift) : lsu_st_type2_wdata_mdf & (lsu_st_type2_oram_dout << lsu_st_type2_target_shift >> lsu_st_type2_target_shift) ; 
    assign lsu_st_type2_wdata_raw = lsu_st_type2_oram_ce_ff ? lsu_st_type2_oram_dout : lsu_st_type2_wdata_mdf;
    assign lsu_st_type2_wdata_mdf_nxt = lsu_st_type2_oram_dout >> (lsu_st_type2_shift_len); 
    assign lsu_axi_wdata = lsu_st_type2_wdata_raw[63:0];
    DFFR #(.WIDTH(1))
    ff_lsu_st_type2_doing(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type2_doing),
        .q(lsu_st_type2_doing_ff)
    );
    assign lsu_axi_wvld = lsu_st_type2_doing_ff & ~lsu_st_vld;
    //update strb according the awsize
    assign lsu_axi_wstrb = lsu_axi_awsize[2] ? {8{1'b1}} : lsu_st_type2_st_low_ff ? 8'b1 : lsu_axi_awsize*8;
    assign lsu_axi_wlast = lsu_st_type2_chunk_last & lsu_st_type2_doing_ff;
    //assign lsu_axi_wlast = lsu_st_type2_wr_done & lsu_st_type2_doing_ff;
    wire [11:0] lsu_axi_oram_addr_nxt; 
    assign lsu_axi_oram_addr_nxt = lsu_st_type2_oram_ce ? lsu_oram_addr : lsu_oram_addr_ff;

    DFFR #(.WIDTH(12))
    ff_lsu_axi_oram_addr (
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_axi_oram_addr_nxt),
        .q(lsu_axi_oram_addr)
    );

    DFFR #(.WIDTH(128))
    ff_lsu_type2_wdata (
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type2_wdata_mdf_nxt),
        .q(lsu_st_type2_wdata_mdf)
    );
 
 
    DFFRE #(.WIDTH(8))
    ff_lsu_type2_chunk_count (
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type2_chunk_count_nxt),
        .en(lsu_st_type2_doing),
        .q(lsu_st_type2_chunk_count)
    );
    DFFRE #(.WIDTH(8))
    ff_lsu_type2_cnt_row (
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type2_cnt_row_nxt),
        //.en(lsu_st_type2_cnt_row_en),
        .en(lsu_st_type2_oram_ce),
	    .q(lsu_st_type2_cnt_row)
    );
    DFFRE #(.WIDTH(8))
    ff_lsu_type2_store_addr (
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type2_oram_addr_nxt),
        .en(lsu_st_type2_oram_ce),
        .q(lsu_st_type2_oram_addr_ff)
    );
    DFFR #(.WIDTH(1))
    ff_lsu_type2_store_ce_ff (
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type2_oram_ce),
        .q(lsu_st_type2_oram_ce_ff)
    );
   
    //TODO update for the load doing and mm doing later
    wire lsu_st_type2_bresp_qual;
    wire lsu_st_type2_bresp_qual_ff;
    wire lsu_st_type2_bresp_qual_en;
    wire [7:0] lsu_st_type2_bresp_end;

    assign lsu_axi_brdy = lsu_vld | lsu_st_type2_doing | lsu_st_type1_doing;
    assign lsu_st_type2_bresp_qual = lsu_axi_brdy & axi_lsu_bvld;
    assign lsu_st_type2_bresp_qual_en = lsu_st_type2_bresp_qual | lsu_st_type2_bresp_end;
    DFFRE #(.WIDTH(1))
    ff_lsu_st_type2_bresp_qual(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type2_bresp_qual),
        .en(lsu_st_type2_bresp_qual_en),
        .q(lsu_st_type2_bresp_qual_ff)
    );

    wire [255:0] lsu_st_type2_bresp_resend;
    wire [2:0] lsu_st_type2_bresp_resend_bank_num;
    wire [31:0] lsu_st_type2_bresp_data_original;
    wire [4:0] lsu_st_type2_bresp_resend_sub_data_num;
    wire [31:0] lsu_st_type2_bresp_resend_sub_data;
    wire [31:0] lsu_st_type2_bresp_resend_update;
    assign lsu_st_type2_bresp_resend_bank_num = lsu_axi_oram_addr[11:9];
    resp_data_get resp_data(.in_num(lsu_st_type2_bresp_resend_bank_num), .in(lsu_st_type2_bresp_resend), .out(lsu_st_type2_bresp_data_original));
    assign lsu_st_type2_bresp_resend_sub_data_num = lsu_axi_oram_addr[8:4];
    dec5to32 resp_data_pre(.in(lsu_st_type2_bresp_resend_sub_data_num), .out(lsu_st_type2_bresp_resend_sub_data));
    assign lsu_st_type2_bresp_resend_update = ((lsu_st_type2_bresp_qual | lsu_st_type2_bresp_qual_ff) & (|axi_lsu_bresp)) ? lsu_st_type2_bresp_data_original | lsu_st_type2_bresp_resend_sub_data : lsu_st_type2_bresp_data_original; 
    resp_assign resp_data_assign(.in_num(lsu_st_type2_bresp_resend_bank_num), .in(lsu_st_type2_bresp_resend_update), .out(lsu_st_type2_bresp_resend));
    //assign lsu_st_type2_bresp_resend[lsu_axi_oram_addr[11:3]] = 1'b1;
    //assign lsu_st_type2_bresp_resend[lsu_axi_oram_addr[11:3]] = (lsu_st_type2_bresp_qual | lsu_st_type2_bresp_qual_ff) & (|axi_lsu_bresp);
    //cancel back the last cycle resend one
    //assign lsu_st_type2_bresp_resend[ctrl_store_resp_oram_addr_ff] = 1'b0;
    //assign lsu_st_type2_bresp_resend_have_error = (|lsu_st_type2_bresp_resend) & lsu_st_type2_axi_write_fsm[1];
    //assign lsu_st_type2_bresp_resend_last = !(|lsu_st_type2_bresp_resend);
    assign lsu_st_type2_bresp_resend_last = ~(|lsu_st_type2_bresp_resend);

    //break into 8 bank 
    //each bank 31 bit => total 256
    wire[31:0] lsu_st_type2_bank0;
    wire[31:0] lsu_st_type2_bank1;
    wire[31:0] lsu_st_type2_bank2;
    wire[31:0] lsu_st_type2_bank3;
    wire[31:0] lsu_st_type2_bank4;
    wire[31:0] lsu_st_type2_bank5;
    wire[31:0] lsu_st_type2_bank6;
    wire[31:0] lsu_st_type2_bank7;


    assign lsu_st_type2_bank0 = lsu_st_type2_bresp_resend[31:0];
    assign lsu_st_type2_bank1 = lsu_st_type2_bresp_resend[63:32];
    assign lsu_st_type2_bank2 = lsu_st_type2_bresp_resend[95:64];
    assign lsu_st_type2_bank3 = lsu_st_type2_bresp_resend[127:96];
    assign lsu_st_type2_bank4 = lsu_st_type2_bresp_resend[159:128];
    assign lsu_st_type2_bank5 = lsu_st_type2_bresp_resend[191:160];
    assign lsu_st_type2_bank6 = lsu_st_type2_bresp_resend[223:192];
    assign lsu_st_type2_bank7 = lsu_st_type2_bresp_resend[255:224];

    wire [7:0] lsu_st_type2_bank_error;
    //find out which bank have error
    assign lsu_st_type2_bank_error = {(|lsu_st_type2_bank0), (|lsu_st_type2_bank1), (|lsu_st_type2_bank2), (|lsu_st_type2_bank3), (|lsu_st_type2_bank4), (|lsu_st_type2_bank5), (|lsu_st_type2_bank6), (|lsu_st_type2_bank7)};
    
    //8 bit 
    // the upper 8 bit matter for the bank_hi
    wire [2:0] lsu_st_type2_error_bank_addr_hi;
    wire [31:0] lsu_st_type2_error_bank_addr_lo;
    wire [4:0] lsu_st_type2_error_addr_lo;
    dec8to3 dec_bank_hi(.in(lsu_st_type2_bank_error), .out(lsu_st_type2_error_bank_addr_hi));

    //mux select
    mux8 mux(   .in0(lsu_st_type2_bank0), 
                .in1(lsu_st_type2_bank1), 
                .in2(lsu_st_type2_bank2), 
                .in3(lsu_st_type2_bank3), 
                .in4(lsu_st_type2_bank4), 
                .in5(lsu_st_type2_bank5), 
                .in6(lsu_st_type2_bank6), 
                .in7(lsu_st_type2_bank7), 
                .sel(lsu_st_type2_error_bank_addr_hi), 
                .out(lsu_st_type2_error_bank_addr_lo));

    //
    dec32to5 dec_bank_lo(.in(lsu_st_type2_error_bank_addr_lo), .out(lsu_st_type2_error_addr_lo));

    // this will be the resend addr
    assign lsu_st_type2_bresp_resend_sram_addr = {lsu_st_type2_error_bank_addr_hi,lsu_st_type2_error_bank_addr_lo};


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
    //include iram wram oram
    wire lsu_st_type1_qual;
    wire lsu_st_type1_qual_ff;
    // type[1] == 0 iram,wram
    // type[1] == 1 & type[0] == 0 oram
    assign lsu_st_type1_qual = lsu_st_vld ? (lsu_st_vld & (~lsu_st_type[1] | (lsu_st_type[1] & ~lsu_st_type[0]))) & mxu_lsu_data_rdy : (lsu_st_vld_ff & (~lsu_st_type_ff[1] | (lsu_st_type_ff[1] & ~lsu_st_type_ff[0]))) & mxu_lsu_data_rdy;
    DFFRE #(.WIDTH(1))
    ff_lsu_st_type1_qual(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_st_type1_qual),
        .en(lsu_st_en),
        .q(lsu_st_type1_qual_ff)
    );
    //MXU count
    //choose the row by Y
    //total 16 row
    //start = start Y
    //end   = start Y + len

    //assign lsu_st_sram_done = lsu_st_sram_count_row == (lsu_st_mxu_start_y+lsu_st_sram_num);
    //wire lsu_st_type1_doing;
    wire [7:0] lsu_st_type1_cnt_row_nxt;
    wire [7:0] lsu_st_type1_cnt_row;
    wire lsu_st_type1_cnt_row_en;

    assign lsu_st_type1_done = lsu_st_type1_cnt_row == (idu_lsu_start_y + idu_lsu_num) & ~lsu_st_vld;
    assign lsu_st_type1_doing = (lsu_st_type1_qual | lsu_st_type1_qual_ff) & ~lsu_st_type1_done;
    //if is start, then assign startY as first row
    //else if not yet end assign startY+1;
    //else assign currentY
    assign lsu_st_type1_cnt_row_nxt = lsu_st_vld & lsu_st_type1_doing ? idu_lsu_start_y + 1'b1 : lsu_st_type1_cnt_row + 1;
    assign lsu_st_type1_cnt_row_en = lsu_st_type1_doing ;
    
    DFFRE #(.WIDTH(8))
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

    wire lsu_st_type1_wen_raw;
    wire lsu_st_type1_wen;
    
    wire [7:0] lsu_st_type1_addr;
    wire [7:0] lsu_st_type1_addr_nxt;

    wire [7:0] lsu_st_type1_addr_ff;
    //since our target is start_x*8
    //so we need shift 3 bit to get *8
    dec_len dec_data_len(.in(idu_lsu_len), .out(lsu_st_type1_shift_len));
    assign lsu_st_type1_shift_start = idu_lsu_start_x << 2'd3;
    assign lsu_st_type1_shift_end = 8'd128-lsu_st_type1_shift_len;
    assign lsu_st_type1_din_int8_qual = lsu_st_type1_din_int8_raw >> lsu_st_type1_shift_start << lsu_st_type1_shift_end >> lsu_st_type1_shift_end << lsu_st_type1_shift_start;
    assign lsu_st_type1_ce =  lsu_st_type1_doing;
    assign lsu_st_type1_we =  lsu_st_type1_doing;
    assign lsu_st_type1_wen_raw = {127{1'b1}};
    assign lsu_st_type1_wen = lsu_st_type1_wen_raw >> lsu_st_type1_shift_start << lsu_st_type1_shift_end >> lsu_st_type1_shift_end << lsu_st_type1_shift_start;
    
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
    
    wire [127:0] lsu_st_type1_iram_wen;
    wire lsu_st_type1_iram_we;
    wire lsu_st_type1_iram_ce;
    wire [7:0] lsu_st_type1_iram_addr;
    wire [127:0] lsu_st_type1_iram_din;

    assign lsu_st_type1_iram_wen  = lsu_st_vld ? {128{~lsu_st_type[1] & ~lsu_st_type[0]}} & lsu_st_type1_wen : {128{~lsu_st_type_ff[1] & ~lsu_st_type_ff[0]}} & lsu_st_type1_wen;
    assign lsu_st_type1_iram_we   = lsu_st_vld ? (~lsu_st_type[1] & ~lsu_st_type[0] & lsu_st_type1_we) : (~lsu_st_type_ff[1] & ~lsu_st_type_ff[0] & lsu_st_type1_we);
    assign lsu_st_type1_iram_ce   = lsu_st_vld ? (~lsu_st_type[1] & ~lsu_st_type[0] & lsu_st_type1_ce) : (~lsu_st_type_ff[1] & ~lsu_st_type_ff[0] & lsu_st_type1_ce);
    assign lsu_st_type1_iram_addr = lsu_st_vld ? {8{~lsu_st_type[1] & ~lsu_st_type[0]}} & lsu_st_type1_addr : {8{~lsu_st_type_ff[1] & ~lsu_st_type_ff[0]}} & lsu_st_type1_addr;
    assign lsu_st_type1_iram_din  = lsu_st_vld ? {128{~lsu_st_type[1] & ~lsu_st_type[0]}} & lsu_st_type1_din_int8_qual : {128{~lsu_st_type_ff[1] & ~lsu_st_type_ff[0]}} & lsu_st_type1_din_int8_qual;
    assign lsu_iram_dout = 128'b0;


    wire [127:0] lsu_st_type1_wram_wen;
    wire lsu_st_type1_wram_we;
    wire lsu_st_type1_wram_ce;
    wire [7:0] lsu_st_type1_wram_addr;
    wire [127:0] lsu_st_type1_wram_din;

    assign lsu_st_type1_wram_wen  = lsu_st_vld ? {128{~lsu_st_type[1] & lsu_st_type[0]}} & lsu_st_type1_wen : {128{~lsu_st_type_ff[1] & lsu_st_type_ff[0]}} & lsu_st_type1_wen;
    assign lsu_st_type1_wram_we   = lsu_st_vld ? (~lsu_st_type[1] & lsu_st_type[0] & lsu_st_type1_we) : (~lsu_st_type_ff[1] & lsu_st_type_ff[0] & lsu_st_type1_we);
    assign lsu_st_type1_wram_ce   = lsu_st_vld ? (~lsu_st_type[1] & lsu_st_type[0] & lsu_st_type1_ce) : (~lsu_st_type_ff[1] & lsu_st_type_ff[0] & lsu_st_type1_ce);
    assign lsu_st_type1_wram_addr = lsu_st_vld ? {8{~lsu_st_type[1] & lsu_st_type[0]}} & lsu_st_type1_addr : {8{~lsu_st_type_ff[1] & lsu_st_type_ff[0]}} & lsu_st_type1_addr;
    assign lsu_st_type1_wram_din  = lsu_st_vld ? {128{~lsu_st_type[1] & lsu_st_type[0]}} & lsu_st_type1_din_int8_qual : {128{~lsu_st_type_ff[1] & lsu_st_type_ff[0]}} & lsu_st_type1_din_int8_qual;
    assign lsu_wram_dout = 128'b0;


    wire [127:0] lsu_st_type1_oram_wen;
    wire lsu_st_type1_oram_we;
    wire lsu_st_type1_oram_ce;
    wire [7:0] lsu_st_type1_oram_addr;
    wire [127:0] lsu_st_type1_oram_din;

    assign lsu_st_type1_oram_wen  = lsu_st_vld ? {128{lsu_st_type[1] & ~lsu_st_type[0]}} & lsu_st_type1_wen : {128{lsu_st_type_ff[1] & ~lsu_st_type_ff[0]}} & lsu_st_type1_wen;
    assign lsu_st_type1_oram_we   = lsu_st_vld ? (lsu_st_type[1] & ~lsu_st_type[0] & lsu_st_type1_we) : (lsu_st_type_ff[1] & ~lsu_st_type_ff[0] & lsu_st_type1_we);
    assign lsu_st_type1_oram_ce   = lsu_st_vld ? (lsu_st_type[1] & ~lsu_st_type[0] & lsu_st_type1_ce) : (lsu_st_type_ff[1] & ~lsu_st_type_ff[0] & lsu_st_type1_ce);
    assign lsu_st_type1_oram_addr = lsu_st_vld ? {8{lsu_st_type[1] & ~lsu_st_type[0]}} & lsu_st_type1_addr : {8{lsu_st_type_ff[1] & ~lsu_st_type_ff[0]}} & lsu_st_type1_addr;
    assign lsu_st_type1_oram_din  = lsu_st_vld ? {128{lsu_st_type[1] & ~lsu_st_type[0]}} & lsu_st_type1_din_int8_qual : {128{lsu_st_type_ff[1] & ~lsu_st_type_ff[0]}} & lsu_st_type1_din_int8_qual;
    assign lsu_oram_dout = 128'b0;

    //FOR load instruction
    wire lsu_ld_en;
    wire lsu_ld_vld_ff;

    assign lsu_ld_vld = lsu_vld & (lsu_ld_iram_ff | lsu_ld_wram_ff);
    assign lsu_ld_en = lsu_ld_vld | lsu_ld_finish;
    DFFRE #(.WIDTH(1))
    ff_lsu_ld_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_ld_vld),
        .en(lsu_ld_en),
        .q(lsu_ld_vld_ff)
    );
    wire lsu_ld_type;
    //check which type of ld is that
    //0 : iram
    //1 : wram
    assign lsu_ld_type  = lsu_ld_wram_ff;

    wire lsu_ld_type_ff;
    DFFRE #(.WIDTH(1))
    ff_lsu_ld_type(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_ld_type),
        .en(lsu_ld_en),
        .q(lsu_ld_type_ff)
    );

    //load logic
    wire lsu_ld_qual;
    wire lsu_ld_qual_ff;

    assign lsu_ld_qual = lsu_ld_vld ? (lsu_ld_vld & axi_lsu_arrdy) : (lsu_ld_vld_ff & (&lsu_ld_type_ff)) & axi_lsu_arrdy;
    DFFRE #(.WIDTH(1))
    ff_lsu_ld_qual(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_ld_qual),
        .en(lsu_ld_en),
        .q(lsu_ld_qual_ff)
    );

    wire [7:0] lsu_ld_arid;
    wire [9:0] lsu_ld_araddr;
    wire [7:0] lsu_ld_arlen;
    wire [2:0] lsu_ld_arsize;
    wire [1:0] lsu_ld_arburst;
    wire [2:0] lsu_ld_arstr;
    wire [4:0] lsu_ld_arnum;

    wire lsu_ld_doing_ff;
    wire lsu_ld_ar_en;
    assign lsu_ld_ar_en = lsu_ld_en;
    
    DFFRE #(.WIDTH(8))
    ff_lsu_ld_arid(
        .clk(clk),
        .rst_n(rst_n),
        .d(8'b0),
        .en(lsu_ld_ar_en),
        .q(lsu_ld_arid)
    );
    DFFRE #(.WIDTH(10))
    ff_lsu_ld_araddr(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_dram_addr[13:4]),
        .en(lsu_ld_ar_en),
        .q(lsu_ld_araddr)
    );
    DFFRE #(.WIDTH(8))
    ff_lsu_ld_arlen(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_num),
        .en(lsu_ld_ar_en),
        .q(lsu_ld_arlen)
    );
    DFFRE #(.WIDTH(3))
    ff_lsu_ld_arsize(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_len),
        .en(lsu_ld_ar_en),
        .q(lsu_ld_arsize)
    );
    //burst type not support
    DFFRE #(.WIDTH(2))
    ff_lsu_ld_arburst(
        .clk(clk),
        .rst_n(rst_n),
        .d(2'b0),
        .en(lsu_ld_ar_en),
        .q(lsu_ld_arburst)
    );
    DFFRE #(.WIDTH(3))
    ff_lsu_ld_arstr(
        .clk(clk),
        .rst_n(rst_n),
        .d(idu_lsu_str),
        .en(lsu_ld_ar_en),
        .q(lsu_ld_arstr)
    );
    
    wire [4:0] lsu_arnum_raw;
    assign lsu_arnum_raw = 5'b10000 >> idu_lsu_len; 
    DFFRE #(.WIDTH(5))
    ff_lsu_ld_arnum(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_arnum_raw),
        .en(lsu_ld_ar_en),
        .q(lsu_ld_arnum)
    );

    //adress read part
    //once we sense load instr give arvld and other ar signal
    //id and burst not support 
    assign lsu_axi_arvld   = lsu_ld_vld | lsu_ld_vld_ff; 
    assign lsu_axi_arid    = lsu_ld_vld ? 'b0               : {8{lsu_ld_vld_ff }} & lsu_ld_arid;
    assign lsu_axi_araddr  = lsu_ld_vld ? idu_lsu_dram_addr : {10{lsu_ld_vld_ff}} & lsu_ld_araddr;
    assign lsu_axi_arlen   = lsu_ld_vld ? idu_lsu_num       : {8{lsu_ld_vld_ff }} & lsu_ld_arlen;
    assign lsu_axi_arsize  = lsu_ld_vld ? idu_lsu_len       : {3{lsu_ld_vld_ff }} & lsu_ld_arsize;
    assign lsu_axi_arburst = lsu_ld_vld ? 2'b00             : {2{lsu_ld_vld_ff }} & lsu_ld_arburst;
    assign lsu_axi_arstr   = lsu_ld_vld ? idu_lsu_str       : {3{lsu_ld_vld_ff }} & lsu_ld_arstr;
    assign lsu_axi_arnum   = lsu_ld_vld ? lsu_arnum_raw     : {5{lsu_ld_vld_ff }} & lsu_ld_arnum;
    
    //read data part

    //give out 
    //lsu_axi_rrdy
    //once we know the ld is qual (arrdy & arvld)
    //we set high the rrdy
    assign lsu_axi_rrdy = lsu_ld_qual_ff & ~axi_lsu_rvld; 


    //recive back
    //axi_lsu_rid
    //axi_lsu_rdata
    //axi_lsu_rresp
    //axi_lsu_rlast
    //axi_lsu_rvld




    assign lsu_st_finish = lsu_st_type1_done & (lsu_st_type1_qual | lsu_st_type1_qual_ff);
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

    assign lsu_wram_we   = lsu_st_type1_wram_we;
    assign lsu_wram_ce   = lsu_st_type1_wram_ce;
    assign lsu_wram_addr = lsu_st_type1_wram_addr;
    assign lsu_wram_din  = lsu_st_type1_wram_din;
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

    assign lsu_oram_we   = lsu_st_type1_oram_we | lsu_st_type2_oram_we;
    assign lsu_oram_ce   = lsu_st_type1_oram_ce | lsu_st_type2_oram_ce;
    assign lsu_oram_addr = lsu_st_type1_oram_addr | lsu_st_type2_oram_addr;
    assign lsu_oram_din  = lsu_st_type1_oram_din | lsu_st_type2_oram_din;
    assign lsu_oram_dout = 128'b0;

    DFFRE #(.WIDTH(8))
    ff_lsu_oram_addr (
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_oram_addr),
        .en(lsu_oram_ce),
        .q(lsu_oram_addr_ff)
    );
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



