module load_buffer(
    clk,
    rst_n,

    //ctrl_load_inpput
    ctrl_load_vld,
    ctrl_load_id,
    ctrl_load_dram_addr,
    ctrl_load_len,
    ctrl_load_size,
    ctrl_load_str,
    ctrl_load_ld_addr,
    ctrl_load_sram_type,

    //ctrl_sram_input
    ctrl_sram_rid,
    ctrl_sram_rdata,
    ctrl_sram_rresp,
    ctrl_sram_rlast,
    ctrl_sram_rvld,
    ctrl_dram_arrdy,
        
    //to ram wrapper
    load_sram_vld,
    load_sram_wen,
    load_sram_addr,
    load_sram_din,
    load_sram_type,

    //to AXI read interface
    load_axi_arid,
    load_axi_arraddr,
    load_axi_arlen,
    load_axi_arsize,
    load_axi_arburst,
    load_axi_arstr,
    load_axi_arnum,
    load_axi_arvld,
    load_axi_rrdy,
    lsu_store_buffer_finished
);
    input clk;
    input rst_n;

    //ctrl_axi_input
    input ctrl_load_vld;
    input [7:0]  ctrl_load_id;
    input [11:0] ctrl_load_dram_addr;
    input [7:0]  ctrl_load_len;
    input [2:0]  ctrl_load_size;
    input [2:0]  ctrl_load_str;
    input [11:0] ctrl_load_ld_addr;
    input [1:0]  ctrl_load_sram_type;

    //ctrl_sram_input
    input [7:0]  ctrl_sram_rid;
    input [31:0] ctrl_sram_rdata;
    input [1:0]  ctrl_sram_rresp;
    input ctrl_sram_rlast;
    input ctrl_sram_rvld;
    input ctrl_dram_arrdy;

    //to lsu the internal ram (sram store variables)
    //to ram wrapper
    output load_sram_vld;
    //TODO this wen need to be byte valid / may need to change later
    output load_sram_wen;
    output [7:0] load_sram_addr;
    output [31:0] load_sram_din;
    output [1:0]  load_sram_type;

    //to AXI read interface
    output [7:0]  load_axi_arid;
    output [11:0] load_axi_arraddr;
    output [7:0]  load_axi_arlen;
    output [2:0]  load_axi_arsize;
    output [1:0]  load_axi_arburst;
    output load_axi_arstr;
    output [3:0] load_axi_arnum;
    output load_axi_arvld;
    output load_axi_rrdy;
    output lsu_store_buffer_finished;


    wire [1:0] load_sram_type_nxt;
    wire load_sram_type_en;
    wire [1:0] load_sram_type;
    
    wire laod_buffer_addr_sent_en;
    wire [7:0]  load_axi_arid_nxt;
    wire [11:0] load_axi_arraddr_nxt;
    wire [7:0]  load_axi_arlen_nxt;
    wire [2:0]  load_axi_arsize_nxt;
    wire [1:0]  load_axi_arburst_nxt;
    wire load_axi_arvld_nxt;
    wire load_axi_arstr_nxt;


    wire [11:0] ctrl_load_ld_addr_ff;
    wire [11:0] ctrl_load_addr_nxt;
    wire ctrl_load_addr_en;
    wire [11:0] ctrl_load_addr_ff;

    wire [3:0] ld_buff_rresp_count_nxt;
    wire ld_buff_rresp_count_en;
    wire [3:0] ld_buff_rresp_count;
    wire [255:0] ld_buff_rresp_raw;

    wire lsu_sram_ld_wen;
    wire lsu_ram_ld_cen;
    wire [7:0] lsu_sram_ld_addr;
    wire [31:0 ]lsu_sram_ld_din;

    wire [255:0] rresp_row_count_nxt;
    wire rresp_row_count_en;
    wire [255:0] ld_buff_rresp;

    wire[1:0] load_buffer_fsm;

    wire dram_data_load_done;
    wire sram_data_store_sone;
    wire load_buffer_fsm_nxt;
    wire ctrl_load_resp_resent;
    wire [7:0] ctrl_load_resent_arid;
    wire [7:0] ctrl_load_arid;
    wire [7:0] ctrl_load_dram_araddr;

    assign load_sram_type_nxt = ctrl_load_sram_type;
    assign load_sram_type_en = ctrl_load_vld;
    assign load_sram_type = ctrl_load_vld ? ctrl_load_sram_type : load_sram_type_ff;

    // update for axi read interface load outout
    //if axi interface is ready and cur addr is vld 
    //update the new data
    //addr update condition
    // cond1 => update at the begining
    // cond2 => update for the response resend
    // if resent only sent the arid and arraddr arvld
    assign load_buffer_addr_sent_en = ctrl_load_vld | ctrl_load_resp_resent;
    assign load_axi_arid_nxt = ctrl_load_resp_resent ? ctrl_load_resent_arid : ctrl_load_arid;
    assign load_axi_arraddr_nxt = ctrl_load_resp_resent ? ctrl_load_resent_arid : ctrl_load_dram_araddr;
    assign load_axi_arlen_nxt = ctrl_load_len;
    assign load_axi_arsize_nxt = ctrl_load_size;
    assign load_axi_arburst = 2'b00; //no burst type now pre is 00 first
    assign load_axi_arvld_nxt = ctrl_load_vld;
    //TODO both axi read dun ahve this str variables need add back
    assign lsu_axi_arstr = ctrl_load_str;
    
    DFFER #(.WIDTH(2))
    ff_load_sram_type(
        .clk(clk),
        .rst_n(rst_n),
        .en(load_sram_type_en),
        .d(load_sram_type_nxt),
        .q(load_sram_type_ff)
    );

    DFFER #(.WIDTH(12))
    ff_idu_lsu_ld_st_addr(
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_load_vld),
        .d(ctrl_load_ld_addr),
        .q(ctrl_load_ld_addr_ff)
    );


    // the below payload to sram must be
    // 1/sram_rvld
    // 2/rresp 00 only.
    assign ctrl_load_addr_nxt = ctrl_sram_rvld ? ctrl_load_ld_addr + 1'b1 : ctrl_load_ld_addr_ff; 
    assign ctrl_load_addr_en = (ctrl_load_vld | ctrl_sram_rvld) & ~(|ctrl_sram_rresp);
    DFFRE #(.WIDTH(31))
    ff_sram_laod_addr(
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_load_addr_en),
        .d(ctrl_load_addr_nxt),
        .q(ctrl_load_addr_ff)
    );

    //update in the rresp count
    assign ld_buff_rresp_count_nxt = ctrl_sram_rlast ? 1'b0 : ld_buff_rresp_count + 1;
    assign ld_buff_rresp_count_en = ctrl_sram_rvld;
    DFFRE #(.WDITH(4))
    ff_ld_buff_rresp_count(
        .clk(clk),
        .rst_n(rst_n),
        .en(ld_buff_rresp_count_en),
        .d(ld_buff_rresp_count_nxt),
        .q(ld_buff_rresp_count)
    );

    assign ld_buff_rresp_raw[ld_buff_rresp_count] = |ctrl_sram_rresp; 

    //the input data from axi
    // try solve the bytes load problem with collect all chunk elemnet first then assign the data at once
    ///TODO this signal no good to have only one bit
    assign lsu_sram_ld_wen = ctrl_sram_rvld & ~(|ld_buff_rresp_raw);
    assign lsu_ram_ld_cen = ctrl_sram_rvld & ~(|ld_buff_rresp_raw);
    assign lsu_sram_ld_addr = ctrl_load_addr_ff && ~(|ld_buff_rresp_raw);
    assign lsu_sram_ld_din =  ctrl_sram_rdata && ~(|ld_buff_rresp_raw);
    assign load_sram_wen = lsu_sram_ld_wen;
    assign load_sram_addr = lsu_sram_ld_addr;
    assign load_sram_din = lsu_sram_ld_din;
    assign load_sram_type = load_sram_type;

    //deal with rresp
    //if recive rresp resend whole chunk
    assign rresp_row_count_nxt = ctrl_load_vld ? ctrl_load_dram_addr : rresp_row_count+1;
    assign rresp_row_count_en = ctrl_load_vld | (ctrl_sram_rlast & ctrl_sram_rvld);
    assign ld_buff_rresp[rresp_row_count] = |ld_buff_rresp_raw

    DFFRE #(.WDITH(256))
    ff_ld_buff_rresp_count(
        .clk(clk),
        .rst_n(rst_n),
        .en(rresp_row_count_en),
        .d(rresp_row_count_nxt),
        .q(rresp_row_count)
    );

    assign load_buffer_fsm = load_buffer_vld ? 2'b01
                            : ((rresp_row_count == load_axi_arnum) ? 
                            (rresp_end ? 2'b00 : 2'b10) : 2'b01);  

    //wire axi_read_rlast;
    //wire [7:0] lsu_store_cur;
    //wire [7:0] lsu_store_len;
    //wire load_buffer_vld;
    //wire sram_data_store_done;
    


    //assign axi_read_rlast = ctrl_sram_rlast & ~(|sram_rresp);
    ////dram_data_load_done
    //assign dram_data_load_done = axi_read_rlast;

    ////sram_data_store_done
    //assign sram_data_store_done = lsu_store_cur == lsu_store_len;

    //assign load_buffer_fsm_nxt = load_buffer_vld? 2'b00
                                //: dram_data_load_done ? 2'b10
                                //: sram_data_store_done ? 2'b00 : 2'b11;


endmodule