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
    idu_lsu_pool_size

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
);
    input clk;
    input rst_n;

    //from idu
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

    input [30:0] idu_lsu_dram_addr;
    input [7:0] idu_lsu_num;
    input [2:0] idu_lsu_len;
    input [2:0] idu_lsu_str;
    input [3:0] idu_lsu_start_x;
    input [3:0] idu_lsu_start_y;
    input [11:0] idu_lsu_ld_st_addr;
    input idu_lsu_st_low;

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

    input [1:0] idu_lsu_act_type;
    input [1:0] idu_lsu_pool_size; 

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
    wire lsu_iram_addr;

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
    matrix_iram_load_buffer ram_buffer(
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

    assign lsu_iram_cen = lsu_iram_wrapper_vld;
    assign lsu_iram_addr = lsu_iram_wrapper_addr;

    mem_wrapper iram(
        .clk (clk),
        .wen (), 
        .cen (lsu_iram_cen),
        .addr(lsu_iram_addr),
        .din (),
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
    
    mem_wrapper iram(
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
        .rst_n(rst_n),
        .d(lsu_wram_addr),
        .q(lsu_wram_addr_ff)
    );

    assign lsu_mxu_wram_vld = lsu_wram_load_vld;
    assign lsu_mxu_wram_pld = lsu_wram_load_data;





endmodule