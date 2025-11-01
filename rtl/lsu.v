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
    lsu_mxu_act_vld,
    lsu_mxu_act_type,
    lsu_mxu_wfi,
    //:for($i=0;$i<16;$i++){
    mxu_lsu_int8_row{$i}_data,
    //mxu_lsu_int8_row{$i}_data,
    //:}
    mxu_lsu_data_rdy,
    mxu_lsu_rdy

    //to axi
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
    input [7:0] idu_lsu_len;
    input [2:0] idu_lsu_size;
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

    //from axi
    input axi_lsu_arrdy;
    input [7:0] axi_lsu_rid;
    input [63:0] axi_lsu_rdata;
    input [1:0] axi_lsu_rresp;
    input axi_lsu_rlast;
    input axi_lsu_rvld;

    //from mxu
    //:for($i=0;$i<16;$i++){
    input [127:0] mxu_lsu_int8_row{$i}_data;
    //input [255:0] mxu_lsu_int8_row{$i}_data;
    //:}
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
    //for read interface
    output [7:0] lsu_axi_arid;
    output [9:0] lsu_axi_arraddr;
    output [7:0] lsu_axi_arlen;
    output [2:0] lsu_axi_arsize;
    output [1:0] lsu_axi_arburst;
    output [2:0] lsu_axi_arstr;
    output [7:0] lsu_axi_arnum;
    output lsu_axi_arvld;
    output lsu_axi_rrdy;


    ///iram ram_buffer payload
    //from iram => ram_buffer
    wire lsu_iram_cen_ff;
    wire [7:0] lsu_iram_addr_ff;
    wire [127:0] lsu_iram_dout;
    //ctrl_input
    wire [3:0] lsu_iram_start_byte;
    wire [3:0] lsu_iram_end_byte; 
    wire [3:0] lsu_iram_ent_num;
    wire [4:0] lsu_iram_ent_rng
    //from ram buffer to iram_wrapper
    wire lsu_iram_wrapper_vld;
    wire [7:0] lsu_iram_wrapper_addr;
    //from ram_buffer to mxu
    wire [15:0] lsu_iram_load_vld;
    wire [127:0] lsu_iram_load_data;
    //iram ram_wrapper element
    wire lsu_iram_cen; 
    wire lsu_iram_wen;
    wire lsu_iram_addr;
    wire [31:0] lsu_iram_din;
    ///wram ram_buffer payload
    //from wram => ram_buffer
    wire lsu_wram_cen_ff;
    wire [7:0] lsu_wram_addr_ff;
    wire [127:0] lsu_wram_dout;
    //ctrl_input
    wire [3:0] lsu_wram_start_byte;
    wire [3:0] lsu_wram_end_byte; 
    wire [3:0] lsu_wram_ent_num;
    wire [4:0] lsu_wram_ent_rng
    //from ram buffer to wram_wrapper
    wire lsu_wram_wrapper_vld;
    wire [7:0] lsu_wram_wrapper_addr;
    //from ram_buffer to mxu
    wire [15:0] lsu_wram_load_vld;
    wire [127:0] lsu_wram_load_data;
    //wram ram_wrapper element
    wire lsu_wram_cen;
    wire lsu_wram_addr;

    wire [7:0] lsu_ldst_id;
    wire [1:0] lsu_ld_region;
    wire lsu_axu_rready;
    wire [1:0] lsu_ld_region;
    wire [1:0] lsu_ld_region_ff;

    assign lsu_ldst_id = rst_n ? 1'b0 
                            : ((idu_lsu_vld & (idu_lsu_ld_iram | idu_lsu_ld_wram | idu_lsu_st_dram)) ? lsu_ldst_addrid + 1 : lsu_ldst_addrid);  
    
    assign lsu_iram_ld_vld = idu_lsu_ld_iram & idu_lsu_vld;

    ////////////////////////////////////////////////////////////
    //For store instruction

    //store awvld ctl awpayload send action
    //1/ start of each instruction
    //2/ response erorr need resend 
    //FIXME not yet finish 2/
    assign lsu_awvld =  (idu_lsu_vld & idu_lsu_st_dram);

    store_buffer oram_dram_store_buffer(
        .clk(clk),
        .rst_n(rst_n),

        //from lsu input
        //axi address related
        .ctrl_store_awvld(lsu_awvld),
        .ctrl_store_awid(lsu_ldst_id),
        .ctrl_store_awaddr(idu_lsu_dram_addr),
        .ctrl_store_awlen(idu_lsu_len),
        .ctrl_store_awsize(idu_lsu_size),
        .ctrl_store_awburst(idu_lsu_burst),
        .ctrl_store_awstr(idu_lsu_str),
        .ctrl_store_awnum(idu_lsu_num),
        .ctrl_st_sram_start_addr(idu_lsu_ld_st_addr),

        //to ram wrapper
        //(read the sram data out)
        .ctrl_sram_vld(lsu_st_buff_oram_cen),
        .ctrl_sram_addr(lsu_st_buff_oram_addr),

        //from ram input
        .ctrl_sram_input_vld(lsu_oram_cen_ff),
        .ctrl_sram_input_addr(lsu_oram_addr_ff), 
        .ctrl_sram_input_data(lsu_oram_dout),

        //from axi bres
        .ctrl_store_wrdy(axi_lsu_wrdy),
        .ctrl_store_awrdy(axi_lsu_awrdy),

        //axi response related
        .ctrl_store_bresp(axi_lsu_bresp),
        .ctrl_store_bvld(axi_lsu_bvld),
        .ctrl_store_resp_oram_addr(axi_lsu_resp_oram_addr),

        //output
        //address related
        .lsu_axi_awvld(lsu_axi_awvld),
        .lsu_axi_awid(lsu_axi_awid),
        .lsu_axi_awaddr(lsu_axi_awaddr),
        .lsu_axi_awlen(lsu_axi_awlen),
        .lsu_axi_awsize(lsu_axi_awsize),
        .lsu_axi_awburst(lsu_axi_awburst),
        .lsu_axi_awstr(lsu_axi_awstr),
        .lsu_axi_awnum(lsu_axi_awnum),

        //write related
        .lsu_axi_wvld(lsu_axi_wvld),
        .lsu_axi_wdata(lsu_axi_wdata),
        .lsu_axi_wstrb(lsu_axi_wstrb),
        .lsu_axi_wlast(lsu_axi_wlast),
        .lsu_axi_oram_addr(lsu_axi_oram_addr),

        //response related
        .lsu_axi_brdy(lsu_axi_brdy)
    );

    ////////////////////////////////////////////////////////////
    //For load instruction
    load_buffer dram_iram_load_buffer(
        .clk(clk),
        .rst_n(rst_n),

        //ctrl_load_input
        .ctrl_load_vld(lsu_iram_ld_vld),
        .ctrl_load_id(lsu_ldst_id),
        .ctrl_load_dram_addr(idu_lsu_dram_addr),
        .ctrl_load_len(idu_lsu_len),
        .ctrl_load_size(idu_lsu_size),
        .ctrl_load_str(idu_lsu_str),
        .ctrl_load_ld_addr(idu_lsu_ld_st_addr),

        //axi to lsu input
        .ctrl_sram_rdata(axi_lsu_rdata),
        .ctrl_sram_rlast(axi_lsu_rlast),
        .ctrl_sram_rvld(axi_lsu_rvld),

        //to ram wrapper
        .load_sram_vld(lsu_ld_iram_cen),
        .load_sram_wen(lsu_ld_iram_wen),
        .load_sram_addr(lsu_ld_iram_addr),
        .load_sram_din(lsu_ld_iram_din),

        //to AXI read interface
        .load_axi_arid(lsu_axi_arid),
        .load_axi_arraddr(lsu_axi_arraddr),
        .load_axi_arlen(lsu_axi_arlen),
        .load_axi_arsize(lsu_axi_arsize),
        .load_axi_arburst(lsu_axi_arburst),
        .load_axi_arvalid(lsu_axi_arvld),
        .load_axi_str(lsu_axi_str)

    );
    assign lsu_axi_rrdy = idu_lsu_ld_iram ? lsu_iram_cen : (idu_lsu_ld_wram ? lsu_wram_cen : 1'b1);
    assign lsu_ld_region = idu_lsu_vld ? {idu_lsu_ld_iram,idu_lsu_ld_wram} : lsu_ld_region_ff;

    DFFE #(.WIDTH(2))
    lsu_ld_region_ff(
        .clk(clk), 
        .rst_n(rst_n), 
        .en(idu_lsu_vld), 
        .d(lsu_axi_region), 
        .q(lsu_axi_region_ff));

    //if recive conv, first set clr siganl
    assign lsu_mxu_clr = idu_lsu_vld & idu_lsu_conv:
   
    //first draft 
    //use back the ram_buffer original input and output


    //IRAM part
    //set the start_byte and end byte for the iram
    assign lsu_iram_start_byte = idu_lsu_conv && idu_lsu_iram_start_addr[3:0];
    assign lsu_iram_end_byte = idu_lsu_iram_col_dir?idu_lsu_iram_start_addr[3:0]+idu_lsu_iram_col_len:idu_lsu_iram_start_addr[3:0]-idu_lsu_iram_col_len;
    assign lsu_iram_ent_num  = idu_lsu_iram_row_len;
    assign lsu_iram_ent_rng  = {idu_lsu_iram_row_dir,idu_lsu_iram_row_len};
    ram_buffer matrix_iram_load_buffer (
        .clk(clk),
        .rst_n(rst_n),
        //ram input
        .ram_buff_alloc_vld(lsu_iram_cen_ff),
        .ram_buff_alloc_addr(lsu_iram_addr_ff),
        .ram_buff_alloc_data(lsu_iram_dout),

        //ctrl input
        .ctrl_ram_buff_vld(idu_lsu_conv),
        .ctrl_ram_buff_start_byte(idu_lsu_iram_start_addr[3:0]),
        .ctrl_ram_buff_end_byte(lsu_iram_end_byte),
        .ctrl_ram_buff_ent_num(lsu_iram_ent_num),
        .ctrl_ram_buff_start_addr(idu_lsu_iram_start_addr),
        .ctrl_ram_buff_ent_rng(lsu_iram_ent_rng),

        //to ram output
        .ram_read_vld(lsu_iram_wrapper_vld),
        .ram_read_addr(lsu_iram_wrapper_addr),
        //to mxu output
        .ram_buff_mxu_vld(lsu_iram_load_vld),
        .ram_buff_mxu_data(lsu_iram_load_data) 
    );  

    assign lsu_iram_cen = lsu_iram_wrapper_vld | lsu_ld_iram_cen;
    assign lsu_iram_wen = lsu_ld_iram_wen;
    assign lsu_iram_addr = lsu_iram_wrapper_addr | lsu_ld_iram_addr;
    assign lsu_iram_din = lsu_ld_iram_din;

    mem_wrapper iram(
        .clk (clk),
        .wen (lsu_iram_wen), 
        .cen (lsu_iram_cen),
        .addr(lsu_iram_addr),
        .din (lsu_iram_din),
        .dout(lsu_iram_dout)
    );

    DFFR #(.WIDTH(1))
    ff_lsu_iram_cen(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_iram_cen),
        .q(lsu_iram_cen_ff)
    );

    DFFR #(.WIDTH(8))
    ff_lsu_iram_addr(
        .rst_n(rst_n),
        .d(lsu_iram_addr),
        .q(lsu_iram_addr_ff)
    );

    assign lsu_mxu_iram_vld = lsu_iram_load_vld;
    assign lsu_mxu_iram_pld = lsu_iram_load_data;

    
    //WRAM part
    //set the start_byte and end byte for the wram
    assign lsu_wram_start_byte = idu_lsu_conv && idu_lsu_wram_start_addr[3:0];
    assign lsu_wram_end_byte = idu_lsu_wram_col_dir?idu_lsu_wram_start_addr[3:0]+idu_lsu_wram_col_len:idu_lsu_wram_start_addr[3:0]-idu_lsu_wram_col_len;
    assign lsu_wram_ent_num  = idu_lsu_wram_row_len;
    assign lsu_iram_ent_rng  = {idu_lsu_iram_row_dir,idu_lsu_iram_row_len};
    matrix_wram_load_buffer ram_buffer(
        .clk(clk),
        .rst_n(rst_n),
        //ram input
        .ram_buff_alloc_vld(lsu_wram_cen_ff),
        .ram_buff_alloc_addr(lsu_wram_addr_ff),
        .ram_buff_alloc_data(lsu_wram_dout),

        //ctrl input
        .ctrl_ram_buff_vld(idu_lsu_conv),
        .ctrl_ram_buff_start_byte(idu_lsu_iram_start_addr[3:0]),
        .ctrl_ram_buff_end_byte(lsu_wram_end_byte),
        .ctrl_ram_buff_ent_num(lsu_wram_ent_num),
        .ctrl_ram_buff_start_addr(lsu_wram_start_addr),
        .ctrl_ram_buff_ent_rng(idu_lsu_wram_row_len),

        //to ram output
        .ram_read_vld(lsu_wram_wrapper_vld),
        .ram_read_addr(lsu_wram_wrapper_addr),
        //to mxu output
        .ram_buff_mxu_vld(lsu_wram_load_vld),
        .ram_buff_mxu_data(lsu_wram_load_data) 
    );  

    assign lsu_wram_cen = lsu_wram_wrapper_vld;
    assign lsu_wram_addr = lsu_wram_wrapper_addr;
    
    mem_wrapper wram(
        .clk (clk),
        .wen (), 
        .cen (lsu_wram_cen),
        .addr(lsu_wram_addr),
        .din (),
        .dout(lsu_wram_dout)
    );

    DFFR #(.WIDTH(1))
    ff_lsu_wram_cen(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_wram_cen),
        .q(lsu_wram_cen_ff)
    );

    DFFR #(.WIDTH(8))
    ff_lsu_wram_addr(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_wram_addr),
        .q(lsu_wram_addr_ff)
    );

    assign lsu_mxu_wram_vld = lsu_wram_load_vld;
    assign lsu_mxu_wram_pld = lsu_wram_load_data;

    //FOR oram 
    assign lsu_oram_wen = 'b0; //FIXME
    assign lsu_oram_cen = lsu_st_buff_oram_cen;
    assign lsu_oram_addr = lsu_st_buff_oram_addr;
    assign lsu_oram_din = 'b0;

    mem_wrapper oram(
        .clk (clk),
        .wen (lsu_oram_wen), 
        .cen (lsu_oram_cen),
        .addr(lsu_oram_addr),
        .din (lsu_oram_din),
        .dout(lsu_oram_dout)
    );

    DFFR #(.WIDTH(1))
    ff_lsu_oram_cen(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_oram_cen),
        .q(lsu_oram_cen_ff)
    );

    DFFR #(.WIDTH(8))
    ff_lsu_oram_addr(
        .clk(clk),
        .rst_n(rst_n),
        .d(lsu_oram_addr),
        .q(lsu_oram_addr_ff)
    );



endmodule