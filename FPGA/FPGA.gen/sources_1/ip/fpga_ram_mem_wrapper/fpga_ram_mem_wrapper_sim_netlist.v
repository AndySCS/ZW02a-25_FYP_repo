// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Mar 21 16:34:21 2026
// Host        : ecelvd715.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim
//               /dfs/usrhome/twipaa/Documents/big_ram/ZW02a-25_FYP_repo/FPGA/FPGA.gen/sources_1/ip/fpga_ram_mem_wrapper/fpga_ram_mem_wrapper_sim_netlist.v
// Design      : fpga_ram_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fpga_ram_mem_wrapper,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module fpga_ram_mem_wrapper
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [15:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [127:0]dina;
  wire [127:0]douta;
  wire ena;
  wire [15:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [127:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.401099 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "fpga_ram_mem_wrapper.mem" *) 
  (* C_INIT_FILE_NAME = "fpga_ram_mem_wrapper.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "16" *) 
  (* C_WEB_WIDTH = "16" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  fpga_ram_mem_wrapper_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[127:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52192)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
