module ifu (
    clk,
    rst_n,
    start_vld,
    start_addr,
    idu_ifu_rdy,
    idu_ifu_wfi,
    ifu_idu_vld,
    ifu_idu_ins
);
    
    input clk;
    input rst_n;
    input start_vld;
    input [11:0] start_addr;
    input idu_ifu_rdy;
    input idu_ifu_wfi;
    output ifu_idu_vld;
    output [63:0] ifu_idu_ins;

    wire ifu_idu_vld_nxt;
    wire [127:0] ifu_idu_ins_raw;
    
    wire mem_ce;
    wire [7:0] mem_addr;
    
    wire cur_ins_addr_en;
    wire [11:0] cur_ins_addr_nxt;
    wire [11:0] cur_ins_addr;
    wire [11:0] cur_ins_addr_plus;

    assign ifu_idu_vld_nxt = start_vld | ifu_idu_vld & idu_ifu_wfi;
    assign ifu_idu_ins = cur_ins_addr[3] ? ifu_idu_ins_raw[127:64] : ifu_idu_ins_raw[63:0];

    DFFR #(.WIDTH(1))
    ff_ifu_idu_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(ifu_idu_vld_nxt),
        .q(ifu_idu_vld)
    );

    assign cur_ins_addr_plus = cur_ins_addr + 15'h8;
    assign cur_ins_addr_en = idu_ifu_rdy & ifu_idu_vld | start_vld;
    assign cur_ins_addr_nxt = start_vld ? {start_addr[11:3], 3'b000} : cur_ins_addr_plus;

    DFFE #(.WIDTH(12))
    ff_cur_ins_addr(
        .clk(clk),
        .en(cur_ins_addr_en),
        .d(cur_ins_addr_nxt),
        .q(cur_ins_addr)
    );

    assign mem_ce = start_vld | ifu_idu_vld & idu_ifu_rdy & cur_ins_addr[3];
    assign mem_addr = start_vld ? start_addr[11:4] : cur_ins_addr_plus[11:4];

    mem_wrapper #(
        .ADDR_WIDTH(8),
        .DATA_WIDTH(128)
    )
    ifu_mem_wrap_256x128(
        .clk(clk),
        .rst_n(rst_n),
        .we(1'b0),
        .ce(mem_ce),
        .addr(mem_addr),
        .din(128'b0),
        .dout(ifu_idu_ins_raw)
    );


endmodule