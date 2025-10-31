import uvm_pkg::*;

module harness;
    
    wire lsu_mxu_vld;
    wire lsu_mxu_clr;
    wire [15:0] lsu_mxu_iram_vld;
    wire [127:0] lsu_mxu_iram_pld;
    wire [15:0] lsu_mxu_wram_vld;
    wire [127:0] lsu_mxu_wram_pld;
    wire lsu_mxu_pool_vld;
    wire [1:0] lsu_mxu_pool_size;
    wire lsu_mxu_act_vld;
    wire [1:0] lsu_mxu_act_type;
    wire lsu_mxu_wfi;
    wire [127:0] mxu_lsu_int8_row0_data;
    wire [255:0] mxu_lsu_int16_row0_data;
    wire [127:0] mxu_lsu_int8_row1_data;
    wire [255:0] mxu_lsu_int16_row1_data;
    wire [127:0] mxu_lsu_int8_row2_data;
    wire [255:0] mxu_lsu_int16_row2_data;
    wire [127:0] mxu_lsu_int8_row3_data;
    wire [255:0] mxu_lsu_int16_row3_data;
    wire [127:0] mxu_lsu_int8_row4_data;
    wire [255:0] mxu_lsu_int16_row4_data;
    wire [127:0] mxu_lsu_int8_row5_data;
    wire [255:0] mxu_lsu_int16_row5_data;
    wire [127:0] mxu_lsu_int8_row6_data;
    wire [255:0] mxu_lsu_int16_row6_data;
    wire [127:0] mxu_lsu_int8_row7_data;
    wire [255:0] mxu_lsu_int16_row7_data;
    wire [127:0] mxu_lsu_int8_row8_data;
    wire [255:0] mxu_lsu_int16_row8_data;
    wire [127:0] mxu_lsu_int8_row9_data;
    wire [255:0] mxu_lsu_int16_row9_data;
    wire [127:0] mxu_lsu_int8_row10_data;
    wire [255:0] mxu_lsu_int16_row10_data;
    wire [127:0] mxu_lsu_int8_row11_data;
    wire [255:0] mxu_lsu_int16_row11_data;
    wire [127:0] mxu_lsu_int8_row12_data;
    wire [255:0] mxu_lsu_int16_row12_data;
    wire [127:0] mxu_lsu_int8_row13_data;
    wire [255:0] mxu_lsu_int16_row13_data;
    wire [127:0] mxu_lsu_int8_row14_data;
    wire [255:0] mxu_lsu_int16_row14_data;
    wire [127:0] mxu_lsu_int8_row15_data;
    wire [255:0] mxu_lsu_int16_row15_data;
    wire mxu_lsu_data_rdy;
    wire mxu_lsu_rdy;

    mxu_if mxu_if(clk, rst_n);

    //set up config db'
    initial begin
        uvm_config_db#(virtual mxu_intf)::set(null, "uvm_test_top.mxu_agt.mxu_drv", "mxu_if", mxu_if);
        uvm_config_db#(virtual mxu_intf)::set(null, "uvm_test_top.mxu_agt.mxu_imon", "mxu_if", mxu_if);
        uvm_config_db#(virtual mxu_intf)::set(null, "uvm_test_top.mxu_agt.mxu_omon", "mxu_if", mxu_if);
    end
    //

    mxu u_mxu(
        .clk(clk),
        .rst_n(rst_n),
        .lsu_mxu_vld(lsu_mxu_vld),
        .lsu_mxu_clr(lsu_mxu_clr),
        .lsu_mxu_iram_vld(lsu_mxu_iram_vld),
        .lsu_mxu_iram_pld(lsu_mxu_iram_pld),
        .lsu_mxu_wram_vld(lsu_mxu_wram_vld),
        .lsu_mxu_wram_pld(lsu_mxu_wram_pld),
        .lsu_mxu_pool_vld(lsu_mxu_pool_vld),
        .lsu_mxu_pool_size(lsu_mxu_pool_size),
        .lsu_mxu_act_vld(lsu_mxu_act_vld),
        .lsu_mxu_act_type(lsu_mxu_act_type),
        .lsu_mxu_wfi(lsu_mxu_wfi),
        .mxu_lsu_int8_row0_data(mxu_lsu_int8_row0_data),
        .mxu_lsu_int16_row0_data(mxu_lsu_int16_row0_data),
        .mxu_lsu_int8_row1_data(mxu_lsu_int8_row1_data),
        .mxu_lsu_int16_row1_data(mxu_lsu_int16_row1_data),
        .mxu_lsu_int8_row2_data(mxu_lsu_int8_row2_data),
        .mxu_lsu_int16_row2_data(mxu_lsu_int16_row2_data),
        .mxu_lsu_int8_row3_data(mxu_lsu_int8_row3_data),
        .mxu_lsu_int16_row3_data(mxu_lsu_int16_row3_data),
        .mxu_lsu_int8_row4_data(mxu_lsu_int8_row4_data),
        .mxu_lsu_int16_row4_data(mxu_lsu_int16_row4_data),
        .mxu_lsu_int8_row5_data(mxu_lsu_int8_row5_data),
        .mxu_lsu_int16_row5_data(mxu_lsu_int16_row5_data),
        .mxu_lsu_int8_row6_data(mxu_lsu_int8_row6_data),
        .mxu_lsu_int16_row6_data(mxu_lsu_int16_row6_data),
        .mxu_lsu_int8_row7_data(mxu_lsu_int8_row7_data),
        .mxu_lsu_int16_row7_data(mxu_lsu_int16_row7_data),
        .mxu_lsu_int8_row8_data(mxu_lsu_int8_row8_data),
        .mxu_lsu_int16_row8_data(mxu_lsu_int16_row8_data),
        .mxu_lsu_int8_row9_data(mxu_lsu_int8_row9_data),
        .mxu_lsu_int16_row9_data(mxu_lsu_int16_row9_data),
        .mxu_lsu_int8_row10_data(mxu_lsu_int8_row10_data),
        .mxu_lsu_int16_row10_data(mxu_lsu_int16_row10_data),
        .mxu_lsu_int8_row11_data(mxu_lsu_int8_row11_data),
        .mxu_lsu_int16_row11_data(mxu_lsu_int16_row11_data),
        .mxu_lsu_int8_row12_data(mxu_lsu_int8_row12_data),
        .mxu_lsu_int16_row12_data(mxu_lsu_int16_row12_data),
        .mxu_lsu_int8_row13_data(mxu_lsu_int8_row13_data),
        .mxu_lsu_int16_row13_data(mxu_lsu_int16_row13_data),
        .mxu_lsu_int8_row14_data(mxu_lsu_int8_row14_data),
        .mxu_lsu_int16_row14_data(mxu_lsu_int16_row14_data),
        .mxu_lsu_int8_row15_data(mxu_lsu_int8_row15_data),
        .mxu_lsu_int16_row15_data(mxu_lsu_int16_row15_data),
        .mxu_lsu_data_rdy(mxu_lsu_data_rdy),
        .mxu_lsu_rdy(mxu_lsu_rdy)
    );

    initial begin
        run_test("env");
    end
    
endmodule