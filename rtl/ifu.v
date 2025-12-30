module ifu (
    clk,
    rst_n,
    start_vld,
    start_addr,
    idu_ifu_rdy,
    idu_ifu_wfi,
    alu_ifu_br_vld,
    alu_ifu_br_addr,
    ifu_idu_vld,
    ifu_idu_ins,
    ifu_idu_pc
);
    
    input clk;
    input rst_n;
    input start_vld;
    input [11:0] start_addr;
    input idu_ifu_rdy;
    input idu_ifu_wfi;
    input alu_ifu_br_vld;
    input [11:0] alu_ifu_br_addr;
    output ifu_idu_vld;
    output [31:0] ifu_idu_ins;
    output [31:0] ifu_idu_pc;

    wire ifu_idu_vld_nxt;
    wire [127:0] ifu_idu_ins_raw;
    
    wire mem_ce;
    wire [7:0] mem_addr;
    
    wire cur_ins_addr_en;
    wire [11:0] cur_ins_addr_nxt;
    wire [11:0] cur_ins_addr;
    wire [11:0] cur_ins_addr_plus;

    assign ifu_idu_vld_nxt = start_vld | ifu_idu_vld & idu_ifu_wfi;
    assign ifu_idu_ins = {32{cur_ins_addr[3:2] == 2'b00}} & ifu_idu_ins_raw[31:0]
                       | {32{cur_ins_addr[3:2] == 2'b01}} & ifu_idu_ins_raw[63:32]
                       | {32{cur_ins_addr[3:2] == 2'b10}} & ifu_idu_ins_raw[95:64]
                       | {32{cur_ins_addr[3:2] == 2'b11}} & ifu_idu_ins_raw[127:96];

    DFFR #(.WIDTH(1))
    ff_ifu_idu_vld(
        .clk(clk),
        .rst_n(rst_n),
        .d(ifu_idu_vld_nxt),
        .q(ifu_idu_vld)
    );

    assign cur_ins_addr_plus = cur_ins_addr + 15'h4;
    assign cur_ins_addr_en = idu_ifu_rdy & ifu_idu_vld | start_vld | alu_ifu_br_vld;
    assign cur_ins_addr_nxt = start_vld ? {start_addr[11:2], 2'b00} : alu_idu_wb_vld ? alu_ifu_br_addr[11:0] : cur_ins_addr_plus;

    DFFE #(.WIDTH(12))
    ff_cur_ins_addr(
        .clk(clk),
        .en(cur_ins_addr_en),
        .d(cur_ins_addr_nxt),
        .q(cur_ins_addr)
    );

    assign mem_ce = start_vld | ifu_idu_vld & idu_ifu_rdy & (&cur_ins_addr[3:2]) | alu_ifu_br_vld;
    assign mem_addr = start_vld ? start_addr[11:4] : alu_idu_wb_vld ? alu_ifu_br_addr[11:4] : cur_ins_addr_plus[11:4];

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

    assign ifu_idu_ins = {20'b0, cur_ins_addr};


endmodule