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

    //to AXI read interface
    load_axi_arid,
    load_axi_arraddr,
    load_axi_arlen,
    load_axi_arsize,
    load_axi_arburst,
    load_axi_arstr,
    load_axi_arnum,
    load_axi_arvld,
    load_axi_rrdy
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

    //ctrl_sram_input
    input [31:0] ctrl_sram_rdata;
    input ctrl_sram_rlast;
    input ctrl_sram_rvld;

    //to lsu the internal ram (sram store variables)
    //to ram wrapper
    output load_sram_vld;
    //TODO this wen nee dto be byte valid / may need to change later
    output load_sram_wen;
    output [7:0] load_sram_addr;
    output [31:0] load_sram_din;

    //to AXI read interface
    output [7:0]  load_axi_arid;
    output [11:0] load_axi_arraddr;
    output [7:0]  load_axi_arlen;
    output [2:0]  load_axi_arsize;
    output [1:0]  load_axi_arburst;
    output load_axi_arvld;
    output load_axi_str;

    wire [11:0] ctrl_load_ld_addr_ff;
    wire [11:0] ctrl_load_addr_nxt;
    wire ctrl_load_addr_en;
    wire [11:0] ctrl_load_addr_ff;
    wire dram_data_load_done;
    wire sram_data_store_sone;
    wire load_buffer_fsm_nxt;

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
    assign lsu_axi_str = idu_lsu_str;

    DFFE #(.WIDTH(12))
    idu_lsu_ld_st_addr_ff(
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_load_vld),
        .d(ctrl_load_ld_addr)
        .q(ctrl_load_ld_addr_ff)
    );

    assign ctrl_load_addr_nxt = ctrl_sram_rvld ? ctrl_load_ld_addr + 1'b1 ctrl_load_ld_addr_ff;
    assign ctrl_load_addr_en = ctrl_load_vld | ctrl_sram_rvld;
    DFFE #(.WIDTH(31))
    sram_laod_addr(
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_load_addr_en),
        .d(ctrl_load_addr_nxt),
        .q(ctrl_load_addr_ff)
    );


    //the input data from axi
    ///TODO this signal no good to have only one bit
    assign lsu_sram_ld_wen = ctrl_sram_rvld;
    assign lsu_ram_ld_cen = ctrl_sram_rvld;
    assign lsu_sram_ld_addr = ctrl_load_addr_ff;
    assign lsu_sram_ld_din =  ctrl_sram_rdata;


    //dram_data_load_done
    assign dram_data_load_done = axi_read_rlast;

    //sram_data_store_done
    assign sran_data_store_done = lsu_store_cur = lsu_store_len;

    assign load_buffer_fsm_nxt = load-buffer_vld? 2'b00
                                : dram_data_load_done ? 2'b10
                                : sram_data_store_done ? 2'b00 : 2'b11;


endmodule