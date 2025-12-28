module rf(
    clk,
    rst_n,
    idu_rf_src1_addr,
    idu_rf_src2_addr,
    lsu_rf_wb_vld,
    lsu_idu_wb_addr,
    lsu_idu_wb_data,
    rf_idu_src1_data,
    rf_idu_src2_data
);

    input clk;
    input rst_n;
    input [4:0] idu_rf_src1_addr;
    input [4:0] idu_rf_src2_addr;
    input lsu_rf_wb_vld;
    input [4:0] lsu_rf_wb_addr;
    input [31:0] lsu_rf_wb_data;
    output [31:0] rf_idu_src1_data;
    output [31:0] rf_idu_src2_data;

    wire [31:0] rf_data_nxt;
    wire [31:0] rf_data[31:0];
    wire [31:0] rf_data_en;

    assign rf_data_nxt = lsu_rf_wb_data;

    assign rf_data[0] = 32'b0;

    genvar i;
    generate;
        for(i = 1; i < 32;i++)begin

            assign rf_data_en[i] = lsu_rf_wb_vld & (lsu_rf_wb_addr == i);

            DFFRE #(.WIDTH(32)) ff_rf_data(
                .clk(clk),
                .rst_n(rst_n),
                .en(rf_data_en[i])
                .d(rf_data_nxt),
                .q(rf_data[i])
            )

        end
    endgenerate
    
    assign rf_idu_src1_data = rf_data[idu_rf_src1_addr];
    assign rf_idu_src2_data = rf_data[idu_rf_src2_addr];

endmodule