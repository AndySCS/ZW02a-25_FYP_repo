// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr  9 20:21:42 2026
// Host        : CCVDIAISB0045 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/twipaa/Documents/GitHub/ZW02a-25_FYP_repo/FPGA/FPGA.gen/sources_1/ip/fpga_mem_wrapper/fpga_mem_wrapper_sim_netlist.v
// Design      : fpga_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fpga_mem_wrapper,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module fpga_mem_wrapper
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [127:0]dina;
  wire [127:0]douta;
  wire ena;
  wire [0:0]wea;
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
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.4011 mW" *) 
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
  (* C_INIT_FILE = "fpga_mem_wrapper.mem" *) 
  (* C_INIT_FILE_NAME = "fpga_mem_wrapper.mif" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  fpga_mem_wrapper_blk_mem_gen_v8_4_12 U0
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
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52640)
`pragma protect data_block
2VP+z3mu84XgfGatUnX7PRBP5w5uZI0Ev7ull2+hsFc3bbbQr4FPpGxXkvBIGfhhGjDzXNV0djr5
lCKFAcZYyMKcg0xnWJIqwH+wHdA3rYoxml7+YWvF+OGGyqvcqVf7dnrXwYTZHIcT7ams/RInD6ts
JBvEFbqFbk12n4DXjMDNPST6s0iogDmZWAkkZktR35AeGWqw1NaFwPLcCrLGBkOY7wjP9jP5R3DD
hPPUwRbrjhTTv0BXYyccLGzIsX4LROnkjwBELtk3VoFtbaxaGRKo3cok1AQ+klMbyKwp9De2Sw+y
qhow9ILVdXlh6hrJrHs6ktMgX8vDGUAnOz1HvBECs6cqGgTQrIarkIVPe5Jk7GXEx8Q998JHTAKL
fB+vitw0/TzWXzUJzGO7xd3B70+fyNLjgIcUAq4vOJLqMbqndkTisGlNfqnFMBpD1AM1VPfCmxJp
dSQE4tzXgKhJoFwPeyDGzAeOfgKhRireJBMNb6m33KMR4c7vOylLR/oU7jPecsJSWvJ7uHwtNqFT
fcaagVF3cbXSRkIO1lxpa3a3CuFMb5gcmLM0ai7qeoy3xy7LZhFotX9sUXyPvVN/ubZ1PAZvcQxZ
Bp0fffjqFOzxqoCkvDAd8+l6cv37LjeWWu6RB2klFg4plN+DNdBD6mEiROv7/H+v/GFKX+/aLaMj
MtsfyUDF01QaW3RncQ5kWlJrUWAPhMVYoS9TaijKClkQxqptE4KngNTG1VTkojr+bXqbgD84lVoc
RzOTSEI1UBuL1USopebiIBy/8+W/YtNo4XvL3XXDB5MV8kKx/YQs5Ds0nE0/w5kwG5p9/Ykcmw/x
p+k00NGVrtdiYpY2gvl0BRPRWuWXhEwup9dM8f20Ohs4DdVsDKd7XzHaeHLGyvJGkuF4RuxOfOEF
4lDiprkiB+qW+D4JK2rXnrL3qqUr3Jnl/FEQMR/R9k3hKb97dw+wSqzP92CWiVlZtr09uw+d/qrU
74Ljgu59bf7kY2BRylnQDnNHlKaCTZ4ISJTBWV1KwYARhWbLjBbGyLAxfRG1DpqHDkRK+xcmFeAW
e/tlF+ORQbYt3a0Tjiueab1tghFX1KEmTNNjmXSp9U0bkd/jnoloW7YdbLX3ULUvF8MJk1+WwNT7
KmL7s7wkeCGLdjAjAGYyYHNU+40oXHkd161y1/szMoekjO5ox2SezZQggmXZjMrdtzbM6N3i3UzZ
C+ZXRwbbBwEytiHEz8hDa49EbeLsrl5qxx93sHLI74xrPmya4ARZpdMfkyJfRRwuEijAOoIiuuXe
ieSLWDu2XHIaFYcW8VSzfj5Oa/J8Z5GomPTY8U00xaq5YEzQNtWas95ayTFS1RJxLl7ASQWNpBZW
7iilJTl47H8i4GFxpLoFtOFoH62RBUDownOAul8p6Ao/LpvWJBNW+q37zdJUA8tiKnwpCP0mIYU3
MVJzdWvjDvHBviLuRVvApkfAm9BTdmFsVGv3Et+BukDdUBqiwx5GlEykuKfN3lBjOri5EfBmsRsi
l+HnB8iJEQEWjYSmqSKpyb9aH6MeqAgSI2YFdPga5SWEeERuljTPs6XhylL2LlvyCdbVKg65ybTJ
4ivgy4db2Cv30bkJm0UA9/QSQOJzdOAsISe8/V5sDae8PtpyN7waNwbjCR1jPteNQZMdvSqnlcGD
IgsasS+/49OPXWAaM4WdfpdbFI+7Yp+WXieA91NW4ePeTjbxAqYdbm+NElJPmnuWv1YWty7g/21R
wGa9dEoFq0p4DzJsNsZOtI51EYs/sO45wwIHl3udOIXTRCiTTk6J59NVbDdl7vSUyH8v2QNwHXuo
ykQxNYobl3ivhaFFWQqut41XoiYlLkeI6BPQsm/dSnyGjNq1Sapr8yWW0byl8UkQWoOTiVSc5N9p
9B7SaTwGeZkTB8i3avDoFLnzig28xbJlnvk7UI66ODegsEgMgc/OWPXLD8VfE9c/ew6C82g3Ifii
kaFjQWTGdDIB2S7va40Wd9KahQHWLi+TzzhewxyWgSkFIkS+agBidQ0muNXlmODa02z5OXvQf8kM
B2+FWUcVQix/8I1ydjPHeoSCWszHbF5fgSRFDaJERLiYcgKLVtVAHGARvvlgW9zmkneV38ksl+yl
janyYrqIePYE9Y6X8jHVG5FNlTvdgwhOzlyrQ2wgvyrJq39SBz2BmHC5UnI+XoEJWy9pCVq7zjgY
YAg8/IuUfzHdrkAipuLC3rP+CCuQsINhQKpLpvPSvqHqqNzPbG3E02aPSRCGgFqoQ9V501AVEicx
KLmHX4p5wn4aS3PP5w1T7nVJEukEW1wWx5xVpRq0TYgOLWNHNIFGB+8QN51PKtu3BnuAvZSdmker
gtKZKgbSvyZBke4bku+3gUzPkeBVIA7O44/SwFv+UM7wycosK6wAQEVzNmb8DognUvVeCpZo4Eqj
hfoZwaKGq2K4y1LMYeNgkybWLqMGLUiyAdoEkSPPWWU0bdEw8pXqDrx6LKUdAuYTVo0q2NH97KJg
sFfKO20fKCyJnPerymQuMbJmuCSuQZy6k+Vn3DAc5GntfFTi1qM9SGN07LgVksZVb2kgunio0WTg
TxWhPmv5dW7b0Pe0VfVlIol0Jo3HzcpbxxmcXa6a48ulYzSx+hHuiItL2Lf3g4LNzBmttXXe9IOJ
vRfMs3mtTz9EIbVx4wue7QVV+U0is36ZUK2rXIJKSM9WO9i/ew1jWknOnUwdDV6Iw/0L3zdvVFCR
DoJt2cZC2YldkPisRS10aytraRhVLMWNUH7bHrj+QiugBDpTVYzYjXzeaLYlqPFaOkj7a59yZyIA
UABMX5Tlwfseg7bLG0zqVxtLE3P8mYcrtF+B784b3MWLkSN72wo4gGcu8qiuaLV951uQGl9mUyUr
EvluaV2bXFZcneBVVkM2HKRgPLBTRSSPtwypzbqKSKlOq96hitVXmoWYsDEkX0SDS4cVEFwkIxAI
grmyDtqNI9S53E3Kt5roNfCzveq5xkX6NnYdPY9qHBdBwIJfqHDihDiErg7Xo5Hidmzij+H59nMF
HDbSmwDWKg3C5uz9F81LGdgCxvJmbrAjHzd1EMsnLy0dbnM6Q4INMilT4CF+1btdshzI+2JDFyH5
gWrHDj00T6Ew9ACfRjFI+PQdnEi5yDLL6nKWiRb2duCXnaMwFIQ9J8UIexJklhWJHnAgMii9r+sc
PJ9v4bTLGLT9U4eSVkVNPjFYdWlep6wI+edZKatw1a2NnZSeMT8Z0BTRR5Zd1/PPHO7ifdlO8j1c
Bs/I/bxnUhlsUC7sdzJFO9SMPthUkn0D3rj7Dg5Ou+2JH3ekMjMxmXFhWSwzrsiozbsOuG0uUbsH
8fCugOtqWRin7MYr9vYCnt3brgSLJrePOlqUGIl0NjBU05JDJVIPeY5jbCvIF8H67syEueMdU6aY
ChZ8nsURZCw/XU4YQxZnXmh7/+TM6CwjPS2iyRykQ91DIoGN2COPfmZkqr9m9yQGn7G1qNhHOyhM
DCkh4bMcrJASOxkBqkkVWiOJ2uUi9ArxBlvkU2PFPdK8GG4XtG4owtqsL08gVMBHHyspKF48BdwW
0nqR+KZRW7+ZQgJ1kKb5s5OsIaDg4gJ0G6TpDyoTGGvj4J0WvPPJ3fr8iduM8gHpGJ4wdLl61AZx
oVmAmihtrMHz/G46r31JyqWAzvFZBjUVz4ZADpDtnifrnful4I7164lByqKo2BcQpABPvXh7VPDQ
KWX8yUYAfixr9k5CVX+qORU7jLdiseXVryqbTAX3rR4IruUhf7r6NEM1yftLaz7RHq3UnGQO+1BP
umq7mjpWGWtfjYklIfZvCsDrPqC1mqX0RIrRa9SNUq5573BboK8kDPYHjqO2hEymjLwR1oz+IwOR
T8YSDFK6r/TL0KRGOeOcbgd1Gb3Vo07fvaAHk2rrfc06HDgxMwp/2AQO3mdKVETDlKL1b4JwaPMc
f3ibyIkW2X9Q9zSqFZ3VPYlgN/aelDWI9K1gMbw1WM3p7E+YcybFC86ARrmH2SFeiUmXB8/78QH/
T/zev+KCUTJCwVcLgK/9bODfX/D/dEhm3jhMhc6J4sVWE5nDDDZ3KvWhIbvX6tMYOEdF3/jbV3Kp
+HDM375bg/75uiLRQQjKCKG6tdSqLIS6xWMGdzMPXaqAaipColxtJQmzafagWGzsPM4zctWejJjM
WXVM/LZvAtGXUIG7j8sMeYffgxdjQJ9m2cSRkepicpYpSe5pAQ3XHrXARLLGpqDwjkPBnCxrXdmX
vpIGs+7qLEoQg15QD4bjY05fog7rZuisEWTGQoAnqRBJ7yMoDO2zHWz16sdcqO5VBIcQgtj+S6Jc
rzENo+BzIltlQBcLdR5YUp55KhNmkUP6ehBpVL+XWbQnRqsJxhRXX/A3VwaOVd3N5bfI9dkXf7b9
BAvVdkN5Xip5tUHFiTZnVoxv4fraiA7zw5dJBkrBKgcBxMD3x39bZxpKqxx2DIBbc3ElZDFVOtWY
fhnnZ2bqNQkqhfGQfppGh32bS8q6RJI4u+4PNrk22aWwBsg4z493yO9XuW51gv1eTmff69mR4Jlo
/bXBpNJIZnHEOKNMtKTW4/3tEEOEw5dTr7I/9EbcKKLDc05U6umqtiPxgfbISh/fM5aYLycc0Xpv
Ytgrzez+W5iCmPz5L3WEjzbsMTrDXVUnIuK5WvpvF8RLrj8Vb4j/SZ6p4V3GYbTnNrO9wgUsoNCv
sfb4fioNUXHUtNT9M6kKRMYht04p0NQPWCIIx0ByJm7oqDM0bDKtvVrkjIVCD7TjEo1IkdcBcym0
/+aVFJQP1Xa7yc44ZSz1YvGXzUJE/a5R0zOlRlbRPZJlrqiDodhnyb1It1kLG9+j5WEKdJ383sBJ
eTiK2GKXliQhSTcdGQc+G8yhBitx2ar/BKJQrY5/JM2naCE2pWZnJxSqS+u7C/PTUAI0cqJOo5f6
3+0pTjiN/y03aOYh1xhTshULlWFRfGWHmskLIXiB+5nuUF3hDS+qiKGQHAnzOg19drg7dN4QJjyE
9o7VFhwQqhVabLoORNU58mPSQKuAF4xWgn0izih8pb+7Lbgc7Y+jxaEHVFueTr/OyZfbxULuYZW1
7yNMspl0zOmvP4ZkHuHNrhuH/PyvOZbDQLoHvYoUkecBQXwxBeapm4mnqcFcZQjlltiQR1vKAMxn
F+XGuwF7mKpIcCR/QUpJI71GGFwfYYwhAlSQESSIV21Yt33p4o06Sy/Ze1TNwxAxT4RjjpE28QEd
jLr3Kw0zXzqWOfVmHTyhfs7tmORnzfngBMbrBn/UevyIlATKgkufvRe0rxcBNHFIPd/E3a8vcs98
2eI6/jeKx/AQk6e/ZqS6fDGEjuUvpoe83uc3g0EhFuMJueHad+idyY3MZqLm+d/lNb8USou9U1sD
PhSLtmCCDrYzlzz/Fr2HhIAmAA3ThuNu4gajhtVJwZ9TKfTOMEhrQL/V3GVjJVFpfA4//PKEghgK
PtZff/4jEphgFjm54Q6RNN879QSQK5dv4VAw9spTgCRrHKhsSBtv5Epn06uUh95lnA5q6KhffcBg
N0MYeZWVU+IMvOkHGsU7Ty6w3WotZenq6opYwsudrk9ZliU/v9BhQmnR1wdHL1fHRn7dOX2SPEfA
2wf5lKVFPjdHR8QluRG+YTAMej9vGxriH4i0r7iNW3ef/vfaU0XMw1fr8rHEHD2xAaLIrItz7uiM
iOgOeMKeOGqfhmBeZSJhf7kZTHtwCa0O82vFH6qj0r/kkgzmZBvLc/QlLMFZieLRX0e6h0mftjGi
4unT/Rp0btp6IohSQkjud+xJBH3ZgepYzjliZBROK5ikEsgVWKRPUWNAfMAX6sPdvr8qie2Z4wOR
MrYlf1JPm7BUUWsYTWJ4nKBDT5xE/eG4WUN7iDdsip/iY3anOfsRfY+1dxzz2+Lxt2qMWWcPBHMz
lKZCufGEu8d931miOchn9oBuIA445l369+oowb1t1SVxmEMMLfL8qOQE+Eg2wag6SOQWAS8aUnQ1
97PhkncS0Bm02Qcn48Oqy40XBNxgJ3EI8hPP+oe4icRTsJlJNMtOAiZToxBMXUjhO0AZP5ln4ucC
AOeHMKqi9oFiLgRVlaIlK/PxvZs1txuz7FG9qp+qpMDnJ1Re9/0JVNjdarAtqHgsPteWIGUrt4dJ
8OlQ9OoATB1yD9pBa3CU9Vhc1rgDzRWc+tmkbLBYO5DO1IKvmObU0YlfMvdwlYd8Qerzv8q8l/n6
rRv+wEFF/kvamvRqXS/+uEjVKVOmwWHuLhhuoigYU2CUhsRgtc1VwmYga3zR62g5zcMbWLj8fe7A
V+OSAQLRmSbzB93EWDY0PvnNAYU7bt/b4rTcgioVXEqKIa7tPAzroOOeJ6gvEYSYdY5G1JwWYaDq
tViI/s6SgAVbtYWBDsrrODIJ/lnJvQPdfHBrc5lv1rCmNPLQ7CI9E2c6BmZzWw8Z91z7tbzwfch7
Qsm84N14L2fDuP4RRjTq30CDmO8KVYLIcu8YJzwVaRq4qz9A1T0v7txxwHsvQzqqe9III61v2b5t
3G81RSqDqqU/BQmyT6maJKzTmzJwQDNdPpCGHwbS6oGyrRWcnU+a2vQ/RqFI4kVQxe8xlQMbgoVp
hUMKirp/77iYOVK4oeQ1c1ZYAe5vDpJh03Kgq9fXV/IgSfZlUJJ9cqQfcejcW73elkm+T0Pi+aYJ
U3s3hrh0eZS1nWzFo9RogeDzFgEihUJMwrD8kRcWJRkl7v2r5mSBl4arZI8RrPLvLetpmerGMiYH
ofrWtP+yQwniaYP6qBphMcP6Kb+tDLGfuFa1cBhUcCObu7G3y1wcx7CIH0r6TS+3w4fqRMf7NdAD
kdQyKxQwisdeEE2bGOiaNw0AnaHlIxMl4e5amYnkU29P6n5OzadrKNQEhfsZMeVsdG4cU4UaxTnG
YMm8mQZeKaJnQeVgWf1ygE056lNsR+4dCVnmIfEDBxnpkCOaB7YhE1XNqZwyf1obWJFzaMFl3Bpz
ilYuAJCSwjCiCC1K27UIgOzmlcOLYfTHTfY23A2YecbCtIpeBBdtQWu1k+ZPiQh30NgMURMw1yXU
TaxnSz17QIu93VCtw7oUXN3CpNuxTPMaSKpctpKL52PBYMviHcuHw33svcgeYGdw7rbkLxefFiFg
xdGcBQMdAgGeuE/wmCPa3PRoPA52d1Ge6s2UcyH0AoflWsyQPUp6IIiuFeqtTwrFVYRLx94xXRJM
Mq1t0HnrL5Bq6j44nNPukGRfk2Sd1/ur3AqTAb3y3a1US3BZKK2jxp10L5X8ds/DqVfNXK5vMXDo
/GezKx6cxOK/L4d+9VEmym9XwT1qOSFTuww2LZUOlFoiw+7hLcDFpRk23kzU6ZUHbfyseB84E+Dj
ilFMlvpkq9FGIEHn+XZUP8jtJyn2Txew904U1UpNRUA+dyx9snklgkkb2RmAiAYBCibC+ljPJE5K
D/GjFwOYsTxV7Uhqu3YkEI0MNWTChXktd7qHSdyTI95NAoirwghkGJOBnt76cXTEQzP/pRBiogzP
qVw5UrpFfiJ29MabqjuccD4n1kgY/C5YaaueujR9nPpSFth+LqnZzjJwSlKsgma73G/1Omwz/nIK
gd3W39jkdnkyovSlqCRCGGHscMSo8QpBCYfzAAfQxVRFT704egNOJJxeo/NUbZWIKl+fKS3n4h2G
Cmgej7ccs0un/4aPVdxUepnBzkVXh+HRE3Y79ylf33Vk5j+sU2CpK0+B1mFtGTNN5uSngjJYU38J
bqbODKFkl385v1t3kQBAsUjHdobVhCZKWbrdyypjE5vks5Orf0DOvemZFXlOxUZ/NqpwLWjWG2Au
0kE4gArc1R6nqA3mRQWDG+IzOdfMrczqWNk+WSPuk4qzdSh7j5gOzML57iyeX/7r1QwRzaKEQJut
RteFSbsvaWQkACrOMkMY5H7IIqFeNKzl0Xxr9BGgsUjLJuxFNqLgX7XYYJl/60XNZlK/Uh9Ro6Ly
n/eCrnbaqzbkxbacj7JmVS8fv/5Ov+OVKI89x+fcufnpYooi42kh4jGuYdm14q5e7G1goko9zK0R
DeSRNMMeDy9qBO1MEpDi1eYMuk9uhcP6of3nCIgLe3pJGjzKd/waBm9EDyoJV8a42mp1SlCXwEpE
MuI8trRXVcyJWQsCBwtnSnh+oJooyxgyFnR9zCA6klfGjUdFbXvHk3ZMMyoh8oLW9fGm1s1lRfxT
VZ6blD28T+8mWvdRL6c1itA1Vmx/t43pi4JOyIEGJFxHjSoYreTqmPfOYUhbggv8PBLmJKfWgR/w
CUxR2gddwW8+b9j4jbjYm40zfSmXOqg8svEzFwoHAIXyfk5PI9CnttS/3A+k06WEkFmzUBbTxASt
5Ds23EsAawaO3xcLSbEwiiq78lqR6vmnAxspS34gEK28UGlRTCvw1DLrppV061k7LA5m/QNw89wG
MCbnZN7cCWKT1FjRWXMMKiMFB9lU6Vd8SjDTjjlf5wiY1Ix1U1vVrelUCgym36viqQD3FHF+vk0w
9g7Lu6nSivVd3IsDf/ud/FglEQs7mPNHn2TeGZLsSkyUUe0xn4kPCtkZEQFu4KfKdhf8p2BTFL2v
jJZUgz7uJV5RTzwKKzJJMAOmRyc+54jL3MevblZL/AsFk/DMVwSmno/sW4XSFxC0609QwdqcXMib
FAnq525gZy8ii3g5lzwhM8398HtTicjoiKtJYtB12N37oHqqxmjMvIKB9IbF5cgJE9HbJfd3ZDZi
a6lJwq9MTJ3iFUrk3v3U2ZFohwi87+nLaUSVhEJkaSjBXfqn65bYcNKKct4OmNPyHCrfbfJxNbwI
InK5nstgQI4lC/h5RuFe51gyLhHvK85YcT+ur50d8Ji0u+YBuQZuCD3sKDeujVo5kxjaanpemVCW
etn248O1inF6AMJZWc7oOf7qMqJNhFHpv8UC2IncjA7d3k7xALW9RRZSQaydSxUXZpGyyjWaikhv
jE9pyzHqtN9guuE20yjvoV94nmDd3QNnU7rSjsskG5ITpkdl6qO6HWhmzbO62ksdWuI+Nw03Gq8h
7FuxAsDmnuG6ruPh9eZhqhNCapLadhUKr7sOmW5bXB+V478iSWZ55LPaDaHlynxErZHboRPm7MAi
mCRk2h1G7UyNmuxVxSKmH3NT8Z0QBLxFWHlWG9jkgCOg9nuj4pEiwFVL21rNMjfPJ3oUpkbyOl1h
WTM44LmO3EiCKWHR7aFm4zXgmmvIjzPD5Yu9CRrAcuZacG3umuzT930//gm9E3S8OTiYXaxtQADS
rLCvT+naB2/vRmt4tlTZyc41jlwRKYmUBl8MwhVJV45LnJRd3LEB4BoYfKyF4wLYQvVBbOyEi+tn
ob0+67/p8PBefjkCnDrUh7LgW8pb/rXgnKYT1mP8ZzRkvp7ZKEz7MBfbl5E1SYqQc8OmkmzDHHL6
F+PzbWiip1i2TYerZiyEsncEWmXav6N5c/42EY2uER7zFOXcHqBb4vxrgekemVgyJMdnjRcK1mSN
u/w+XTptI8fJNSxhQsgJ5zqjvKxDJGw5boYWvKevR/EQdki1YzN097SEmJ8/PflXFQGbWOxfWbr/
ukqPiz1on0Yp9/7ovq4P78ual4ORv7qACqV32WO06EJldsD0eJaf5aDYMvHE9v2TXpn/9PPxBqI9
HTSnVt+YSSk4vfbpNc2Tcb9CDO5joSTWS/Epkv5MK0K7itD7h5/yzvXApOWHmiHr23qyYrCQo3+g
I9aSOYnZsyWoPUtRkEAtcjTo4bW2AFlb+BHkgfvfti67hBZ4T8GQUyXWPFC9y+T5j6M7QASkF36N
s/qN8IZT85x69tnijk8IPl3Sm4f+odY6vuiy3YKaqgCxqdrz2VOVikospBTw9WffS3iyHKlTDP4K
p+jm1uQJJKCtXSC/uFVpSKxNn6llGKgdW22xTex12p0wGQ/41L7PLlLgA5bCQnTqymNuU3iuOFY/
t0jYeEBopmADNN78OFV58BFBTSwpVQqjWsugQhfH1DCc+rGfxPVI7GUPJmnzERPmVhGBE9y2iU5+
q7pSeDcLEVlSHv4kAKa4Lx7eBxr/6CKoI2Upi0NFAq6P4b6oVbZ6XKiox8zqdVYvOe0Wu0yhmMki
dsiEPXR3T/JWqbFgXa9Ep++33c7FGAQ4epPBgHNx9CTtq6oK2LxmIttfeGQvUZ/VoaTW0coM4Ao9
0u2bXGf8Z06Vtp08vugx4fMprFzG5oNTI934MzZPtLjJbbTeOVycMS4WQdLcRRN+TX20ETj/oRAF
+AbCqpMnUONJE0cAHV4qEhf1SgwqbSjBuoI4i7Fo2ZIlYVBD6wGZcSsvzPjjgYk5AXY3TdwpkLi8
kzyz4hrDLQuciIDkOaoBa4iAXJ273D6+WgRN59wMb4rHPOyfuvWfqZ/vmPASpyrIl+f6Cc5mSqtw
pltXHt2VccG0eYBcQIL2TrpMeeYqeOLPEYaYlKz/+QnHm0hvK6wB5EdJ9uklApweaEJ5Mn5S2vKB
4fq6zcPjsym3IqhdbXE3BAUdD/DxNfCj9rEN3S6ay256VNHfGSszxtNu7Pq2wg0drnodq5udW72b
wWLc0A9IO/UkKwryWHiaLux2q9qqxD9h0S6uwMPg408ou+J2lLnZbkyKuPYfDIdviNrpV1dadTty
iDRdhPty0GAIBRMU5ogBin6T2Pa9IC9w8eQijI8jo4rpPte7P16XxahPl7Y+Szxsgbp2nBb5cDJS
SNRrVsgQyou14AvLW1zSbjdFjwpdolH9ymXw8nbs868a4ZSMN1uEVnBd8qImrpBDXgeJnk31XfgC
+/1y56tZRxEPGAKT06D+7j2VslXn2HOpK7b0OJdoahNtdmGnHhsLcH/k8q55hud6GfkX1GCaXVLU
0bAgObc0aa4fh0jOJEUwJmaKk3grUHB6Hc1aeGCTvUUzLTdb5ZMVUCuoo+Y680Fz27QWuw3Twec7
A74NqY36orb37HV+A/32cDZW6XiCyXNyBmrHFPFu19H2yPXPgQjDajuUC0wYLWrQZpWwe8y8cuS7
flcowzGe2RU5pVNzrbpiFvLuQBlayRU6r33QBeYy5sMpYSwUBHkaDq4GHySIukvIE9v9SPXiNX4F
aa0DT71gHhpgKZfbAn4kF5Q/8Y2SyO2sXKc5A6AJiJywDNEukqngZPS+hkHRC1uMMfkoITMmMsMH
307E45qDKesXHvWZXdqI7cYndIWoRizaq2aOYXhcLHtlJHvrVJGyZiSOXRTpFQJI5jGMcVEdC576
hyfT8JlIj7S9nlZ9GyRjfEMcsWT7tfZmhilvR5zbJqLnOehFX3tDiLFcs4po4wqMbxxDjsLTjzQo
JCQA9y4DOl+WfODkzYQ4RwReEzg6g5hUwuTTC887YqVYA/+v6WgP3zNT3SepdWcw22O4n9OPdoef
EX6Z3GRMWDzGCluinRujSfMmZNLPwcpqOZA83kjeb678BvkOOxZi8HXiQ1qjrDyfvkXZUVwaSaAn
K1fn76WHtp7yxU5ZOglBpN+cwkcoDBMkwm2wjpjagL6MvD5hYTmlADkF1lRor1NpIPc8hnPXvBz/
YIG5r85+AZQKJEBse+ax5Km0k5+8TuS7s3U1/to8Wh1YdNKcsWWbf0FnUcw8MJF58NQUZMRg5ER6
F1SE5rix85i97HL2qTOxO+yOTAseksAYZWy72iPhRPZdKYMw79PX7gXyA8oaP23X+i2LFDdH/ORY
sjmisUkQELfG+IcDtGmleQvkQZMXkRlQIvpHBF+zqXTHUk+pxLW1bLKRGHHNxXbireLiQ5Q7g2SQ
eZTA2fZvXRoHyZzmlrDE4NhK++3ZgRzJE7u+A2WMDBMP7KdnRhTDdnuzIT/BDW2eyuUsJEQuAoUi
kVXRvWJZRfdxJ6JmFpw+BSbbQD6fbghloH9XlaUb0f7eji0JUYGMsuWa12lZfi03NswP0FH9rqQ+
YOCr0Ok1fDDexB6ww4ATNUt6IqCc5w5JTysuVwBeZDX9MxWS9X68B9A21GenzFB6UD4JSDiqOoI/
wr2GOUmyfnVQT3KwVTgTRI5uGchA/BA3AimFTPaBiVEANxXCnxZLomB/AJhqfjNrwMe2ECEAW04W
RDzdCGon/lLCN/2X5POfSHYODyw1nfOBgyTDldeS1HBo/mu1A74CnukA5LqVGsj74sYLt64cEsFc
ueGIOf20NsbENCZZyE7dDcWtt2IsEe7Vl1W3ZfxiHTEtTblYkmo9gchljhr6MZFK9UQl9i9k7Se0
FrTd3OJeO4zKn4g7wTbb5Bt/SXBOkHO0NQ+I0jXpoEg4k/Rq9PlfqIGWEO7ijIQ+gXx+95TXLueu
cKzvxCjWcRxCfdimki4c/VUrZOD9oX2GYMTJV6kOaZBrRp9HoJEqZL/6OVj7GoWWcQHKMseup879
vvWJA5O9PnL3LsSyslkyruKS4szk/jaRTVHGlTpTRMFNac++jcU8AxBKBUaDqADM0lQCYVMF05EO
Y6XwF3SzY6a8hpNbor6//At8f9kjFsu6t8Q7XwJSPe1jc3p17vWTMNv3V/8bWG8ufPM7RYEI3EeI
p7z88BDJckqkaFznTXF2svRdmtcvQ3x5gtiYEqZrtSIBKPHt4NuyetR1756o+lbgL0jyj2a2+QbP
2TLVc74oH80zb0afrDh6BQm00uZcJG4bDwjk8HirnjTGKYbh7Lp90yKFD4BFUCtZporjyQnbB4HI
cxgaXC24r9C10gA6AGXm3q+D3MGcOXegQnf+qP9S8wvoAnoHyz1bwZ24+hmpS4e5j2ndnAlaQyCC
5AKPf7cgB8kRRhPilbV4P4YsRKwO6lVO9mjBEQ6S7N17kz3updByOBMnk/vKbvi5dwDQW4FKnQQg
fUE8kiARUXeRi/1a0aUveppVKGsOAYSKBmvLVv+ih/HTU6VlMGJqMMmeWHtNPoJ/wdk9q+S/w/EX
L96ZMVMmzCDjIr4zlnhAAWbo5EXEy+nGIAgWomt4sWpmV/zWwGf1s2d/nP33qAAnwULF16Zdh/l/
0K9ebKaX4OHsfMoMzgUl9rc6OL9NVSDRkyeKkaGMb2YQDAXyjwCeP8sbEqoHHie7F8J/h79U30pT
FykVuqoQOhfhdJwbCm8d5wcHESOHVp7zpKQ3bU6kkZ5FLxXvsCCOymiSahtpvHiN1R+mKXdf7I7y
da6Pizx+88eOtZ6AnuB7oFyeb+AZG3b7Inpip83Y8KpA43KroHEhpqyAYy8Bv9aFEqVNr0OOH7ZR
VxD0SoHLF3/fwJ6Wq5/JOOgNBajYinTxmCzwYvPxMsZRL9A0T6UONJA4wSRtp44lB+0LD2iuSwfp
kERfVYvJRHIysqsQpjB9qVz7uLxqKqnGgKEY/UDkeKYdKyBsOl+IOfeQK9AtwqkDkFy425uQulRy
5mwl5NgzjJPKW2petXac6tQ6diJuAAOirFhk0a7e6BM9qxbHscKEpcuOzJvQzmEfyARLIkS4EKnQ
r82GivUesv8yLW0dBrzwzZdpQiHSkqVcDGSHv7a+j9y3ez9w1HIKpmPmCBeYiNj3dB8hZEZTapog
hUnBUd4i55/FmS8/5hLTNKVq/oomsXuFxenRzoALhKvEJDwZXRlVV6PACoVBzSbZrAYLktkbdg+R
f1npGzJ3o3xxMffIVuUyiPq0GrPl91PNSrx2E1Zl+SHlulgwCa/lKPLChqKhJ/OJlRoDUUnnvR9J
7poQvgTTDxKl0NpcfslZkjcPORaPqKrhXIFz69chwbVqi9LDb6bLzbNqY/uzVbgTYFx5mPOgWO3e
1c9YBIz5pTU+PYrWuMBKt/UnG8KXtxIvh+coWe5fmj+X0B/2mZAIcRyvtroHq2DxLSzT+N/FBAoC
PyhGytY91dqhJORc3K5/ewn6AwOEFxqmtiQn64XJGYa14k3TUN9fP9kMfEpTkhL9itmLvzAGKoPs
4v0WxgQZsBfok1ktYeyypScrhZeyGSWE4qB7lUgUGjwtXKGJrLnAB0tASYHHKOvTflGlDP6ByEDi
2mlPmjRVMkSMbe8rVC1cwWBOcbahaEmiPE7FzeccoL1g2/t/Y2hIEd0tAWV1Rr6CHX7EdbVh7Z//
WEn8YF85eyDFkkva8NeJKlRC1wgNyz4sg2vcMiyxBD+TwNN6GyFCg8OH1f3b8LDIhgIr81RaxjfZ
iOCwJ1eU5oM2sNxA9a502pfxOApC4i1jSNE803KJkHDrTFF6K1BHBhaCnrha+KmMLpsaOvLGqcgq
CKgrJcZlvwYwVO1O2BM7tg5FjVO0GdVknAnQZUKRb6iQpc6IstJqkgpJGRQgSw9wNHr6EV9Tsf8s
RPlp9dyXlzAONSVcXD0ePguSgHqXCEDDgkC/jICf+AAXUs3fHVjr76peITb90zvzbEiBx1Hn2EYW
P9VsTDq0FkSAlwkeOETd95RaB+0wzC+yAuEA4ZStHqU37neSYSpBlnvzEjKWZgE1TgLkfsWCbQuF
Ykhw35Dh88ozalXeqgeE6DzrR3ZT7/yu2kNub6qAnKjHEUVMRCDYEBh6Nmtx6BYGbk/cFuA/KKXM
QvSY6q3EH2+rycc3AO4c37AvoYx5Uh9vtZrIM8UfpHG/jfD+1N9umHOMDNG+H2JBAJ58Qmjh49Ga
3kj63iuztZOLprXka25rCcCOVoB/5479/LqXbbF1jek7o69VSl6n+7oWTpgAqoVvi4xadrcxYjqk
wCt9qO4iNUjO8JiclFwilaEqNF840VdbbAk8SHLoI+yl80vLGSa23SRKtW53MLR1JH58iGbvQOTc
qikz8guPW+NAbFd48SRu+nQDNDRoTVtr8x7zw/SjvF0nvw/IcjIJ7Ukf4LmNPuIbK3wVhQTCq8WL
6uXtBZ7t07RMGnN0t7UXvSNT5ngTMzD9wcH5fJTKAoVaTF3LIqS4hYfiybwS/a/km8kSmDR9jNyG
4GVFQfAVQayoNu9jQyBGl15P0VOl+ktkkj76fx+mg2b2Ce6XVGRTEr1oGVy9rLJeoNboQxrSs9NB
D+q8eiIMmbhZeK1rMtUp+Nv5YZ+tNgkRZpGqGTIdA9aCbaa0kPpShsV5s9TVb9aCKSjh1sY3Ivj4
89nYTdra88slljTXoh539bIbX9cbJ3zxa/7oecCOh09HiXuBIgO3CRyNofsZxmNh/8a/3b4GL/SY
NerI3yEjYH7fejf2I1lWg65OhfO/fRXf/NlPasgWfpv4VNnj8AS8cX1Nqaak9cpW2Yik9MTtBM89
5fLzegsLMLPb98wNALwrxebrZHZdcgGDBMxTCGeKpSXv3x4qsK+ROlmVhs/CoFG3r1ss+wTa6pWj
1YUGQE6F4TgNiFps8Jlb5fXi/N5r8MFgDU3ac5pEM7vx5LAYzUKX6YDz9zpePffP8PfK3NasejK3
SrFmVhbMPF5sgfUPfJbj0JRmYCMCHjZkSe169keT+QHPSyVtsIi3FqS1uJBgGIoFNUyZeoK2/CuF
ulQ2FGtVajP1w4rYvZq4zHf9nhugW6vVAl5eGlaNQTpJA2GfPPUNGiM6qEBHmJk6QDjqU1GzCrKu
o5tgROcf9fp3sH3rSH4/bw+RboiYr5NFYTq9yLrdvrfLnzxIXczZOFYBlaHUbYeYEt9ROa7wOlKZ
mrxuggu2Oyc+XQAWQlpRDQOiN7m6a3f4SEFzk16kM+Oezv63AwBMuYZKcdRetG5Xda2flfeHTnLo
6aXyNh3cFfWIAJQEQ/l39BPqmvQpMBPQ0ttr5SotzOS9yoaLxmeBIwUKB1KfNLWI+TuD24WhhukK
r+wnxshgjyfw+ZbVD/sStxzOOnJmPRzHwEszdIRylFGZp+eGUteDobm2rtqAOH4ahsXRldCX70ux
F2soPhjQUINtEZsynDW3TeH14wPmOVI54n2EdDDY4JQBiu0HtvIXviEJ5rZ3oVFiGj6iR9p9pMBO
Ox5yMsUKvRM9I8W1FOt30gp0MAVki6XaVmeHtWHmfjAN9tAvkF3P39aZiGTr2kEdQh+bv4k33S/5
u/DFxubyeEoRChiN40tzC6kLTVllok7vwdKllBl48bxyAC2lJlXde3UKuiv9Iaat9WldR8eJ+AUO
90OWwwiyPkkVjEtwBgmHkhlx2FYwFOhlC5oFP9On1HyCaRJke5H0pontSEo9q3+v+dbiIBVN1Foi
OnA/K4HIIf1gLjtPJB4IrtehmqOxRyDq52betnQpInlXVo68vXZJrwXnhQxi+m4RQbMbUCZialwk
LQqB/SbW2BRBKYtVK1aQkXdzaEeEg2ApH6wGMy8YDzmdEJnsHt53RN7K4JTWOUao+K7eF17soQ3h
rZ9XseBg/hS3Xza5rolAtee012BCmEFSMlfIQz9O6WGeVA1/9BWND39moqCYQ7cmREDNMl3N3cDR
bz77zpQVgXNG7p4Uv8bPoKwmCKC/J0zCD7CruIWFrHBZlnQzb380V2x5ZGihiWVDF+7cFB66PWxe
kz5665T/OHtEmYfn1pSXB6EAa5pxus705LDGLmXST2AMk4p3nDyX0B4ACQQUtDrHeuTR5A0RE8zC
O17utMWdND/NbBqXgfJWsLvON/v0CiB+CCLSZ9djM7V3cEFMqSqTtwZ9wDnx3ydElbIsn8D3cgSY
JY2CkUNhqJ+ih4oYJntIcascJxZ8NfLjk+z2qV40HHv5eiiNL+3f6z1GTP7tT9Rk17S2VJjfkyCp
h4iNs2NyUBsIqLZYUYL5w3V2PPBtg201wnmuHfBH1XbDHPRIZw8tMAW9u0aKX7bZTwLyevOGHFpq
mXXfh2D5s+4z4zPWPj4R7hw5c2p2MZwEvWHYf83Z8iSMySFSr1RsT7tehIqYEyUxRFj1LGbufWZW
Sgw2IbO1L8f+NUOLOMbD7k9nm+92Fb9dSFgnLfZAKQ7RVQizcjciLD9wgk1KXeFQoCAwUI72Oe51
w+kEAmGJylG6inGWxvOICZuKD6aICrcwdDx9+AlpL7VZROLGzABuviz6pgRvNcCcdSopPf01o+27
1tGGouj0vpktZMVYlqSCDjAi/OljgoM0vrrrmlwFNjQ/eiVY+Obz3JIUH0agtdyaDj4Yi+5OJHKu
Zk8CoWivwYH9wcMXSfJd+PTFnhcJhMqZqs9q+5xXiUMfeMUvp/PfFuVv4fNqpw/o7RD4b4SOdnQO
FYIkLBU3VegqRaaOTxa8tSfFaOFylOO11KHCJx5jzRGWPZhCcGUMzs4LoT8iZdtsx2jBlyNU3viU
uOcDLorO3pz+Nqs4gRWiM6/9zGzvnTuYQXMPrkdRx4q9bj+9rtSJSR+UUUCEzFUyH24Lxdj2JBMw
gCtcpvTnk40OdIEqb1mpdqhtKofLTGSbRtBTwirUT+E12pu5PVrrRp91o+U3Baep1ZJKn5DX9s+b
u7OZZsbXhahQR56Qq5R2ZJNhdV5lAVyhfUOlc+Upi3eVNmicSPRn5Y+HWmysv3dB8lVabGu/vgJN
RFu5ejyXhUUR4rXspZ8lN3tb5ukdhcdkM4NobFhbVHdDjfnJV50XOq+pRsGGHZZaheLRIBD6F41O
hYKlxVLY+DFKv1jBeLoJIQKZyBkycJB85iHWlaJyJ0pxkDlK/oTetZahm840o2yztwozIMXtRhP2
oIM5c6nkw9N/UZpTVBxnOvlIkuL3Fu3IOPoMXb6+EHc3JNrRqreqskBt2OrZTwdAUNnKU4+7n0OD
VtlcmQKdL3h+ooUvufvZiLz3M6rnpsknoRavLqMqdOjy3CS7JdNDtP5n/rccx89a+mFJANlqgJBW
oJcFOTsA92kVGgHbXk66fohggRcjYIPQckwDLNfWBX5WtAjxwVKHHz/m0Xq3zLH8FQYJKqb6v5km
0ZTJB4NFmuBVRmIn4GBRsl1Wj/0fsNH4LP378bQBnlLyGfAO+niE/0Qe0pn/xCw3iLEYAAV6JSiO
mgcvXFs5wCufwXo1GFPTm4Uyj7vXT1BA9GgrQJBXMTuZ8iEpK/58P8tciWu5tNyKp2cmXQgy852o
daQVRwuf+pTkDjy3+qhgn/h5wDP6h/Fsb+EjCIhxybyOoFEJKCrlVRP1b+Ak8ZKapuZnGlRq9YnJ
OxrX7oAcJqR3iPNJR4pGYXWXem3yE024afhmyP5hzG6Okb/bNnJil11jQCIzpz8nbZU5JTccItnp
7BIxhMg3/AwpdlKd5jk5Yevf5kJNvjGIZ126ELRKAuZLt20hp9Vq5a+f3RWEpgDaRlgcWIrEAkmb
Qt8mK4DPzdeAXtzrCLSGt6uFTiMAgloxxYtUY5FzlTu5Hk8CMSFUufNt4LYxiRzOHsOJycobjxSt
1yUiT2EsLr3eR9XMOrMDf8RWCywscI4dJwBaN/oOdvn48wRZrSkk9BuM4fXbTdlD8m3kfkRpX8vU
C03CVi2XpTMbqf8S4OpAfdNHfpduHTrhjrN3kNq9kfqjMc7u0PdHEec1PTGNhHqv/bvYO/vzITTm
SYP0KGAoA/hZkAJJ2sql/eKAPvxcCuPxA/jRm+O9sh9bfKdMjoXuIbbbk22fFkEw1EGThMrPLQo5
/aXEHKI9gKnCI6v50CONPGwlbgjFiUEXWOqzVRmg3PilXhGz/jsMgYcNzr84RYvubv54UJdFa2XO
r8CDqZEatS2Dthtu+8Am5utnRX62fe7kXL/1Pk0ms24TzG8feU62jQn2lVc/5FDXUpDTNEch6R8o
O5q5e8DfTGO8eVGCQbK6qCmr8UojberD8vd/M7UE3+HBPvyZ0FQmOIWuSgb+Z56b2aRlO+3531ep
sbOH64BEQBkv7u8mXCBW3XtnfUpxaKr6FssqkTM+8tmSENjumeJRwcsaMAP9YJb0aHC2aD2eSPHr
u0QLE/AvQt52dqfnTbgra5ppsFjBpwRT9ctnqI+lwhogasoGbCTikd9tYiS35q4P1Z5+s2Epxud+
/IkdE5rN+s9+ca6QeIVK4+DH8NFPzyCkz1Nu2ybJrwutwVTBUf2gIQj5aBPUICjp9rKAaGh7rzx9
r4NqNqIe7bcDbNqAS/S4l5C/HP7YPWO6DFn8bxZhzduQDLzKkKUe0eY54Vss8umoMBWoaT1EFhA5
SUwlCi8h5ynESbAnxXZvHbEgBfGIbKBHyFiTSXOr2YNkvGH6QzDCT894PPZ5SuU9TFZTt4USu0De
72B0+KPRQNZVkLH/VMp+aWlYje4izihcKSaxjcIcZv2rQE8ublQMZ75flq4N3z55/t56IkXziG2k
wQLcLteMsoOPyw3j0V6Bmqpgt4Zr3Uf0YyrRD4OS8fVG+CigGQuppXuCnspsJiNvs7oqGYsHB7BX
emtDZxzhOuHS1ZIVjSIA4Wlv5NOxq1RM6e+b37VFbGezdyPqep159E2ZRU4stlS3CJNTnh2zTQpg
siHIyAUbw1dOfY8/LH3LEcSgQMqtXOsHNbSdqc9rOm8tVsYm/V9Uvjj5GmhWw1aQfh8i6UiyXWNW
CXEhuiBTkelHVwxgmLQW4j77TaHFd5Ln1u6kNF+gHIW/Wi/WChYcfjNwJCT+IVXFZGaheT/DEC0i
2uSfCvOQDqllfH6wX9J0KG2VnkE7DQK9RWRLSa/AvSywWvYW2u3am6zUwLpnr12AxDsGccVvE3Ep
CIKibL2j8hHymHbYfePY79+Mi56i3sAoobC48na6U0oMLOlhtUZZcuYGPaFXly9eA8AEo4tILo7Q
y7rDPQcGJVyZ4AtvhW1AeUUuXGjfFEf/zUYpnSQ+fG29JgdqMEP5QfFNRwMMVndkDQgHj8QmNp0V
uyUYQG6UvBtXfDy3UJS95Z633P4zyN3JC9ze70PNM5dYRsqxARmQhdiHiL02yS2Mp3X0NUIcyHUJ
cwYd7sRssXJmwXYlYfqg12CHEyUBtaepaY35TDCWhm5em2HINmwKtTl2sy4n0Sw85/QN0LMQRVPz
wUKAUeyZu8UiMu+40B0jbAJ/2IjFnL/LajTHNqQQpEDmCAe5VaIUdFMvPfMR1LzYvlpRrakc03an
GLWC2Ax1ZQhwtg7sX/4n+IQ8bkSlisfulv/+wyGR2svHPt/UajGNeJMxUnDa0iLLbruvs4w73Odm
dwuclTXFi2H9RHUkxuUqIkjm4BfTabnqf0RFZChhiQKth3uOMlk+x9VZrKCp4bMynDt63atgQ5ox
m4DNiMdDklcg8jZz/q37i94+Q/ZAD4ABfGqFHC+wbSL39rrR2zE/RQGWi/SkzIk9vWyUHgBPuszY
yjnN5MI2CjL1jZyK9ehpd1znrRIAUwsRmtfNyQ7od1dk4VHtzQqr/WvfPSWVL6NOvUArIibd/Lal
MAtsAKBmPvgdOj5fD57vzUj9uc/YHTFmh4ziSW1vDylojjl2lnIW+rfS+v0kSJeMjrQznwlvGz8P
LUMkzUHEPGUjJfiVsaGDosAbamdYv/h1W2P+M6ZKDS20ixsKFT+dJ2ZZewqGvJstWo75q9HnlseQ
o1tyqHQJQlZAJVzpxh4oEWtkMLLwIjkeNrCaAiWIAY4XgLHdwLy+BwqS+swS9JG8Stat2QlHRNQk
wx42lX+uYgD7Zbs5QWufweKlnJpVcJZ07gvKrIKOtAAV57OrxzdibLq2NdAVVzSTIwpzGw5Conu0
ZgIEGyLSE1drXg/CA4bevrCG5N3lfO9fd56h8EJq+TUXCTE0nm5G3hl+1AvLOYnRAm668nTTUtMf
Ta14z6TV6XHcUmkK8x9nx30Eh1JTUcpYINbOHyVzj8SdeeRYLGf9aGfallT3qhuOeaRSUOW40fbg
v6lmn5i1vqgQcH6mYMhQnrLW5wuCIhMafGu1bL7G0rAZm0BrchpxL30eBQHr3tOm3Y1AonPg1qt2
ZDJV3SnW2kALUv5hjK0MxzbUYvGO28z9qmGDE98V+Kdmfnw7R8hs4ujw7H3fBL84neQQDl3Rldfq
7SPz69H+2N6fpiE6c7cIceSZTrPbb24dhDAqKC06X02lrAgrmcCQG85Qh0q19ptx7EMtAWMRPyZk
aOOGojCwkKtolFq0+8u86aBpzWFVv3KBhi1lCBLNrTz5sopHmZXDsbS1kl9hsyCU3Jtie31HFemW
3vKhdrSN3FJSjqx961Hsy8tJ6au5T/pxrHl65doNoGv6Iphp+MlGJgye8GArbTnyda3P/jDJGCd7
8zfMWNYa7pHZ5aacXDBBE7Qr+rTEyyrnj6yVYcCCKrNME3SlEjx+CKgkP9l7l4i9O/Sp5bnHTjQQ
JqalhVWISHOc+/yM77tO3zZhcjQI4UUrUrKlsEHxprQ0LEj6u8BGHIPX09JENCEvk+tE1hWjzvOw
45sxIP1gHxQ4/l8rNivKLcYMzQsFhl5Aw9BZYMDqShDXV0SmQVGYdKRWoS998ETfLkB4uoaXRYav
hrDM/5Ft4m5LGNjy2THMNDO4lsCNIMOjM4zEt+FqslPPU/y3nA/3jU0wyOSagHGarlgV9zkYU1hh
1fc3WKvme/I+WSxqASOTG2kMQ4bbDKdC7JnGU5AjiGaiNCSfcbFaYjN3CUYIjn6WABexvH4IP56u
ZTF07PlgOJ6+XcWZ1jLReqQKd9U0F6MoeyqkF/1BjsaO+xYvjWZLyaAd/xFMp0m46O4neg+LoKjD
sjsH6ieOsBd01dSJYBnRpPiB6g6ztGRWO8C5hBemQdPOZpxohrtxUqfgCCXLmauNbEsc6JMpu8Vy
SENoVvE1ewOC34DFcFzRVaqQS01GIuRUknc9vcA0cY/nPoG8FuxbotciJu0hHQf1FrrzEOg5qtqu
VRk6CbefhTBNOqrxkPc5M3dwDoUknOrf16i21HPG/HNMd0KlyYWH89a2Hx4mwVM6j7EsCfNRt7z+
1YXkxRxv+8Zjy9WIrINwM6piwNbLPdJmOKIxu6snWnszuHzd21myEIOuCwuds/iHzdHDWOmWK5tl
z7YuQGALuno7Lj35Mkdc/GLz4xrRFMJlqPCdy7w6M9sw3TUQp3UdcFZxKqe+HQlWoK44qum+VbQY
SMw0ADmDiJClzgdudoZwjMtT7BZ0Ch82ObymrQ56U41ijviOaUcSk9aCgRiJIdSFEUwlWcYfZNGP
JcYAUs4DS5KLuVETL8KBDA7CNUnxG0rYhQ/9eNX9xiG7GIIpFDW1yCUPmeLLxaMXawOm/sfXUQLk
LdlQ88qpAAnut2i54Gh2tx97LuEzZf7A4jwVnt9ZvejMfJLU8S6/L32X4uiPZ0dsN7y9hY35OM6G
/mYUKCG2U/irooz6/fzvl5RWmuAq0ouMF9PFbdyGeft0SVDPOp2Jl2P7bpxxn/c2il7gIRJcQoLx
Pz3tccKU/04TGVC+QRcESnFmh5z0511F7LpreZFAf78s+r9QqXByKXDR8bgf0QWRAxpeANQuzSRL
AvqhEpncbODSBzTQD6tGiS2xb/qWkwxOVqxtrYV0PE8wMS4sYIho/anrSe2jqsNYSnWRWGUawoYu
NJ1R6d0RpJAH2HpHmX145r04cGfRQv2W0OQg6bHvbWdDCQkdfwOPzhWqEIfoJyTU4T32n5lfTtd1
5d7DOfb4fj5l2C1rbI60AaEufmOKFpD3UBAltMfpRReVUzX2chTICjUg4O3Pj/yZivamNdPQ9uAZ
/LhGp/2pkIWHareQ3G5aJbkFgYX3BxkkXesjjr4IqQFFhE3HTtQa225MksWjWYoBgVInWAnV/VcL
3cPbDzokIbWe+Pnz4sJqbzaXl/dT14S1I4Cr5SL+37vdfC0oNuaEDGrWL0p8wWn31WmoE1qEf2mW
XMB7IP4Y+jEVxcuL4C5UxrxNGLM5A5U+7HPyihCZYQBHoNOZLmoibFOnACwJ+szcAyGrwXHmRSu7
4NGKhqIcfUFZzQtut8A4e6QZaqcdVZN/7ObUipEAN0MQLDffPdnxGwy9KDAwVlzrGhp6hcwbDoNP
LqeNG5L7Yb2dY9EnaB9HkDOpzTV8ceDeV7P8jnvnyKRd1b7h+OSWEMMN6ODDq7gNdYaNy9Tks6g4
fICYdxSy+IOYYNnixX7ui+rrJ4+wIVfXg2EnFAJX4JGJKRY/dMaBi0DWbFAcrWAofk8nTzYQ8Ulh
/cypH2Wmp5DLmrq79VkPaZ0cW3EgjHSasPyzmtzidcZL3m+YXFk34lsUX29/UEZgQMM/RgC/YizT
EuzYe0+eK3B6B8SjkTN7M5vzXWPSM3k1Ir1veWEipWw0yY3iX7twH3gxAR/7nORVVQTWIqIf9FGA
cWln32z0SA5kHtP063IXnOUgU5GkIIWDiEoip3M22/ZiAUzcz34Z73DtU5S35dVuVghzwxICrjIT
z7vkuVwGuhVVaivkamVE//ZefmJZE2DuL2PIsiQuW24RIu3nCAOWVXlooWf1ulC5i/ps5RQbjWUX
SaOCnfF2gKxrByHGT/E682Mn8RuFmvXM3fK9mU1clWOs5i6PzMTB6zqkFtCxlv7RUVXM407zqIow
Q/3QUS6x7rMt+BshJW4R4ASppQi9PRhvldQ5rBB+iipLQAWZBy85EE4g3rSfgOVbZpJftyE+p6yZ
oSaRFfAcx35gWOgU5WgyrjHpzevz6hguVXxcQuW0zCHXRYYPpVGjchQkfI/8T/X9V54sfnfEwdja
E317BAx0JQ6r2wM7JMHWG6HVgmXF8iVWSQFBlI1nH4t7Vo9WhWnTFQy0Mf3OAtMgyEBNxPrzP0lD
wg4MNysliRHlePXdD+Od4ibXd6h7C/Gc1EF5hJzcWnI4cfBlAtQjcbJfGMAjguWV/jFgP5VXr+H7
xJGFvjB0pfve74lQiQr9ujNp7XaS5Ea1UbMffn71r1XBLLoHwNLS5XaaU9DRoA2M15Lp8iYYGaCW
AfjFcerW2FWU7LujXJlgl2tm15JMglABCwRtxXv0KkKNh0x+WQWyE6TDyLk20DhbutIog318SuR+
C9LEq0gnOriIiSLwbjYKMVsPCci7z/Y8uH1ePeNorMIog2SQelACQ8J2sxbIOfgyjVw82PBlvkSx
1enMwp/Zic3hsTKYbljKmNn8Uu212YPQB9SibwxvG9uP5HA7lHd7JNQHGr9PXG5qh3U4ZhLWvRgh
KAb/h7sBTNUvcxSwaZJJWnNqmklOSxkk59fHH5Xey2PB/SAXrg60zUMhBc4lLWFUVg+FBaU0hwpf
IshGyH8i+lOFEoYMq7v4CoIX/HKjFgYlsRMAu/kMKrFHG7xikwrFHcAiNgK7sFf5NfHf016IgRPk
9vuoRj4iwcClV2CK83uYmpKt9ZnhHeY9n8MD+SSycksjkcTm7KBnEw5itgRcaG2x59Bp0o5opO7+
xrIUX+ZKlu8ZbEwMVKolvK2ywb7BH51NvzHVS/biIeiVgFUTepYm+bMcCDZkd9NO+P2zoeHDghHu
Us4dENK3euD0PcCLnWgRvqUj8v+Njy1hNsqoKMcaxYQNCmU5ZE7qwXQkx1nCNXn5s3n7/oZvhhk3
KYky/lxDM72WgpADFKzspa/0/i9bfZo8pZOvZTWz7EMzIynlZKlezjXzOipWOTHpF3sN3rSsvKw7
bYLo8kPq4mdcMq799MfyKNyMqAD7ttmimdSFnvgCwM/ltde0NdW5XsbaxHnOj1MlVI6H02qiTRvr
HPHn0JpgquWQDfW8zd0lz4vbRY0FBmy+vwQeIa2LbrHw6I7sensXWxeJpXMyUtWwljIZy3+Wjs2y
qEaCC3c8kSGJ59S6YGIcUyjH2NqEy5+h0L0Q0qgydGTM4s7mAd0ofaFB99Bz4KgLZO3VXRhNKmwk
yf1Yh/C3aPiu3kkUfvNPjcTKF/JCnuIMUsxGj/M/JZ5R3qudp28POl1H9BoumaPUZwGnpfuql+HM
F10ZfmXAbJ9mJlY1FCf1YwBSgwaHHKvWlgXoyhPwgLgBXe5vylGIXMCJv15n58zCuxDqTu3foktl
ojX/2ZeH/RzQ3ngjj7SZ6MBs9/MbtljgUoD4KxE8sFZX/ZIc8fLcLYR79AvMbvdNmsSqPIUkBOkG
yIiLBg6uIsO2vDTIP6+BCJM4I9hB0C9sbDziikJ30B49hvr10iIP7irgwmR4ZpSTBAkgVplKsuyo
3bAIdDVLiF571V2598SIzmVLSyZXXRa3JhVz/5C8HuhUkWqqFBy5ClBFcPSEo3J9UaOvUKMl1VcD
S3ycPEoUUvA++PkxQpsTntoyfA7Zzf+lZaz8y5tDLy2upuhvn+3fM6lPbFKLg9O9GGVUDsFjFXiT
7VuGw8A5caEOqGIXsjstojiyOCJH4jOt3O0YqXjaEzE53Xs9tMAtuMlEar1QMQmJxcHjY6KyNfo8
gsHvRtcAme/7Bhx/6qFd3raEmfUQPt07lOkm/exAtRCRHGm5cXdGbp8v0YbRXGrbcievuUf0yWik
y9utpy3rsTEYcXvesO+KfPs8miKZeliBzRZEmpvzheSV5PRMoQlhhmJtqFblPrxIGQKzDS0Q6MGL
ACSvFFrcKsozoE+Mz2NFyGeHbqhgwd2QzDFH2fDNTtVu2kEn+ACcBXxKDRIqblxD9igSOmvJfMhF
K/J8wFi5F3hj08gRYVJAZl6/DgTlSRrtSaKOUMskI+g0xd9MXuZLV5NOhcRGZa2eeN6g0fnIEYLT
0PFEbxRGDTDeehS9GLb5rwZVAZC8QUJFdQzBluecxNmiI3PARA9JbKjeFOhCwa80GfY4xevt+4DU
ONSeZAD84WPps0hl3MyBPms6MufavnQgzQOYS+4yffSCdZ9jXCAQ9pi/jBLCnO1K32lgymZwwbko
Uh3ChkTnG7cntjFKdVteR1UTIzrfmrtRuK23bfFcOgxAgT8tEVILSqizNU3avGhlsC7VC1QzZ0ro
NJzkkh0kitUkRkfTly/yzZi4vQgSpEbIYiLz/x6da4gQyMlJCJQ0hoHF8OrA+0GTsrNc3zyD1bpE
8D6+zik0Wecm2xMP8MekYoc6waVfFPCAFR277ucItO3rREyM4V6xgwyfZRdml+84CbZUnSbEQyQf
mK18jG1pjTXSlvjkMtRz2oESgCNshMhE7WmCLQaq27RfjT/R4g+fT/gf9BaxnTXindVrJw1jucFC
Sqj2nFJguZJbuuq5dodp2DZq7oBe/GZu6xiZQGRVZAU/lMxsObgps9wYz+4mEJe2pZJep/xaXwcs
qJ88mGB6etDVPZwYjXFP9Fl6l7Ug29L5LrqG9NazCWb4puZwn0KH9AAA41l7HPGIVn54hvOb7b+h
OxBebYzSBSqFqJgplUeu8LqtJCS4nxeDhnWXjdh4kbeIfswOnXxlydUXu2H5O5egnisqUyMcl6T/
OER6vkTeW3cMm3e7mg/F2zeBObCai8ZI9y+6vLN2dv+ohggDm7KpZHpKSj5vVou6IJ5NegJW8Iza
mpQcuDw3VkUhi2MeRB2vPmPAvSX82FeHJ9YelRgSKcmP8uWemaocptFEDy2nqIx2jjHs1qKUJ7EO
wsqbk+TJLwyBETBWuEsRTs4VYPL4fZQNWuZuJwDL5TLWPtVzIX/eOUlHaLBDLkRSJxwCvpXXPm0l
Fwp30iEzFw/5l4hl+mLKj/agbC8mtQezp7IRWRdQFDu33Gcz/j/oMU8QTUfQMBo1vhmBWfgew6JG
7pQVEMEtaq7kXwpApZXey+IebFD9ggFvAY4VcNjm4xS5ry4oEdYKCcV2iOzTTa8xMq3xpZPFoWNB
dZPE8tekNrmQKcVREGUDgt1fp3/jAJevCOSVm4P3wNRppTHQG2nIG/oFnw2gslp6UK73oPFR2Viw
jSo638ZYPCnAJ4Ijk2XoXHhJlHytlgGD2jQaDZa009WJAV9uJHn4rdyZZlsPcw0BKOMJ2u/+h2PD
K7vlBfu3W0PuDsEZ8eNikCS70BG2LTN3t5kTBpuvZG/cfmzt6JrI1d+XyW3hWnuBKqPh2PxVmR8r
PHIUuEZzyARQQoURWfkDrIrTUaJZiJH0gpiUnTatt3c9lroM7x4QHFH10TRveZMMHO6v2+DrZIiS
OvECk7sZcBfIVb0kAhKH7h4Jdu0bLKNEJrSghId/dFtNbdRwSX5pP2QuBd6FSU2maOuF1YAJqBbM
MPHiMA0QoifzsCU2G/ThBpDTosQOoNLtyfPaMh/BfGn59hHghwKucQZ/g170OQkgvvQtjfEpKgWA
z/v6wnSclFVT9at+nytzs7YDDXjyrFRAER5hpbDh8oJVfhrot/EmtKKG/221dtyKjSDcqL0Xe7tI
bDmVIRiRt0nYu0kZE50820iP7iHJHyQaDfPnHArQjpl2K6X23M16r2u6odARw7tasw9+Zpijce3K
rtVB3Dh9KRSnk689YzdIEXeNlP7+96CA0oVugypYtyvselVDcGpbRtkkpSyTbGNkeMP1+0bDl/8F
/NHv2Vy/19CdfS+vGvDrSBHYU7QEQ+Bn502nzTjMEc/NjKxCzHHvSRNn6WrVO8VpnHL/G2SU/rqC
UoaPgn5vaYUYf+9ZsFS+HHlFItKyZBHm1gtmJDWSqjLhxzuXJlOEwKtg1U4PCG7LaVLpvn6bNbkI
ugB6NKVLd04acE9ZD4la+XrGxMKtT4sgQMv5PWYabRbt+dL6fgtZhBH6ivlFNgF5McFIgwkf/tN6
0gsNCC8Gk3r4qVTfY+rgKU61Sk2T+9scAihPHaQUgEtZ2yKHtRE0sgymcxOSqnG9N0Kca6JhUH2W
DVfHWSgE5xqVCIt2IPiNVkIsYbHsWqy/k3VofdSSu3GSc4rppcNd3lyMQPUtLLYGbRnY6OROfuEm
aw9ItZGfakHHeE18NB3WXJjq7/dT4ig4NboBnuqwEFr+9gdZyUyd2swNbrjzfW2qRsRx7RfQwSP8
wbLUhGtf8qbw/wD3Xr28GTKVqL0IATUrznn7yPCVZxPpajhV+Da83WeshaSzBTWkTfl2b9TUlJ5x
K5I6MFienPOLeyrc/8tq3M/1CyAAJE1+j7dtgZJOfM+6mMN/Ei0gMl2EMmXW8F+JSZ3PZf9xjpoH
dforG/+xmKHV0RR71Q9HbGZS3oDildAIyKzrBl+SzkH0/64k/+cG/NI9nEHINXLL5YJfUyefYsy+
oufpnbWICX1mO+3CkzJSdNlp4nM5eaLO8u++eQxb51n9Pjh7qpK7YMkhgmEfDgc4HQ334B5ZkMJ5
gvP1bLkKqo/t4Q9fevjc2d33UIwqSAdRmbpiivdvSJdcsXY/hEXlpTJusOTjUMgkN1g/jPt6Gpqc
GAMCDc9JOzU9d+AzzbH9aKtpIu97LNu+BqjNzyRztI2dEdOwm52JDurfeJytYvQxG9p7omnDC9ey
+IklqapqsYGFpWl/6sJxHsrnm2J6muNCCmn6EQOwszB60gSJ4OaBN+7Ys9D06+fV3Ln0/+570G6e
rdIngtpiGlWF6vt/B3ooCIRW5nMS10+7XAbd8zFB2k3c5SbaKCiB/p/3ELAoUFOYKMbV4p70DbZh
AaSQd61aciUZy7Fl4Do8qmfXtuJGQZrTrnaOeVQ9mrWaV0Zg7km9H0LgremioPStgzDsf2Ds1UHR
ahS+drSkX+hBAfCkuBue+TBAyOTEWnfCNdsQw/5bvK57Ht0tHJCF9+jtwvbme5qE1iUpAHgTQFrH
M/fZUK5C7+I+kmKKf9JmnK1y8aeT21te5m6eGKUlXJZ+JCpPZxe1tJ3dBQ5L6xM738sw3YGR6dze
sBpkpQ2eXq+GHcGRGsqm5FInzHc/P4SIEqLfULEsEqAnIq7b1yDNp5TSDZMm1hJwNW+i5BZknQ78
4hVhDPionFYhqVqKS3Od1KFBUVkLLjeqezzB/aVDH8TPTAZio8N8/o6dUW/7pJ//wcwwZ7YALk2J
ALhDAKMxEilC14UC/GgK3zKjgT3oxg15NmZcCXXkA5hgqxJkphTYD6uXCbAyBcPKcQuf1OCKlba4
/CKu2NF0BezIv3HSSwNXYxln5E7KyDr5uyVJPdz48/g0M3i3tXg9rPVYofmWqIjA01eLNu1oN4T3
lBoLdG17WhXjUcMqK2x73tojtGJ5hr+MYJj9pAq3b1kIHmbrD6M09iiopVd1KgkRDwcTm563i/10
wL26oSPlMENfkQ6QoTh5LbyWLu8R/6A4BSWw5tmzq3bi69nano1n5ySPJGmA0OejBAx8JkGOhHBN
9qMNOg1WPXavRGRZIvZBnkQOWdLYy+BQFGAL+RhAfAxbybyp8EcsLS/Q5EUVmshDDqJoAs2qggSv
bsGovac9F6sDjBSEWLs6V2kk2gSyBh08buHMSzpxeGJdcm2t8m1+Pbvcfq63ug88HUlSrzbf/CtY
JmkzL7spr3czyaLvhqH/iwWXmbAGVUMrCEcy0eqB8wnodFPnoLlI0J9v2fSZKZl25SKk5J/oM+5l
tb7qITG/0y1hrv4KzJIuMg2iYZbbk5EZ1KmGT1+etMDiMuWCrLXxWX00AUG3DVZeVj6QFqZJmOwf
ryUCADMxbvKpEfHX9AGLujljvCZkz8WgJMsZEujaoqJNnQzMTCRYLE33134oeJbFJrLI3Rcqaa3a
kixdYM6owBkZG8nT3I7PljXC2IYeBhuVlGTLrLD1aRO3S3D4kBdtcHSscVisFMlRxtX3cgr7is3g
XrIH1ejz3N0WFB5ub8eEScF4QZ0p8EtVC2xOaSsukqfk6tdvax9QThRZ3KVfqv51XZ8aTpYj35Yh
n2rc6ae87UXjNcaGAkZgcyYijT1SHHBIkuCz0XpW9bfrC+LXrZ25W7OYTETMUmqQJ6myMZuS4zj8
xos5BcFDfZquI9mmR0QeEfH40o2eHUk277u+9m1dhsuwthYmD6QlgJdhIEZ6B5ZLkq29DeciCAp4
fAwg6f8eZwMPRFKVQIVkoBF7eCFLhwRKNvD9EDVloBIBAWnUXqRuefhDHjgsjePc3SY8txY0NXTg
+zxA+SWTKB97Jsxu5Kg/iErb9E84oPq5pTm/1Oe6laNT6FwqvUWjNqAzS/DM+aN8pHEZehAZRGcB
/79CogklMScRRQYFk97QqeJwr0GEBPnNJYT1cF6l/vWuHEQFfl4Bc/oQDEThaGfnlllCh1xtJvGO
ITvocjI3OZHE52l4xEs2YyJpgTKgRQ/1GdsqtFxzZwXnJxrgrwzXhm+nveRLocADbqJ05IYltog/
jgxipjOKx706X1svBZlrAY6WTqqEpRoJ1+5TYsNqel7umMD22Z5bMNVmaMmqJqsxGqGc7LRE317h
fFCuHuN0I7bghqobuj/mL4cEtOUUHzdU7w1Ke2wQqcjJkMi/GtGo9k4uOwNRAxVb7ClDmeWybzHu
cbWPwKxGw89NGPhqkDqGyAQvBnVDRtbR1f0mlhzX/vfFteOKKoUqNh49sGMN789D5kjduPvE+RlT
cDxCYN4EOGFTEtvPN9rR3wijtoA8sRmyDlFkTGXV91kPYDzAydf+HYz0ZG/p9v+0iXg1G9SC0JX+
mBEURuCuTMXHHj5hLuDBCYzfKKl+2eIf3LIz7pI2RIwPdb5u5mDy5RFMg7+84usI7rMaenIowwpq
yCZTvC+1cAaeh1HutVG/L9GASlXW55OfBec4/H+iQ562xjKaeyZuJ64UDvU1y4hx6tzsH+SnRVDY
HxZ+yIweZl1XTC52TSztIdmcZ9Rz2TTZON49tggos0vStJs9zBGbFRiGjZq4XrRLly50zVBqtFEN
fwOKcoDCfyDMR4LXSOMuUO0II5crGEnXb6pLPSd/bYNj6kKMszpk7ifP23rk6M43O7Ywp2Tf9LI1
2KlU4Y1uwnGxNJOrLnOa4B9b9ZWlEDu0dzHYlWS/q133uw83lVBfnRFybmPOWptC4x+r7lldhqP4
quDGg9U7hzXf4o7sGSYwy5R9XOsuGPUPZ1MGhG/vHOgOHw1TsGmeVUPY/yAeOUv8prMg9cC/poPe
njuHHVIN4vpuzTYdNsX2IEhum1FO+a+2Eqgl9tmOUTr+F/SB3b2qm/SwEiONurxEYzdpAizFWnmd
IptrIYtT6M/48G6O3aYTnN/syzoY7soVVlu9M8FxRgTmPekG8HuFMs1HFjcDmTqzvEP1eqT5FFK3
qso1cH/Ha2+qar/Gbe1jv7iWkBIXoVCbpjIF3RH3zM2ZbBzcp9fAObb/UCcoch0yT+VzanJB+Jjj
AKcbVYye+k9JucHX7Z5HlZYxym6cq5oEIXk36nHD09BembHmdeHL/KfiLRbKW7WjP2dk3xFLtzXx
q2Y4ch3CP2e+YK2Sg6aD5SdiJUWF5D/JGCoVbtCZEamCtcR9A5qvLO6qUM0hZFTBeOp2EBSw4lHa
856iGzJgtER83+gfTIWVcDnbe/sWxAOvhfKrST8RXrG26363leSMHLixpaWL1BVo5MlV+95ogz84
dtWJVAnUp5eVJARmze68MikQ19nthO8jNr03wtnjJFyVtDivpNen97wuq1BdCwLkyeT+DvjDGcid
ihmpnBk8qs/WmOTKIN2s1qKIZDk9HdUcNZZ+XSLdQ5FUuOb66jbTUaqS6iJZWXhcmcCrBqTMF22R
9s92V+kBAr8+9BppHG06EzJ1clHGb5N/v2bzf03r4m3aHLFv++bu4x4EU1veKRVEecWTnabPvr8e
1X9CsMDUuBtCy2KrQ53UrmRGydHby01KItrukDdit/Fk8VmCfgTdEpmIaTlyShsHJPYEs5KSkKKK
hldJVnQLlk5MBwdmqOZb2UX/UEAseOaNZ9MsFcAvcnfa32uzQ3Pb0KMS01tF0GjbUMbA7KWbfFgV
N5synjcuhXqCARwTszyzN2qc53mR7rSuDTYqIT79HKLBxpAjAEKe7oKLoHE0z52H1Zo8LtHcxdEE
iiXd4th5oOstVtD1mhkMZY/f2Pqt/czHBzERpzmq0Mdb3MaMXfXOeJwa+bxkrYDTaCpxh2SE+4nN
BZvb1dTH6Ed89qEXb4WPC1Uh/1Lp/0DvrFZW5oN6dlwWh08dyGbuiQC9YIQy7lA3vPrvwSmemVqG
xbn8x5VXeGwWDQrfEOoz4LLCCO5aerGCqHu0BMIMwC2R/NnNPnQuWO/CvPJ37vzKLvFG2hnxhHAx
tS8db+O8buIFvZf4+yrowZYKpqmVpdUrfAwbuCPsC2X0HnaBFmzL0ZJob2N4cgWW4daPaZmznXkg
9sxxre3WCMfaAK6oRyKSdj6Q8QOZoJ1w9osh/wX9i1w4FTCIH1QdQvy+qCIZH83Nv5EdOxylDApX
Q/3ZmTVP+eAmTckAIbntea+oCEdj/1e069cKOwalXkHALBZr+uxS8ovpqh1o2PvUwXSd90P6aoXy
R7tlAo0zi9aoaXipuJXHV/0qL2VFcGxQc3nUzSK7ksiVmqdBP0Efz0IzqtCSr544zSWB4a4ffHib
ylc4hdo2BEoDu2XbNOx7wVh36rFZDcQXK2Z9HrCl8Z4orQ1bCkYSj3lKIyhAtaYY476CR0hreNRH
1tptuY6RJ3xM3MR/tiWASdZwac25kxTN1osY12GhNAfKasUd1TZFEYhrdt6M2MUUBYPqvqmesOTQ
NvDThInLudiiow9B1/xlSbs8clvtOYmd+ZMt8KACsM1JZ1mXbV9KbU/vd8YyeCvJmd7+6FVCvgyC
EgVRP24TEcg53AvOgqIkxsnPsJECKG+owZaCqj/gKeKY2IytXL3xF+fTMF7yDuC64Sx+0qLJzCct
cGuZPJAbxcOpZNjXPoieVGZ1XM+PSU9R1jMV+d8ewuG+MSvYdakV0yfi+aGBiZ72fgtVda+MUaHK
L/mdLEqpCetxql0BT0Lywg87FHIIcvA5I45paS7aZjsnKu87dAPY7a7pLG1+gUQMB+vqWLVKt7Us
aqsC/qaPGMFBJDMJ8o6sjwHkIT6yfCmOs3Q38LtYyUfejtmOlD9vUQNXqNBOdHaB0r5f6Sj9gXrY
oJKEMDo1jDBKEbq7SZ+S6ywgDs9u3dR5xUPqiy00IpxV9/TnJ1IuEIW2rPBOx0GpvSk76zDU6pwz
VxrAmnXjKjgrn7oBFL+dHBtA9S03mJWzo3QpogRHTiqi4ZTHg6fDd8hn7RXpSNQREUWAiSJ0ZMrc
rXOhMcs52z5yvsdiE2dVT7UVm58+98otwhZUucyNvEhMcwKH0QOjFb7+5L9OxtvzTCFvx/ab5uRP
LueAUcBkAYNfEVV7KJg9wDH/MUftGK2lmZDXlvPF3EZ9b4Ktbn3680vaoKj7PrUVe/GizTJSNwHa
GJeEJMMkC0kjeGZwx0ubgdwgw/jPYFgR0j0cNrXFEFULcGww4eVFcEpxb3Y7Nt/Hxd7wou6BeQI+
d4CYEbej702a/s60R0AD2QLMEn+z0kMCIkzZjYhbVn0gIloRw1WzkNPqWKyOV1PC47EQp8HdqfCx
L/GxL5P0t7C09sG2NGf1JTlvpXK7thTCjpZgHuU52iRXR+E3ToeSXay/QkB68gmzDsh9awNz831X
PrfHNaSJGO4Fq1G9CmJgKRHrbrrz2fMRIQbz1XGcu/cJeSz1cJZT+R5I8yORLE1xnR9lOX9V9ass
Tw4kmugv6b54PyuLDuH7SL3EYYgi1cgeoAkmedy4G4E3kH0oKIf4hHi2GKHRmFUNpgjqY+Mp5D01
2yFgLmtJf75NbJLIwA2WfbDpO4Sjmg9a5hYV0Jw/l3YTS9G8onLyM9LgUg4c32u7XSB+/IknsWYz
Ii4dwQvpKJQjFX5HY2jmPI7fNuiZYYGG5YXbGOtYkIwrIaLAU8pVNP6oQ9us3n9Mzc4g6RVe9ST6
Y2NlocyEveQSzEhIIInkUK8mOTBoRfrWxMIb5yw0i3RFkHuy6QQdUbpSKB1Lx27G+iYLY3xkJiKx
Kn8Hhqj0FGgBM0gtMaAPGqCmtfvZb/S4IlQD9mtypo8qKnFgcfm4jMpzPcJbBf0fSyD93Q4welTg
ii0U5eUTMFTrbY+rOkbNYwf5hbezoxG6yY9eQqVVTLNWwS+Wje7CfRbmY69sMnAtP67LhVKRx6zd
M2pgpeiD0RSDLpf9lMbAoygMfIyvq6qXJkRhnA8IqH1+3HGmXFkCGFTpLRVo4XlVv1ExhdCGbxTD
Sgmerr77RmgiJ3vkm/R+YlEVY2ws25ClYcNjkzZaEV6tjaNnLIBfF98UZi8wybOIDBhkxwy+9bH8
l9i5E01f/KfmighH0kej6HPzmqlu6ZcfZDNGl10urr/4ixb+Z4UXp3E6WKBu3w+mn54ow9/oBhSL
UjQjGD9wpCuEwAbyhCmJ0osEHcRyUPAi1Nf9hWvHp2h97Y9ap/fqz3gdrQJI6I7RIFa+M2bcneSM
qLUFSL4W3WPgjXPkk/+HvmHixSAMeaOnxtVY/VZrQcnyF8P8ur7cgkqQ4NHzhIGrPsygkYszJ0bq
bfwFVrflkLnMl4rOCepDudS+gLjLVtchHYcNYnHUG7ffy8SR2TXMO3uaQu55EhnTwUo4aaR9DzaL
xgzFNUGtCXHtG9IdhnGAcJ99UtpaFDW0DCqPbmny5L6Z9rCzSZtDbp+serMSVd9H0XUanuHCnOtD
MHCJlF1E8aMg6MGJK5ENaqgZMmhKjVF7HT1laopN3PIu77hW7JPZHfJrZzbp30VenDbr2SqW+kmp
7RIH763z4pcKeRqch0aPazV6bqyKh24zKX4TGr1EXo0ewwTKL04WBZasVvBdpU7qKqeRI5Z4tGw3
jhSVyNJs7U2uz57GKvM4cmgAEptZO5RE6d1JYNDMyvl2UBgM5cqNtfCcW/WKkpIa5vwyB+2A8Bc7
atp7S1p4aZN8YvvnBGDEqrWpINnOteDb5xZFh2lq71axwYaCd+7hNt5/IV1iU1hSdQg3CBlb4IGj
5ru00g+PiCtBc+RM6Uq5nJsO1m24fStwoXQ6fwKWcPc83HG+A3SWWaKtOh1fDYuWQVlHJqkCKTI3
dNd1k4Auqz7LBdzPhkbZViPxmutVwepGVCGBSlPPIRDAhFTcab3zJcU1vYB2n+yCaO9biLZhLTS/
DvZ8xwGEloTFOk4BwRVHcCCojsMnbg4muvjauOjQT7TU/5JNOnOH0qBapZYE3RfugQIVGPutr/D6
8TViDj1qo/sUxUpXjtIUd2FrbpwnQepfR7HeF1OP/4SM4B8diWj4uRG/3bdkc3eTls4ljrg1++Vx
FlZTEodm/W2ERkKPtrHLMmU1KYiT2yhJ9XTtW9yXNgVbXQEoGycRUAbpKi5OIKRY2DOti2iZeAD8
WfwVBXAXCyv3bWkhvLAMUhqDEdUICm6AhvTLvmUqwVksVfE/N6u+oCJkVr/v0jxDA2XogMKPQX2D
nhPLHeZK9Muug44Sr7rjVZCqWd7KJE0fKTqBnOKTwgb0ui4JkKfG3OWaP020qULx/XbZ/H95bPUZ
mdGIzv7oflirwfInwzVlIhOfaEDul2rherVtXyxT1Ys7lWTQfUF38igWqdbaRZOGLxNtYMY7NrBA
vHoK06cbF06JcsbRZ4nXcGG+xXS/Zt+ba0nDa4naCy44PiiSGBZ1SWvtQGjujuPcxxXDukcvy1dn
b5O+Kc2i6zyv6Rsn9CBh7PE27PTqzm/VNQRSGAyQrgcqknS5JIka7m8aram8U3OtsGgElk61YMz/
T5uNcwcluQ9c54401gL9FBi4rNI7v4yY1OfGVYfXAKEqwnHVzc/3RyddPz0Rhjjw2V+/+B3vliJ4
yu7Jd6TP0SGCZopY00uI3d6I3GJPTuR8JSft8ftFDx8JqIYBVRLcnLZIX8DToUWE3knbGeiz78FS
CcodKIpFvQ+KjuJ+WWz9ollbLN99v3z3ZJlOS1k0HdAH4JKbrEVg1qZ0o47bo/JL4dsaT8BZPkOy
U5B1jH3Eu0DBpJGN9f0qd5cHprpNfbaNAYv2xBimWlx4rWsM/FTqvXyFBdovsN3Oz2xyWl+48oYP
HcKM6foDy2SxlH59z7gMe1y5giItMuu08ojzYhrP6goMyRf2KrNxfcpQ8hv9EwQyncrmwqWvMKt7
V36bQ2zgPvFb40ZkKPkiQzIbOBLIO3Q2QLZq1PJuvXgg21qmAcXEAOhgJnlpIq8N9Zb504RymawP
ldBfukv2qcXwQN9L9+xdp2XLxU4du75uN6UHgs4vD0NuGL8AzVaoyof8Fk5wmzefW2HqoFFxoQGx
nw72uIyYTRiRSA86mKZQHbAoRn8QvwfhUyP8lkWD78+ZqsYpQ9xTFUYHHBC9vCwn/U4eRoibjmxR
WAUmsDdds1P98tEbheW+7GaPgNmVs0F4M6cJJdXLPVrSgfIjdEmavJ7O0gnpTVDRgCAKrf4i5Vcl
dCxiScV5mic1KG8kfWuW11jyOV8UQrXdXtZgtumWAgb9uShjx519xxJ12s2WIeM9JRdzroP2sMMe
pxVj9XVLzaes8FI68d+FxvVtDV8A1tPz2toiH42RztE81dKLx9SVoXSv80impBYp2AdOLyO+0zSt
+/uK1nI1N6vsm/+E14mvyUVCHvX/EJi9ehruZnKnfmEWplddVC8sQCqjX0DLaOyPplNln+A3Q1EH
cb3jS/uMnmS+0cNeaMVlRyFRu7WQJaHYYXtcGKopUNSJV3pvsUaT7p2fhlHRVNiuznVTmMc3PR+o
7Fd1q27WiWR7WJE+XM8Idub+a+PeJa2ELF8pMccJIjKO4yIMCPpRStyYt16RaJd46J4MasluPzD+
vFFF6T7M6yrN1aVbD7OuMq9uAE2wnD7nGA0LWpJfJaANL7Ia2+SQC2SLv0CwZ+h9czGqTMcJXws2
TG42TfoaOHaumCnHIeJyjz97HAt3/JdjjcTMOgDDz4grSwR59OhG1YfZBSqU2xiwoa36Gi9xGkiv
9zm3vj+QKkSa11tg2VVacPmctCddw4m5wFcWUFHe72YrAXVPr+uOehx19c0Al4jPTqsu8PjM/VQq
pm7mK0cqnB/fysh/mBnd4WrbXka87kOsLBwQYHAu7uWqlP4THmR/Jnf88WoUsJSkFjsGk+/NqNmx
V5hJaXv11sSMCmaLcErhzXVgWcD2nh/ttx/uUPITjojFNTvO/uelueyNWcCv3NmQsItzCbLjbc4l
4l83lzoF6MqfDu8SsGst4P2Oiy/6XyNvUQ3bSK7ehr4z4YT2mYlC/DlBIN5JCdTJ50LpoceCc0wD
VRa1wHXqRd1xUpAy2TQWZuD/UCkUXOAHFMO1Uq9PYU5c93Co9wU3cNrN0U+z7RQWqhsMNVV/DY05
9Lk9IYO6aO5HfhTs0yUqrQzKEg8huPeCrR0/4UyEyf9DyBjZxw+DXhCXzEtC2dJD+n7XTHBUsjDL
/1AZY2oT7+MxLr6/CxiB9Cu4xYYDiZO+EV71AVcCOosOAIxoRIF398dgaVZZIIF9RqFyWdWt2aV4
VyGcEcnnTdcHf+dYXI0HlF9/JaWamOs4J2ktFU3u80crr/DyGuXyNGi4yg+NvvCRw5jdEWa2/j99
pVApda88O8Y8WMT56w5205XGKWQ7BlWHSimYAnGm1WChZ/5l7L8Ie+nr1Dk1coRh5Wibu1L63/jM
tGp3ryo08paQSZRaumJe9ttkohynTZYVzNzWItvbK6Z4ujU8bYnXNxWFEGWyEfu8ULnUsbFQet5t
2kq7ruuhaSIrTBP/ht6IJXARNV7M93unu9gh0O8dh+q/e0aO6NcoMtp4JrwFYWPBxHTju6OJ0gsr
0Y1TrkG1UN4McePvlA7cEQsjasLnNLjFxQ1qn4HSQoZHg7Fmp5x+wX3P7XS3leignQMvcRhf4JFk
sN6eqYK46w27Jh94KG1wtr56ONaR/S9vQUGCIXpKUA34dk7B4p0ktiNxEFntqaTisNdwyh2NruyR
KAWcYc823C5aT8b4aUJA4ZetDZ/HfIafBPNz/My8Z71U9XSUtwy4t/Svwklwq66/cUJ8ggdTsK8O
UctKgpRfkh5OqkpEe6srDX5dT1/hkUvX7tq6+W77BHphnBH8Pm6Pw583+I7Vqgnx5mSw6DBMewEb
Q1tDbacmsMm1bUSYKA+uDTzBugWoJDwrc1mXLHfLfEVHTvLjcIPQnHGsc883oHtpFmQAB4J/p+lm
Kd6r7FX7QO5DXfjKvQT9NczJY2EaQNUW6oIuBCS3Z1U/hOzQk6cOmV8Nf6n3a0ZCJTXCQ/4xMEWd
6lmWVPhD2VliIbTJRRnFHjPWUs2LKJjCdAZLjgKmuxijaSCgbUvT1t+vPTnbyAhVTEJRIzXnRxG4
9E+guXtLu414vQoDbHshtwJ1jVon3gP27SKBPGxcpHMYzzeFcb1Is4AU81reEfBR+RkjtSGeYlyn
LIgNC73lBzVCLSgW9SumI60Y0+sZFG4q2deamRQZC6/QT8ZyNHsfmpPLz0EsrmYJXivda32zbqoY
yUn1K7U0a5kfXh9r6TT4CcuA1BuIIjugERGNNX9WDWNpwptqA2XL3WHUdShO4pEWgOib2l/7tCR+
3RC822WYtTL9VYvBFg2sKffy89x1iDu/WvAxebEq/rIUaXn7a8MIC0CBPaQJ488n7GLi9tBd/Qu9
Ps4MyLCP21N4M6AJmJgQW+DzPEDqMXF+sYq/Pe8c6G0WJMTijghRB2y+cMOaNXJtS4fIP1Oyl+2D
yk4iWteuG/hjmcY2afdB1vEETNaQbSczDIe0ELNFr+cS5icLjTHsi4fRiuWyDnajv6yfzt0xCMip
iQzNjzHKDZXpge9bLd+20U/GDjGN0JUpdJmshYpKIFM9D4lSmuElNQGz0b91aXN/VPWDGDWkGomo
j2ruFpIDv7zAaY/cViHkHUY2GELfV3hrflaOYpcQsGyZeLHCTUZzf7aUOatkjhZHm78n+F8VCLch
4TCRi/mAESdh/qTXz7wLoJrfR33fl/X77jNlHeVVHIzRjUvefLzBzThNW8TAH3Lvs51KJZy0BNEJ
aSwbfKh+V8pYd4EG54OX96rg8knmJa0HdQBYdtDPfIiNq59aBQwyub9+bmo/vRbsT7eSUIN1AMf3
SgFB7KLaoCNZ9eoTHRoDkSOxOo0Mme6ePnOYS/EFswswBfLg8f3bLyunXrfKU2ikFmCmyt6FIt6c
A/MOM9WWl9W+wxh7lI7rjQjNVL9rghNl32kI63HWllv0dzGBSPAROLb9wFwDNDXrccc9Rb4KTgmp
OcuSEQPad5VtOvJeCihM9Keelrov01Wgxf2VvmFEZwgJ6azAwFo7ir8/AD8ll519AWRvnKegGlhS
stBI5WekV/yXWuVaQ1Fs8JSPS8YVIedYw2VuQm9CZRh+xd+I7S7JSlgXvK3yAhV0Itaf2m601CQ5
QeB/3SgZCzrAqACpaHqD8Slp1PtlqooFu/GVmVdJZnNhEx+cU5Kx8v5+aG/EbH7PICuF7Hr9x89h
SAdpNoTPltklrew7/BPwEd7o8mfUjx8EmKHnTP69jGZAJHqiA8fmQBne58ikLqjFFSav6LEjrj1k
GYk0jp2YMV7W+oijHD1UEf4pS0i0OHJw5I4TGlCuaJeBISaP6PDaqexCR4H/gCyrV40UwWe1vwhu
VLUi3MWfrzDRE/CE0uQlLt2RkAvoeqRqt+9RaTYURh6rgkj236Hd2eIgPEnkj9f5MMP4H2y0d4+7
YfRN1ZaGD6wdshT82qaQcbhu847/C7hzdsTTKX78Bs7mS5tgzHzc3wumDA6qkr500mhpDqeUGNqU
UQt7FUiERoMQYE3RSkEWxrx3SrkbIw8kv+A288FolFc1GgDLmHg6zEfpY+V/IBlyrYYSVMb/X2YE
GufCV8FxLVZLcBkgiPvHTtanKEfe+i5IRMBRNI0xpq98LudaFMy1ylEZrSJGybkK/cDmRXczyZEN
c6TSWB7zt1SUXfsHSsFCp8xObRaNXEneqZjjcH7wd1rIB+d7zDlhKeZReUCKD4tiMNKBcDNJhUFY
Nw2+yXxKlxCtVglk3ALdBMVD74gNsiuQDJuenMgmAwEF3Rh6qMa/mfq647ZiH7bffj7/b0909FuZ
vZBDwxeWokKAA+E1+b0DMt27wGYj9XN0U4JBOcHRgHkWWxSTYi/d1g5d0Sb2MsF7YnLWIfhLyZ+u
WrRT/gNkIzaDESEhuMb7D5p9BvB3NSWW8+W9+ZbJe27jj5C/lQTkt0q6FLiFVh7HaD5KFVPDfM6e
O4ptznzeK24Tk/wRC3Dc9vPficYLBvrwWg4dV/TX5PUqPCIe/cj0vyPneF4Wb4zDzNSE1UM1QqHW
PZrWWyRXH+G/pqMysNNEvNnmy3nF/ASkcNVzrhBhLW8oEvubRMaYY6NydTG4TfnlGGzpcVrpTDnk
xd9/TwSsdivIC+vc+HT3f/KmHp2ffDGEcXd8YkymSHXXJHnHphbc/FGJO7GWeL5v+1o9Pdn4HV90
RUyLX+8UMFEmv0H+krQK4uYwk/2q8GRGWtBEkGgok8XFOtJHkGDQtlurEiA7A3kv9WHOqObDc1jT
rqrWFNbdv/2yfYGjVdc23aWDWfMJMlzFX18KMS8V2XAQQ0lDjC7qfmxClUJjfVo4U83+fTwvCL2h
g7jqApTP2+BQpO77vhimC9FRxW2cGf0nRcPgjWKtchIcOM8CWhVgOc/c+w4NQQLvBG4ktlHPUdFz
WZ/wxVJYo6IJliiglKY9Kha4zZBAxCDem5RvZbti6rIZUssQvPFOKEIiU1cXXcUWW0lk6VCbDJ52
CsEVIaHHkYaqnuJuUZIzP7cMRMdLIW32AUtXFEP32VnmQDnUOjcgrFu5xfGNb3PVyFA6BTP556Yx
xaZln3EsrffDcbDXVxJIU06ZwIwc2gICJo+jMVI9i8MYla5qNmWhAMmzLTeibEjeEmELIlzJyU+3
xqssLnEBqWXT6vwRm3kIE2oKeCy/ONguImPtsg8+IeiamOekzJOX7L2CxhxGs4OjLDq7u7pH+Vou
q1Mv32Ufpi37AdVH0Yu0xA0CGkOuy8kNWu81P/qjJw8BATpNr0UUrX3UQgJJk6hYi6OrLHXcyl5j
ACVjKBLmK7XvoNc5iKGI8FnH5vVB/m3nqfZqZa+778RKVXYWgrw+0dG6MuzPUuHIGix0szafqNip
T5B3n5w063Eagyz9uhCTmceBw74OmenvJVDHxcTaT/BmJLRneuurP4AItQ1ld4GveUM/QzxvS72H
suIQ8Ac8S2jqPEvy05T5CIdSvV9BZhxQL2t4rCO6t4uTmKL0joYkYOBKCT+1eC9QJ+fuZzxz/gdG
C8g8lQFIV9BnDRFwrwEf3AT9qdRv/ksF56O7/FmDmBxHcY+kbaZp7wnqwrXoFybgo5XH0sj31L35
VwulSNwSZla+xGF0LF4W69geOgYWEmUluH2y0g+foVQUUbAH+lIDANbPSlHV1FUDqP6dYUAl0UoI
28TQO960POd2RXui5OQAQ22kGrozNySTBUn3CT2LrkV7n0v5z1PUJ8GuTU/2XsCj0ZGg3UpINU84
t8ZcfX755OUQ7s0M1iUJld0bS7XIfM89G9PPZRQWOaJvkZE/grMVxFrJkelWFqXGABiaGd+PvngF
GQ8y4rfRqT8ILBPzX9BkI+X92jCO0hlpfVckrrPp9Mi581pRsyvsK7dY+gu/kQxgKLbB4fqxguqH
j2iz8mV5sWjdmJt6v+MZJMznY6djCDNYtrrPWfyraA7h6WlRQllRhpn8WZugij7malozTGmr02EA
hXugYpeH2PhmXH/AsQtfCFz6OuXUKj0qCU2UFn6OFo7Ahw8AlBvzFLzvT8V18U+HnEiiqHgzJNQ2
X1ramqd2do8UaQZZgpiCTZF+6AJ/XR+ayyc3AH5uZgj/XCzbN8iPsY3rRED4G5svRGka2ADk+lWp
hj0SnBWRa2pStVf1FFY3XxDgKmM+M5wEjxB+jypVEJdY/nZQ4tQ1T5enbWizK+1ZkNK4Jjda+/Xe
M8xgVHl5sYpMXURICaooi4xp5YNL0jVNVW2wokgoryqcmw9Q3HmK84cLD5jZY8DwN5lbWAtaePEK
pSdbaEOfIdLEWWMN/+5lDpoUNUfKTIzAwC2WDPD+ECox/U6ORtKKIaLxGhu/lzz/pE1j8MfvAV07
FlG+mAv7w0cOlKqg59L22FpJBqQWgPnK16aI7+xI0XhxF5BVW2EpCp764XtmSmTPTialKFop7vf7
cr4J4Gbzk1qs3ykaHul9ugdeuIlfwYRIfWn4DFx3AiBOWz+K5D9dZxtzQYKCpFGerGJ/fUPjAL34
6jAxRT8IDtIpEzXmG8lyaUmXgdsVDGbXOjN3jAM7Cjed2xqgZYV4Fw1OyisPOZxuS2B1OkThU45V
TJb6Ac6R/elfX3FYqRs9XMMcNrGuRZtUc/BnHvychn7X40RxOU6p592lZSUxJRr+RP3MyhgKNfnb
lDxHYx88V2L+F6cA+qBE0foKOpJJuclWoIm8EMX8SIIAeL0KCmX+HF2FNdFEduQFF0etLUKsQBab
9MyVdZNKGpXdo2P/naWMxuQAsedIeCcJsd2pRTlPeaO3WMKtbwuiR1BeV9vx5vNmrKyKfg8IFHHE
I7qppmCqtrdmM1MdxZGqSGvVL0P5VZGkAd8rKaoNsbFtwb+wVlNWI3irrvFeM2sOPXiW41ePIvwI
rNFOkwlJXQvwbS4CPSJDw7DL5A+Tv2mcCUmMOtILV2B43YxtfesF/gN7iB/h5n7Szr29Y7iwaijF
phNkvvsHKO0R8bNcYabPUxB0EzYi51EA25j5JRetoGzIKxA/V+opzDeOiiJ9kmN7aiTK2zDbmhs9
2CDdAMAaT8dvvIvicK33sTBMtDrABws6EWSsd1i4Gz3CJ3c8d7rjfol1mPfXFUjgtVCH6h36t5pb
QS4+IgujU7932gzR1wUa6kD2UIrSKKw6ICQFwWT3cmgqiB168M5+c+Ohb11k7v2fxLR57lEiWFIg
BtpL3PXWSnLXxtFbwCAqotbCfLNqF9rGPDRB5yX1yN0yN0u1kHfgKEgapHySpymMmcZKzpMuEHh1
88pOmsdM19raWFoNsxLZWoEL65OZdDpWTphXwUOJDPfzzXjW+hhBHSmMBjZZKiL60igZYgmzeJCN
vODd2oOkgOtOjzEGP0prFexg2372M3sTYkfYVICKGCDHrvk9yOuq5EzgYO4OJnYcfQWw/ipidENA
q8k5i4DDf70B/MWOnB21tetp43SsUdXR7otW+AIVkFDbCnm/xVIMJFqxqU2Cz4Arvi+0jwhVO7Zs
KbEkMzX60efQAWThbVj0PfwtKFMZSwweBF7tUtJtrTJEyMsuj06uG1K2eDkAVFsXJjDnYw+MRr4L
TY2qpBVFJ/L1Ma5jAr+ZgDxFM5NSS5kh86BflvlA1c2xYqzwGcEemg5BUQDXdEsQnJGw0J1CNrXJ
3aE+7BjVThpG27xYkLv7ksTIgTj8iJIRG4lV9I0hO9EzlnsOX0NcgV9NI7wu7GytSo0/ekuN0q7Z
Ji1F2HvcYtaq38YxZ9y9NNU5zs/d8mDDLfMUSVo4vte24Y68U1vQr3I58HoOzkc79TGx7V6YEIJe
AeLnjbOnLgnSMasOE2k8AzeQqK45QQl+m3r3gnNoM3BihQrD+FQwaaMTC03DQ/O3soj5iU9oszMm
d2fu2QWMeDJHfTBlCi/7PpDskw4p47Tjbp0uErJHfTq51w1i+f2vk95Nzglob6sPQfl14eK9Qu76
a3BMZC4tLH8dlLzcX7e/I1WZc5fjNXsu5HRCIYe7nQ7MrU4zVuxqz/EIDxSlBOW5tAa4ItdvyHuq
GQOMZVLi8rYhWQKZQZVrq4AYP6EG/HULG6njfYSqRIIaXrxk8VcDomDi+CXqLcRQjneuQGybfQM0
BUyS2aNP00vGc3+dxpncrVlTPtqGWCxmWEJ0PJdiDNL13h0p9yxnhJO6Ld54BJmBT9GcmzqoYq7V
ao2/cwktWq9qbE6rxyLLvwkCDtDoiS5fQSpOhOiT6CkY1L6znShhyBIOjUgDEf1Wnm3zggU9xsSQ
LCp0d8orcLwJ7OVmUCmZvMpuPpifYQ3VnL2ru1Otw4z0OHHN4LcTfNAnHgpMIIcaii1OWSj/uciz
sVDZBfPVi8OeO/TMNYKKNMk7mhdxIymEfZVHqD1pXci2K8xETxgWoISoOdmA+3w7F1SyF3kdQVzQ
6opFevgoEskNy+y+FDaZDQUqovI3KO1gvIkIxBN7pIMWXmm+iNZreYh0PZBQUduZj5mPLf6iorsH
yFpX9pLosCi4T6jCI6MwMByw5Uqf6JFKNLcNwNeS3A9yGrgNG/XJS9wQ8XyWPvFzX+A/MvnbWez+
loDSooUpxOTEE04PlRcJe1AqqiwcSXoC9aVfYyC7TdENSETBs80M6iuHwJ9WsUSAuN1E96fHWMSj
c3w7SlBknH0rJC9g7o2oJPijr01vJWLUgHidUsXhkHdzwbRin/HAefP0GXY9C66RGA56hF2fpGSw
hBlM4J7eI7unoCHxDKSDFuw59LnUtPE+6Jar+qeNjpsbqRkQtUl3eWJU9AIxHGav6kOXhFH+jFnF
Uxp940aj5IMNDjnBETXm1ZUe5hTMBrF/+ptKDtdlxq7wIY33H2LYfU/GUByPyScV/1Sno6xoS1TL
iMPjG9ta4pSfpqgzVZJBEkIPMlmo7MAM2trJkBIDsNbs1DVz8Nb4SmdWZ06RuuTeQBdmjhCXTw8c
OYuGLrcDhulFvg9eaDIhVoIorzzDZwuPWLHqsFcCr3TerzvkJBqkMvPgUt6Vzh3wQi+ph683e6Nq
PP81hX2tfrA5gPwWdnVGdvMv+k4SPEvCrXn5rSOu5/6r/+Do4yW08iW8qiQ9H259mTOYZ+XvttU/
ihG9oZJEUC3oi71iWBvGhycvD5x5W9iIauKJsdQXjMmUrL28z0o2ku2ICCLMEoffV377dKFUKE3x
9pnivqEaeXg68ia/ULjNpgUOF4l4/SMUR9TUj9YZnMk7eI90J8yaZFVwA6cxrvUNfhmbTUg36rR1
RBETqiPtIVDeCRLYashQ6LcvROILnThr3XtBFwrpflKtU+hzpvyJ1PrXGnTuVuM0xm34M7B3v70q
jxzpzeNk5VyTYLOxHb5pNKru+P7tQf73Ld4WHTxmPo3AGnPT9BKhoUsRueUOTes+vt2A2HqNLmQT
wGG6+Y2c5BvvuNPy/QGWU9wf1hZPtFd5zH+lQ0z6xMQJxqA0FrFGoROLyFe1ip4t6QJWiJN682Xp
KJWvMS6TLv+qooURkhV7r7vSLw/7hTmHVSIua5OMGL2qWzbfoqGPGGfptda5SoymKEsMNgLCa74G
C69s7OiEPu6/6nz2DXsi+mzJmQeY2Q6GBObYbptk8sM1zi+zjvpuYjSTn/NZNvOHAXLsBxm1LV9z
aKjMpq6DSXFW8gHokIFeGUWYb96yhzXWTV2eN5xrktzHcQPQI5InIaTCSeD0nWBDKpI7d3Krq8k3
+xMReFOE/i17HY3a5SFdvS+Uei7lmFPevo+cdBYkOv8tbpMPwy6UomfAY+QDaUxg5deCV3SG++xM
i10+35XxikCjWPwQlU7eX6tCJXlc+WeIDh/e3B4Iu6roiRaEtVkjncM6EjH8xNHrfBEU3TD2rYrS
6poWx52VLOlgbPCIq675fzCTuUgYOMp2N4m8hxD4OD6qHzUO258OlR2MFcqo5DiZ0CIN7m+Xnllt
XfCZCl0NUGR+zKmbuVmJ7yU81WY17lIyEEvJL+QIRxFLLNFw5BmsJyzcOOaHx3VQ3whmsRYopZ21
nxmTOrDojq96Tkc8ZlKDyt96smbRAGlwsjxUMN4KDVJzJNqk0WuDuB+mBbY5PtXRG4GO11gFWCjT
sp/onA7kKF9GEZWdPs03o71ifvAz8gGcMQ1xu+nFK9OBXm5ZYmCxXXHPV6UEv3TmCVY2XSrO4Ljb
xjVDeMQggAKDdAnbkXkxpwiD8+Rne2A3K6ezeAbmgQ/ZU7+2o64eSNOOtXbyQzCHVWSphhC4z2qd
W/xiS8KnTzdkGc/1kdMhGKp1YArKSkNJozH481JPyQ3gxUFC5zWq3MjrkLWSKEkTaogv417/uvIM
BJGg1G1H2Bf2OiCT/DwwbHlpzyYY8p/05BxhVMsgFpi3iHNbAWfoJaSGJz/0vvyCsVCsrVetPAA3
AxMBADLHZlYgRwGzNj+juGXDHuAv+GCz4ZN6yXFEcNX3wk27UzVIHAsjN9+Ot0Bzc+/ABYtUoUSd
tIHerHAVYC27PQ5AqFNbTv47Lmjw1tqR5mC5iUFXx3/394FbZCPlCGi59QJYRievG8wQRSSdqUMM
OZ/GgralSyqNlaLSuZwSrEKAogGfpRR/jwwRXsv71HnERYVUZ2zPdjY+ZOEjY66WP+FDj2KCpJqL
e8m3xkEVBzq6qGRu4KGThDh9eFGIeaw/HM2ipDoNmfgZeNkc3TgnqbS4DvtpCTv4fel246Lx7i1u
RvaLEB37ohNsh1A6zHPOGz9kcv0/cUACHcBIjXsgQ+8qF4JnLZGOi9cW3VghighO9Rw7ZJJTQHB8
rQ513rnH9rQDSvPrqLPEsyY2M2hJqS0DsJIxtv62Ps0n8uxnSdrJ+EOa5/9dqjWlcE1GaPP2pu/2
NN93LyussEE8AxPCdzsdxcpMp7xQ5nNYNJMR0N2JiXCgRTAVjenZqoqzLYF52pbcBEF0IPTgbRDT
yG/bCEGeLTwD8ekR3bhqQNAAs0HIJGz/WhPT8Sv3x+vcieyrF6RvefzSuVileavkdR7w0qOrPZ6y
SYidrq2M7C2wYAA2biBCUk+LxknVlRBWnEU9v8998oKo0BriUb9A4kyuor6IoLJSVn12Y/rNjFHU
JUMxhCAtP0fs0k5P2MlhQFnX61IS4i6z9VCfPFQMX2CoIvkwOrzfwLpzvUerT95nVV6xEpgpukOM
kXyCDmf2bH89FU2quDxVcIt1L/XiaFRrOGlbA9Fq+oa/uGNW6CaOJ6zicvjcI+i0o7mxzQ+YwCFL
1VkPPQStxarod2Z4wwGbTQKl4PMNp/NyPPR6wf56ouGHVqPBOzVhPylKsi7ZVww1+oEuF5K9GQKu
PIyIoBBTAQ+Rg1RvJMuGj35Hkn0MMZx5KONN3UHauHnd9o9oVBw3K/GmE0HWPNNhtOuHXLPAvzQ6
QWBR1cpfxKetrjP3WCV4ZmwM62l3SP7QCbx0VSKcUagAmlkXfhj7JhKS1xCd5mRAD+6GkxAGsajp
soSx0fManvOYPmB+vmVJW9WoGByHXqrlEdz/eJKBVGeUdK7lT+cq7hd9Dx2DkMT/zAgDl/Ylql2F
uACvjQGm5stniWxP1x1r9TlNNX+ZoL2DlJDjSh9XGcaoEMp8P0/I7O3i22ADH79OVqQqVGdwbVE+
F55aHuuRzXGnjZGvg75syyg8i+nqxsHCX5C1KMupgWHk/gD/mWuFSDZWticPpPA5LFSY8cneJtiy
NTefmLPgmtsBN3cL+VSBlehPSkOBOYQgqu0wT1rIpR1M9XV3Mzisg46f4izUt5ncNI/LMPlpzVMx
cZzqqvJNVqKQiHj+N7cYAky5zhDWTqrmQLiWEBzh/U9rzrQDd+h1No31xRfzBh4NxtmdKgGRLXeo
EKQvsqHgepTzqoU75Jt1Zzp1ZVfHLuVXEak9ongS0mttMzbpRNACRtLO3BJqkaIYbcII0qNjAlyT
GcVHBTs0CJJvcPydBBKicDr0QbLQdJfexXHHhY9vX/5cyglFtI2GyyK++J5Z/z2gp5iy+8MFYvlF
p88a7P7Fmm1Q7g3c1XTXLrbpsg2ckpxIZXxzhdrYcS4QMyE7NQI7yjgIzL+qTse9OyYFdDI/bYWl
Z45Ij7N/yNQHkB1pF3RGZfN0GHFaM7z9uzs2ZOJUT0Vg+1JGy/oBfv3c87buech9os/WyGIN0Gqi
4e5Z0L70WQVy/TigXdNjEgy/Mk+tMGt3e3fXxD5X0At50befYrmuywI1NKd7dHw8DBH8ujE34tSz
4nrMSo85uHzoS7AnDLTFspZksiC98suvkeR1m7cbIFxEUP3nXwtOMAsDPyU77QVtT5Ye1JXI2Mtx
z8oL210x5E8NRCXowECtBwcNGgkms5bdOkHYtWu+4pirajKAn8kq3ykiAxX/dhDOb59xH2f/+4T5
F8LYDBHyLSgtHGNDTDq1iXTqYCMiSv3q3m33I+bleoXfWAA8MwIL9GTOXWY7FR3g84vlVjE6x8Qe
QEctA9xnBL2bK3bHKv2c/yfttpr737L+X7rMakq5qm7cWBB4/NC3Zl8QZU65iTq5h84g116Ls3Ok
sMjStNYxTI6BHBe7ReYcdTx5Ygxko7dk/Ya0gwyjfG/a1R79TAvYWDscIObHZcArGTmNPxAbuVX8
fIBFbEPsyVVX3DZJdOGj0VjS75gdqliQEtZbnTYiImiXd6pRD0Bm8cvz2HXKzZDIobt8C8PNEwKv
teIKetGYg2ixIMiNXz0Wrh9qspO1NmluHOW5CmyHHsBJbMXzjoj3U8pRK5FPsg80KIN50vglzRLS
2uIWJpR7SWr1odmuTUN+u58/+jpxF5hE22207t2bSNrWpI7d1IgaNhuVKaKMd+K3C16aVpjauSir
DUq46uAPgNQCGo/sBkkSYdLRvznXwGqPHSlmu3xj5/jTq772ZVRq05MidNyfyAz0evmHj5wHoFD+
quuR7Ke8xlcDH4O+gVitlBI3yCk2qyg/8FRFtb5OjDkhTSQhSREZ7F+dtoLIDHilGCcAQkkQmLGD
9XLEDQXLBHFKk8DVeEe0aVMPGAIXQHf+DgzbMMoeAd6h/cOgvk8n2IZt3Bz2qM1eNiZzyLk7rNKr
xOc8E1LGYf6JF7AN6SvJE26Tl5gorqvvNfJ7mq+JmT90T0ducL+3sCM/pt2Q7MK0ReGw3WDIAiwi
3Dx5290Jr9LiwLmCcXjx4WCpu2aoSqQKSiOGRC4pokeo2s5FVoXymIzu7FY9u6+/P10JjYWXHTly
slzED1XADiwwpFtQc5lDcV5vjfZDI0BmeUJ38DoYXdJo75oFo9TlNVF+wOeDY6S7/LZNPPTItDih
rDpdq/Go/++wOVkybtLgoodJI+1XYIuZ0rG95Ke8cbSA1siNoCaJlzRyY//uAfoUYEUXRyt+nAay
PiMFNjXyE44SFk6PyOWyFAjdUnuCNYwv2iZ9xAiXBpw+80Dao3i3aaQ1+Y/tWgoQtbN9o+zR8UcK
EKJtSBFrRl+Kk7UELYCy42kMrx9ojhbTtL+k2Ahn/LrVK0pmHi7EEiwQlFJOWp9WTC8kD65KftUZ
012OUnRfrbwkNgQiFJCjahcU7s/zwoT2X+9ekphedpCPz8Uz3l0nrkaaKfKcFuG1jly37rU05M4c
Rz9RmoZrfnQn+hFFeOpsv7PTkt3KRPjxhtw+NkrSPzS3sPAr+G38ipGI+AYVGOzhGbBop3s7hSIQ
yV6NNLPN7hVN/tSo9r/ZsE7p10yAEJDJQ7DmER1WKEd9gAvsmAquOLg77l3/R5R74C2sSZ5GDPHV
iZcCQ1rx64bTd6ILN0qdrtYAjU5yr2IzjCOhTAbB8oS7NWtCCCf9otg/g4fFhm6uzBvndlZjG34B
IVH/NdXcnITgZh2K3qu2/03m1DZEQrZyMu0r8Pwl2hISyi9JZN868pGQW8wLoJYg69hAmThnpRNO
2XEbbZzCO+5KNrOOIQCKsq+qOGqraESPPeR9nzaM7TyUPxQQ3PWfjQHtwGSafOcmUgVr4W/8lOwd
EIqjlvsNTqERBmlxOIuk75HNdZuJGSxbzNW6K6+K9UWU5/N8w7dAe80onRhwT23+mi8drcWslLBJ
CKODQ+Xj0eiYVxFSQzutQLU4Sz2Rdmg933Pv3EAQvK11v5CFbtMMH+C9fBXeVJ7fU/64u5su8Nij
sCeoymGXyjYMMUm45w/p5qCxidD8BqVI0yf3HfMe3HwDJPKhCVGCxC9tBEVSgZtIwh8oKsuNbHlL
2D7IiiI1A97vQbTYBrE1F+RvbAVQAFDKvt4WRUnqyPV/BTrH0lDedDiDr1XvnXGc80Xffvk0ixd4
Q61MadZeZb4ioQQT9u+Xa8Uk/4+dx22Zg04pUOfgas0HHxIOf635AO2kpmJUnjptWnXRd81sAWaX
r9/haWghMhrVPqcZWq9YTGPuROLit3L6BZw+olvtDHUn1j9sMLvcLrSwnFc1HQ2Djfc9kkT6QPpw
G4KSAXTP0bzZRpepyxf6N2HAYBIv61idJtu0nsmMP8sSH1iHxnOW3QBrXdH8vQBLkpfkZdsZR3Xq
w5VxO2AS2UpXhefV9x4ABSTWOiwqeccsM8YS0suyVDX95VMCd51PDX51iEns4SkbYzap7WUYtbHj
bcbUPE4Dstnxnx3JfgM2YFZ4Sh8HbqScU90i55b5qrFlEl3alRYOvqfOaq+P7yVjoEKulPg5RBxx
6Q0DlcmDbMVFj8L3VA/IrIpbZwISFtLIFqFHTULRVU22x/7JlYcZXWxAuVOBqx3iFGab8/HhioEH
MB2aoB5MWGJex0doXWL0/jHt8NJwqS/Q/LKvxtry6R/Ge+79pPmrSU9MbjztAtyk9KJJ9O9K0oE/
HVqhTJ7oXZmxXIpmq2Y36aZL5fmPzoBZbaepY+/KOZeTFzmEj1aLYVeZZoprf4vSLFbOYzmRNls8
0nODjBUA2nc/oWoQ+5Dhye5KCW0tHRwUMWFwcu93N35ExFkIJmHLbo//5G+kfp9fjRam0/w0VNJz
1LaOEPxPIKkrB5iLHeRe3oF1fNjMQ5DOigCJdNn8lwfq6h1pAlcnSWc9RBkre01DzYsxvgpsX30K
V7WjkWQ4Ywpv8tP7tRpao24C9KbsCBL2sxC2wUFt9pRN5qbCVzFYttOEuOV3U1+k7l8A/OPoT5+J
PiHpJ9Z76fSFLyesE5h4joOZO/pFH0dumWhdfhgOqjLhPRLC4bTt0g+10XGn9UBRlz1A26Juq2jE
NDgCP6BY8BuhdX7boJ0/2dAk2o7WXQ6/qOJTo8VaHu5sDMjY+av4eUJ68cHlw129xl3ssnpf4ASV
KKZ3fauGaNJ8AgSDXVdOvF14YxpHhUfaYvthZsDE/VUWzCG86RiGzCMx1kFOubXNPMoncE4zTocO
7W39n52jyIgPFP5+fI8X4UZ50qPOvJmOpo/n3mEsj3f6xQ//3X11pCC3WNi3rsHKeuOEPXc0YDIb
VKDHR5aPhqLgNFufGyDDsDpT8wkcP5lsivI3jR6EcR5d9llVaFWsLYO4Xd/C7aalPnZjqiQzIsc1
XR/J07nWA/8wMrWSuFFm0cqplKu20G/2rDx/mNKQJYSfpGiSfHu0ki2fG+fqeayLpx2S+mAlEkcl
TCYw69JUb6z1jurcvJZ+TRRSjFt5pD4REqU6+vcwcV/CJZgz+9I6hyLY7ztYwXtAKNVXcyD57jE2
+F/IPjFWOMhoe+g4gpaFSH6laGzcG1/tiOJr6GMU+QQxAjKTR14OgKbgtYvrQnFx74UQUz+UHL7s
YRiHvsp0xQdFAbV3BFjawjunbANXtaCMg3KIpPfhGyprMnKe8z8SOq2xYRrvynRDrvEq8vxZo+7f
pAYTck4N/hj+tPPh/mfMPcjuSR1re+2ukf+/uCCB6/R+UhYcb8CNnS6Gp0Npvy63k0lEf48WbZZ8
m6b5+WxmZXnApB2sd5+r0gqrQ/UK0OzOz6ibSuIHR1hKB7Ybe4JsVN4PkPiS/zEmatSwFwYkd4OQ
PJQPWJAYOhUpQR1lj2XroOuMrQOpyPXVMyX8EJCu0M5AvHmunlrgEUNTSLytNSXc+mIzFcxSvOBT
OmxJE31lBe4GgarbMvpcRUL1XiC8S+MQEyglNhny/5Q8++EypYqHxyGiAcKSKvP/0WqHBI0y4jeF
WwPbvf6GjpkjM529f2bEIxqsLtjNyhMzqJd4lQOQR0lhHdT3nssxGEw/BQekNFYY14NG13p722Nb
MovvQXriQiyFJW2k9LByFc0BDdkHxZNAw0jwsQefuQMOtwiJDFcjkt1MgRlOMQJRlexnWjUx2GLc
LNiYWeXFfTqzKq9oe3pR+02mMukXT87hHjtEp0bn12Oqjn+x0b7OzzPgsexla5wbUhervz6i+bjv
rdnvB2+JQkLUvLrKqYW13brUw5Wy5kvufxhlkHfCSg2v42xHWtpZRNtDxoF4bUhSx+dFhzD0rt2Y
SLkTvDZRZcyqd+GAPHi+D4W85HZ2ppjWTuXWpGOcFuMXeLFrP+pioBrxaoITWjtEuQPYQGV2pcK6
90vOi1mdDmducr5jxIRXr0oduPZX3jlxd3f1U7duoaSVCjj/6LeIBn28kUcyFhm+kC32C5z3ZpW5
6R/nTxVIIcPPfUFo1tTN2eL/AbM/MKa0vbSrfO+yo4W4HQ+mXnADLfZ1wD/phmfjK8w7YItiIPRM
x28rt145h0iG5jHKw3RcYdBliYIeZDzpb+58yl9botbWgfse7zA6363qcxMnBKu6kw1ks/i5az4E
uhwkm8IisvQvu9BheUviqCda/dO2LdicCwIqzjiY6DJi9K3km5Ya0kpzc9Gk+qqGSMxEasncKZkK
DKpyCiecTkycunHPzubAzOHJc70NoHDBQfJVfVPrwpyj4rbz7/yPIZX+5S4ShUvpXtmz8h1zJcvx
yn4JjylK/wtvVbH416lshkiR2hOpC8FJikEeAIMxqJjxk7XD0LR1dKwmcOdDWhN0c/h7XGEKwxUm
Snqqn3dA18Y7MYaGTwge1n1iSe/72BaY7VqiQIrHG7ZZ0691h/9t1qr5KetCIX6RwlnJC5Ualccx
W7mME3XxPjWSiC++/xieWcp1hZQUxb4JAXasJ4lALh91pcTshrMqWLOJVrS89QYTAHKoANA6CHt5
caqzoSaIp4+HC3zrD3ki4OcglRgfJj7Rl+1EqzVZBiSEyVf4SMaSCSVdWMTA6GctSMAegV5ipKU2
0yDdoo5/v/y66q0ubGF92l9Hq+aVjNwmGUpW4DGvMipbhMDA/ayHRxWDlUVb5ZBKt1SO1ID5koes
bBV6FP9glgRsWeEK2pT0Hy/yqJvbLuC+YsbfQFv1BCoqhorWiy7ur6SfeBNcP2SAPjFpGOcf8i+C
4yN5Md4MpCyWJjK++mctCXtbuDwPpXXIhXBGJhScazI7F8bASbQthjxOtfDHOqnBYRnxkKIvnhg1
AK/aEYRmfw5l7ScQy1RMPbrGd7eioj09qD/h+0D7osrBuSDQCKQg30P2IYqLBYR39yVPYyWF01uE
Yj+yRv9SzihP3f3jx99BmxFBnSxSqAldTpMRH0SZ+wPSMRCQhueXSoeKsIUfaFoTfwTmUyx2V8Dy
hb0h1btyWvaqBnG/RjAkUpGyKid8y8s3piifvcRkZSzBJ4Jxi5SDwSOKXiA90weYb/KXvtRsgYek
/H9/0teOwQFLR1XexADyKAIxQDgaxEjAsVNEsI4qsYv7AzRQRIAj5wiIfEIKR/xRXIRnmNvhHY5V
ninvc11LKwT0xditA2nvSJleSDLWLhCNDVSSAq8pYtFLZKIy/W0EwTAHWMOupbkZk9n47AjpvDHl
kK1WCOn48D5cAtX9OtbW3oeeuRzhoKjyccqZxTHvV32MPZ90oNkcgOsMXRRQBG2WKJv6Shkab6IX
mNRFAYDpB+S0bIHRoi3ZXHnAc9T04VrffD2hW2mfzssTXL3QD37XtzYS23JwEyICs2pkxLID42mW
FO6lgQc3vFP7HqkOhfIh2ORK8QAIIc+Y4SXDj7mNdEjQdh2iRSxOx4tXB67DaLCExNB2fvkxgD6q
YXM1WJ2MFwhdU4OS7W/ryi2QBAk7cnkB+iyD4c+Rx6Ym+8aYplViA6Dj6aO+c5oq/SQS0oSYxaqZ
MXmWnJHhnA74Xq/1/pW14c06+8uCHTSoFmp76P/UUJqAYDFkwdCWTfiQOPdbTXuqg5JqyyvFcfSV
o1iFnAbzkR4bRToZzWIo86tYUAR7hK+W0IGrLjMTv69NPi9lOXPqa4GFq5Vq6eO5etjbZ8TQAUlS
m/ngyDSYUNkiXNx+lPtRH57qibTl/vcOEKroCuKGE4MD9kXI8DVjBtoY1vUNP/N5apwv/JV4xkzi
SZivI62LEfGNlZ2tymDpL6Jp7UMW/0ooHT6Hsr7oyNJ03+6+Xov0GZa5So1/VGtDIpi+GZNTqCNJ
Sl9y6Knh9pUErsyZqqubZtLEzgz1A8uwts1OKHyNgY0YpeDaj4kpCv4QjNNokPiZ+o5szs/CRVOU
Q10PyDSkI5V3Xn2Xb+igLVaImygVVo2Dqn2V4w9TsDDXezibxvWpKzR1OYTsahI4D4hfkZgWLXbI
+fsNQjyp9aTppscQiVZIxdjOnxLrt0gbwLxCZQanELJKJU3D6/aTt4Aq49pRsIQBVXwHE560mfw9
5Ig2FZgtFFfjNLZIh3TNfa3ck22uO0Yzr6jwYy48hP1b8srLxiutd+Pk0ZEDkR2bxflLKsnu0Tt2
v7REe7/iN+MklxPamPXf22JpaESrLOvbRLyJ/yV+qmkj5H+48DQCQfV6c91vmtUIyOgQQNXgQp06
MA0RHknlmmNSEIjmEEyKshxK39/Gm6uJt9Wrdl1aR53QUcainK6kcU13TvR50NwPJj1bwhon5V/f
rX6ZjUGiPmdJrJOcVVcK94mxYdFHpV0LG1b6I3+Q/kKKvuURX9rua7OVOAdfQNZJEYsvXM62MDUL
5iyfvopWDTPGLOBSVyzmVSGCw0mAPyu76Ip2ISJQ7yOihBV/xnIehpFIFkgl8yesQRS+SY7Ku1MK
MZPiRw5Z7B/0RcYpqHewbqr2ROgRTx/c/+b3lO6WCRxQ8hrHJLB4LKilj1MbZkNO/ffaNM+JvO2e
clV/Uq8Ndjd9yZ+/3kvb2pKoEDDed3OtjMCIwZxCG1STr9sVDf8+UYdZosC7RYlicuj3QLEDlfgM
KFuPp/KARunkq2rLwue9EHjBdZ/8JENmUCTdwCGY64WgFYiXkU5/4NP6lCwaqiehO8DJGgo38xFP
kxZkGfD3bHD9zExJ5JUElyN/fQ7wmiFh7UR7J4SSK6tc9NHZ2rVm9jzVdsViE91ahnoRRmBkEJAf
T3fhf2ZC+pR+RZ1QVbO1QcNxWR5dY3+1lzDi6DYJ8JASyqD6dYXn2DPX80AxAHGRoySPscp89Gv3
PGhWwtXQ2ADMxgljIkhxHXWS29WQdpDtvtQbfWAZ+IkEId9lMu7wUPAisWa+3aTmt9crF/Ne+ZXO
ZZZQPMIMPzbuVPC/qCoHU/1Vlzo5h1j9IW3KZS/XsoppO4XMkFkdv/tJ1FkLQRmLBUidqL+KLsMf
3V5c9wMhAnNXw8DV4QgS+54/U3uG0VVXC3NO1ApXggNkrVzzEg5c+mU2aWP24iNVUvF0v2mkWVzT
VNK7tAJ0OYTev6PIb4HdXKcp5pMgNFJYRMCvie/T7sTUqolzEfn3q9Mt7qHo1aYNwIserBKcJpNa
WIoo+fZsRDZS/4N7jRKnUcutPzc3OOAuIUglW+/Z75zcAHF7BEArcdY7FpSFVyLaGDFzdRuTGvf/
l/sqfYCGbMp9m+5Z0bxBFSsGcx9F4kH3WmQg74pnTj441/Tugn2Br7TaqwBoMhJwYamqQMy99TQw
dAkx1d+4l03RcE5G8q0ma2B8dSbJwHubRlKqO92mv9oJWD1crnZ0+Ap0M088nr9SLdKtjztk0TwJ
pudoiobaUwKCGg1N4iqb9PFOW51p1FKovo5Lle6yNDqYaU+tU2rnA5jK2YB4C78XbfXduZZy8R2+
RnsaoFiy8s1LRH60HLJl55Obbr5F/FBJTxejxPg4+JooV0Ez0Vhp5u5NOzm3XG5y8FUMaNmbdsYW
nFJtyeTgnouipEVMoPycwUw6nr2nWYiZ39BU3qHCHHzE87lagFp4PmIBpc3zxCBUdm40m0V2UTjb
8zdiWenNZtpENxcMI+bDRewRtR4fPyjd/yQT3UKw0r6o1Pip5QUYY+y43AAZKmDka6mvVoQqPS9G
LEo6eSFmT9LYFGYPYnrnjKLUolyvYNcRguS++PttCvhqRICZy7AvHRltBIIUU1OBjSvfKCFEcgQk
QDK1/njSNiFY5m4qCRmGFNgztwAo8lYOx//SHDa2mYOQcDZXejqAIkYKZIm1bPU3+NIL0ReSXrLJ
vazmyoMGFYI62HCI4hBN2isWl0iQxqRGnkRPrvZqmDra9+0lI/J+rhwC+slMyFcmVCe4rAYrvS38
CijKa0FCIDrz75Wpuoj6slKeb/HSBu9FUnSQh8hqYPL7j9V28y2DgSWYvF74n7pKTAZ3lQR4WYJM
WT1NIhMExWIrVTI/bn7/5IMjIu6MCrng6qdL0Z97lwWEOeCUcBDjC1LoFa6wJBXGHaoJ8gP0r7zK
bJtxadKNfTwGP5rV1lW5Dmz3ErCSNTEz2jY71N4BsrbfU/aaa1HC8Fedit/W/LU3+FkGQYS1tklz
0FSfyYif9aEYZQlcPEEBID+jyA15aYp0V1vKXNkzuKNuOHRaTW2eDxXd1kabixX+mds7odWBEAAv
S70GyDxTnGDPtfrN7kvkfo6ecmqztqrso0URGZMqdoQlB9I5vgjUfFF6YEWe+qh5ao4ZRRhWIm1i
NYkMzXJVt3AfAjuop5Qjs79jGXNw4pXoNBPe/F4+nsr+1G8aWqca/vnW3mNJRf8WpXpI4t0kzXM0
AzhIg9+iaeyZLjIXt7kC5NTGNDNob5cbS2G8Yvu4nwFYtOJ2CPrSo5BVal5/9rCGWvqcHC9ieXOU
jz/ltp8IOS30T3p7tm88hWEuab9TIpKR77aa0+eDyepIFeRBoXsbGLKuqviy+GHuxAJor9fytInO
60eZC9MJAHARMeiSo94OdCrygKLVmMRbYILtOse2Tv8vixnVYWqEa0pjWRMKT9Ox0x41sukksrai
8WYziUQX545FYwsxnHCjxgYdIPedmhcRnoWfPSHEYN49Xc54a5UsfHtQSenom3MVEX3eFcvrXqR3
TtgBUCmeGmFIhMhc178nPlub/4WcfXoIbFJNDBctU+LJJ4m5OlKZsgR9yZ4CtQ1GNmdKCnJXox1y
2NCF+Sh0REBrhmHcR/oRqIKIBFZ3jBwcFYX4hyaj9lLRDWkgDuN5JHPp1I8nr46G7362cQRLI6nB
Jc1GDV05YPdFtsJqLCn3d6hr03NC72wUsYyBn2jIG3caJUHWTpYwZt3LX/uJ0lAUW7nhq2ZCg30Z
L2yhtiF0k5W2D+nsuw4lcAKXdZf7p4zlDWWUIxPyF9nPwE0St6fN0stJa08w1aLGifF0rvsZORYC
Z+yz0QDwhQjnTpS9K0Av3saCaZlsEkRnEOGrIY7qYrBBHQW8dB+VlZe0MdWhCJzhJnOEb+9+88h9
muAXaRV7sx2dHjZs24rTBmIjtpTGs+IxwrqcQA92xCjZeZs9JM/kdeWflkmPNLWaZygRdF77f02D
xlQqYdFHWoGk8G5duvk0uWyXIMRqf9T/ojU2bfB+m/x0ryZVhFZGOkIyBo/vZdsfgR2PEE1LFpO/
uryCYBYEpVv2JHY22aAZAjjGaf8BLFejHlkme1erJ7KakXky/e0j3o5b9lnM1OZaGrUE+NSWsWNh
3opuXSK0AJCg98trsMOlGhHTCmawAIYAhAKQOqMGpni2NPFi73P2lWn24d/i8/U0tbfjqbsI+kDZ
tkWZkw/3FkD35fwdCLXrKf0xneWbdJLrxQYacz7+7koPsKwEPrt5/EueQDg7JTT6tP5IzOfT1QYh
edDCal3NJ5nSpnujV9m+o8osspCWdLOLo+2ur2MwuxdnAgLYw22WX8182QKRRTHC5gm2SIxs3/ws
JyQia0825qR8VKpCeRmJ96wqiIo8J2G+efFbzPf1j0ufg3fLnVLIAr0NOJcBVV0PaHoc1gPwf+Oe
vWnu8vtFsNjlz5hblpNDWY9TQ3H3wsUT6GxGtH3mECxfz2JJ8KXEQ/q4EjA3FrRa7Nu9t2Y1mxSY
nlh4TkQ5HyH9H7XhgvPCZwYgQSSvheuCzKLk4BtSCA0KAkezFkaS9Fw/DIOU9yrISmsRihlV9VbW
BZ5vG7V5degIAcR2gteHdmYj+cAhdkKWlcivlaJ2Mr7X/ZzKTB3UzgfJkCY66Y70F6JDq545rI6T
DFwrri5yWRSA5N6k/6sMBLshKBSlwLiojSEOh4HMdp6Mtu42DcGljNBwS5egYvYWcSYWatPmI6bw
ZLBGGAFlRwgiBh+2pAfRHxSiTpVVD7k8VoNfxPcfKZTNJRZvCe1ZieraXX6z1SFyQcWjfnaRiwpZ
8vYNvgOGjxk0Es8I68Jt/Dm0ocCHsKSB5hBGD56R3bc0Kl+JZOYQI93PzFyvytzd0wkf9zEPoA+C
WZVn+HpIfY5CWHYtkmSPkdhMfwYemM8OqDAvs6jzexq4RT/KLzIBYoSyIniIBMDiWu49POQYdr8J
vz8tGTrWVm6b9ISWmrhMeoSeGyHS975rywykvKz5CrzHbl6m/INR8TE0QcuQ0Xve2OCgICv7+p8c
c1llVpBN+lP4HSZLdCGVrSpcEEYBX+20mHIGcp8qWdGpk9MH/4luBLfNrAaou6hQoEeTeLLSe3wI
BQ/jL26TPfhYK5bJLohYhiFyNgJvzE0xVh0uRwCBkMAjN4O8y68bs/YsV8N97iHPMwRmblTdquvu
qQT4lc4GUNumWDonUI+bVc6mZhrKjuhe68WiHbBNrkpxNOe1qQ5mMN8pE3iyzl1cnHk8+pFMRqwY
LhDV7JMI/pf0i/3tXsWf+bte6MTySaok7buqz9vLgLTSd9FFBj0alqTJGNKjdBNl7RB85ePtvdpc
FBv3gRoXraywOwgptPYcvcFG4p/e4jmiS3S03ow4k2WXuuuZyVALMl+E7lT/PnfxskrS3sn9+Hpg
FmN+FAMPTb9+M2hHj49pJaQQlmqn/7ZOIebAAYtS2PkPqPk0Df20itED9qwRpue8Q6d3V7/Y+vD8
25b4n3rHf9NuOE6erhqVYDO3nndnfXXJa0lwrGvz9kKHW/P9eWMNbZNbTUZ2QHfTtDcv6IrL8dnq
Hk2u8FN9eSPdraeY4P0hCqdr15FBVlmvnUHaf4V9JJ06tAiww6o1GRTX/rmBLFQ9xO0o7TmJvExm
v/QyoPe3ggPClPfx7b0Ie0wzS6pQjbSDdFV6Y7keFpw796M6F+gfVLA3bIoAHFdi14boRxIqwKda
zG4zlPmMdIgiCdy5IGD9G/jslPv40Zz7A1G2Btr4pxKrwyRQZ0H2YpHFYzwZFStZuqnZeYcKJscl
vS2Ikx66pdckWE+lLhc8J/azK82nK+DnnNfN1WKGgBnxsjE3n7xLvBY5pURjYsa59cxc22WSUKgf
JcTQsxePgalDkOp8BDYpXGJKbi3H0u62JfRcSKhyA8tyha1MCXy3GvfVfSyETcHg/lD4fL3ehZGw
vsvVfkLK3psaK/Vi0wfd3rlLwqewSaDgiJb7UU0u7TE8ApKoZQEHZC1xQqHR4jn7JTkkzz5khT8e
HHPNsOZ6z2tHQxZsiX4D7Emu23Ut93wzRDl57hJ7r20Tp3SZn81umE/qo7vZMcfOt7MaLLmEn+lL
8vcqpzvWOkIFo9P69C/u41VQSNZHDqRRH8tNiB5gCd+UjyveGupEw4vW65mUA3TFcWpamxIJrKL3
QP64fp2+sCFvhw0Frb8MIlLQCsrhmlSBJq1t6QYflm72NmKotS2kTN29HIxdkNIk4QjYX2tJD8lb
rLyWgzyYjuHFu7sh7VUoayun5ZYw7syzk19JCf/DsEwfyih+DaQBod3gzLpSVLvUYwb9OL9tb+lF
H2m0iC9yE1ZSOzGYIRmditOPqG+4s0GgZ2xXDTroQoNJ9GNi6Nafq4xrKtkNhjKaOD9QTQJ8ZpWG
BtMHfA3W1h9cEkgzlNnX9xC5zqeky7W5cRPZUQUeaUD3m40I5T8GGcAN9qbwT+nmNpCflkvyWEI5
GjaL66OkkW3TH8J2cBv5Hah7DWd3QRiAD1hD/sVFXP/1+CilIxPFnSHgSR2fiIzv9ZQTc+bcFJSU
N8P3lW6oT98KW6SOsrGP2N7YjfAbIhUhNQG+gD1RhmVRV38g/KL9yYDZ0RsC19awscMGM7pE5Duk
v5QroZILn+ZI9j0jyjwqlA0gnliIHM0Mugz7iudJhqIk5rw3qWe6n5zEztCtkUYCzn08Odjb12Dd
ObJ6KJssXSEj2kuaUmqk/9s3iUxAi0aKHJIQuDBscvbWFlNlqwHEWIuQRrm4nMEzFCGgSNZRWGVU
nTxr0AV95Z+D6K/6Yq3l5UTp2dvXmgdjk4c0XdpFd3jFzk6pY7pW0MysX8rRtl0L4UWsASR9hpxq
tjSWehfWWkr0QBA+Ql6UdunxpWHO3g2G60MPXexLzrvnGl7fkLRXCAIjAfnuJP2haz46nwVSLkdV
sIIKhyCTXyn57k9MjJywOmbY4A+UONpOfIXTD/3q4GcMJQ9euF+PcEqA24yNJhj6AhFai6LJv/2Z
s2qWqQFSaiOC/fqAVtuTizpzEyLe04ot1BnnFvNo2AMMMwawvlK1Ql4vng9//TeD9xThHvH6EKsk
BkARHEy8jpgZ4yExL96KGuY8sKAG1n10V4XbPgUapeSQQuCjp9kTBaDxN27T/B5dtaIx1Hk4WEFf
HLOgOy74/9eDvpYGHw1YxCSNWFxjSYCnQj3QcHBwfwsCi5g9DKwBvIa3+SScGXEZxgQwT1AR9nMk
cX4wSdhKJY81utHrSiUuxMRHL3VUvKKwQneL2VhzWWoRKlHTaMUxYIaFW7LBc0nPoZ1/9Zb5B8hY
/v/zuB8mRF9+11lx54/YIaifXCo9EitaE8FPP+TAUhp71nWJTa9voF8bAvCVyCDxzkpBh0Hwsy0W
fw5/kT++EivG+xy/AWpaCgGX4Z9rhNZEF3sI7XxAeEms/rPEY44qNBxVkTlEoQzYyhWVjzip6ALu
HoaHrpesJT8UEWpBoTFX6Xy4lGL1WJ0qpASY9SCl42PoLX8xLhPszc5M+DnTWRvss01+uRJbTXJf
vHvu1cFOP1ZtWLqtrjkxZMznYYoSpbdcA55bJX3eiSfebSfULwf3NQHHJg64+EZL3eTIc6Mw46nO
L9Ns/WmzwfHlQLiXFgcF+5fz21zqxJ5a6+hhbzLpIDpYpk18LRYoNjyGgv9Qka0KHO0AN/yM7a83
vQSTwbLwF89np0kQ6f9NAulaFPIkBwOR33j9Px9DWrKJ7ZgobYVFTnsDLOk82u4x1sprNVkGPQWq
X397CfCSaTjddthWGHfiUN+8PYNb4HMCIlwDkEx/LPXhlv6JBa8BKtoyZ2EROp+EuXSEEhPrldfB
hycTbbM98i3qgEILJecIOti3puwVvMPqK25QLfsR8RhVHsJPh7b7sGS+X0Dt004RmFT3rEVWwDo6
Q+0Ye0VleHuVFOyYCLk8KfYucj+ecLxslYQNpJUj15BhKOg6B0LSFwk9RGxJl7EzNmGPjjm3sAAH
9RjUqk/4U0GKtNM1G3RrAsNsQM31R55Lo2ExteYZRP0hhtntxLsqith8kOnOF6InFR5g1rRl8I8r
c74S6vT2yydy7GZ4Z8Dxvtig1ZSTzVG/Svdeh2BnmWHa2NFz5QxqW3lFq/WSp1QCoceYxwAYRuA3
ZiLhLdoo6OxKusWGfQXI1tu6GgDY6dqqv/7fcbzPHJKeejjRCw62wCp6R1sUU07IMjB18EB7HtPZ
baSMHU0M0tqhmn/cipZNXqwe/8JgGAR1Os3+HsZ2jdHgLnCvsEOsS9ikvZXn8WlpqONUHR59V88L
5sblH5mu9QfjVNvTZXrhxKI0xPGUdYSdBVUD1IedT0gDBC2MN4uJZwO3gqkPxBoy2xUEZN8GuZLp
AgWvtYthFyDkD7zuFDeiwy2pqNHeU0t9X5YS4sV8O73ELg1UuFCqGx4mrF+JAt3rZv5pZ9Gc1gJx
+8k/CI4gHfkFLR2B9uXY9mT+h+Hy9V/TgXJnptY6Y4ZJpHMLMNNS2OA8DhgXAdjfdY8ziFCCHArg
7lRfUfUKKuk13ROX25l0IQAyAzTM+ZZHymT8G5Fuyw7K/WB31uWTdRRNQJFJO9iAK518lwjIf9xA
oLhYm/x2zc2iQ8q343yu/bHEmWZooEzlc1tZul78cqYZ7FPKxCdo1E4k/DJyxDmzBw8caD8Cb8Rq
WP8ThyOZierfWL0WhP8Z9MLt1+O8sSkE+DeqinFMCQHp4ajyFBKWLjnYCSIm7wOeJb0sr8pVp3SE
73ddm6MR7KvSSSJFYB7zs0TLJcC0HYvF+Gj0sLDfDb6tjkfyopQMnFt3jIJnHzYYOGhfWbwz8sMp
OCJG8WkHtET9ZOv4wG2c7kAFbQd0h8zU0Q93r058J0ofDGb8sN9qmOomIYqLCa/H/3Wk27RYHbTd
avvT4I3+0BF1chiJYoSWpQOHXegsXZkPtfZh0McCC9iM1kdfpXXw5JHV6yKI5UxYQ8Mrh327Rtfd
a0Ux1fC9Hchyl/BgItTrvvbe244hmoFG3RbAXdwkDT+5azN7HSW6cP4x4VXCUq35D9K/v9Z/Mqmi
1Brs8AVhKgHOzuSJWR7FNkK5ufN9iclzmVqvP8w5rfbapnAMiYPXfc8aWwQAI1r10Stc6T833AuN
fnzYRILBzpX4QbTt1sZeYzQ5G+NCbftqPy9dqr+zlWDnO63EZwqg0lb3YUgrhY2XcOMwWqHR8/XK
kwpVf9962WQT5B5DcB0riKALZnrhEhm66VHUtaZYNfCOYpwvH4cOACerYVRRxQhFyXcmj5p05ge2
SmbP8hYXPnu2D5FF7g9JiRGHe0aGsntXURVldH5nJeya7lWV7iLqyAP1bPQy5m1uA5R1KEZy9vFv
JAwbHsTRjc2vho/wr7m4BJC0H5f7wy9vyz3HBW6WqOMibxwNf8sx618MhX1RjLdHEbSBG5+MG2mL
Hp84UcWvD7jUyrALifkqZLwA44W44AepUvgyaciZGWbus95wLhlpBMECde2f/yQI0n7VKKVeHh0j
uSJzQBC9JoDojon/mATZrTRP2kqDBkbS1pD2tseed89EBAZ65ArqA/hpb8sNkLuGLs44iUS2CUBB
SJuOtD1gS+tVGO4AH9E75rffP92LYhRV/c51aVOVJo7U4aiDPr40U0l/NzgwgRJT0WWzfIYOJM1e
xG3chl3gxU7PUAtObLkMlzCpGW1nea8qNX9t7BPSF1XwwMMNaSZYq8BdsP72hMbNm2vbCkTX61vy
lwmllcgx1IUswvZVfqfMQ0fdE8dIT1tDchVhPciH7w7vxGK+1IgXv5hS9iTEDfzfybiIod100B5E
vYZGjXCivhVYCrsta6RnsJs01POhKKb23NEjVpbq9GlzmyP3xxX2J2uAtYvtQK9zbp4n1IHlq0ka
YvdvLsPURejXFY+DGmvfeC8kA6lPiMrn0ygotSI1qJ4JktIX/7cVGd9vVBQEW/MPb6/dpjUC/idc
JcI092zmI3lxg8FECU6jGVM7doRDedigwHl0dOYern2GG6a/P56G8+IK7rXAAHpGMKyvDVmLdg0/
otHztZ7gl3W3LttAsoT1TOQOgL4WmBr//7o8PO81wjKVinXNcKJZ3BFhr2uZPTj4GtIvjSwiXasZ
WAHRj1DyctCXi3+6+mwge4aNIgv0wQcup9RIrL+vgAR2uGw5BGrWpI2D1OAGYeP+lridaasnwXhp
89esmGep0o4526fSj/b0pWq90yoDeC9WNlwYHZFtqQUL6vEOMK6SSoU3ri5LDIwW+kmnengnPl7f
PdmH0M7YhIOiEcVoD5pyiHTTXWno+RmQePFE6dC6Bs6uabYvbhesp0iZBaXZ4KasAUOqgz03dnm/
kzVYb1j5es7n3oscOBpcMD7WCtcKfQ3E0S6yR7qJW2Y6JrA+Dbt4WOLp3onv4PMH8ZU3G4VJE1Ab
V3EaEQRwm+SO/9ngr6oxAIFtfM2rr0rtpLidRkKzwXf9cBzE72KU0pGXxvkNiLRl9ANP0r2AaLKt
OpmsefP0i1tgkGFrvh0z9ctwmBkyeV6d/RYFsT7nDvV4OLpB9/MVtg7szKd2Tz33w5RQ4vkVnygs
XtSEewudzm7ltiUBgz8I0FF72E2ueF4CDHyviFGGi3ye3XLl5ha+/ajsRBH1db2MHK0biWz6kyK7
/Lgiz9fW/lD6E8U+SAe4hNWcn6euGtR7oJA7l+4czQJgVAf/tWoUUSVZbpUAXTKzdNOmvbIt15Td
t2E9iudTBufZe4XWHFkaPNjgog4PS0HltQ71HSMbnicVh5oInlCF+1kWEq13dIMDGl48N4CQvPDt
mV9Cr2EZA4CE57Zmt3ahlGbOe33qcg/rd+4GRrKyRBKqb6hv9HmBJfjy/Ub+DpDdYKUh0bWiziZ9
rjsm/XEjzhmtnF/bZObcYXOeo5BAhEFEB6sISV78zbUBXtkRSn/otgoaOaILEJKurpoajcyu/KgZ
sRACE3NZ7QD6LcSjcKiDvkxVQNuLdGvuV5wUC59pQGmCQaEP7d3rJDPjbI5rIZGCMN6/pWCFi+LV
ZU60DPZtyGIZkKiKs+3R2tS7WmLdUdRnvZ79AEJO/egp4gkWzwdouJZQcHWaglomW6tUbkIjZ8vd
xzTU/Xv0XTQB9g4qB8PDrW64O0cf+KAyKkpI1Dcn9tGXA0xMvE4DLIWdaYC16kgxbxreWPhxNSY2
EIjKpsP1h+1OsgsZAFgOXlS2yTgk6emOHgVGKPSwIEdaB/wWI/byViUT7TnCw9SSj0e5Z7wtFpYa
s3GlBQvrbwwFJFD9+RYoPcvOFAsRw6fCF1Srm1ByW521W5Eq+UCBT09HrBI10/jnC2G2CEK/dLmQ
KVuko275B3QQCL48Y7iPYou8uKPlyzOZyno7dEfy5mYQ7O22yC7nAv0Lc9Dodr2alCEGh/5uWSRJ
XWxyMRQ62XNS7032Swmo1+6afhG+NVJf5ItRmSEqDGN7cNxBKiTrAPVSPkSwJurqRLp4xNU9WnXi
IKwjEKXwEIQNeKNipK+ub8Oz3NUg1YCMCEOGeT9t0XVNyxmALXtEBg5GmS4P+lrUYa/3uzbTi0A7
N2mTNZesfsHVJsdOUyr2NXQSBedfMR6WoGvtt/7TSSVCYJK1UZyyeoxddvrD+aifaiqG6rBkqL0G
x4XFD6Ws2cIk8xYE3dQU+fOIW7lBjNnonYRBJAYHViyyn1lM7WcpL3QPij3beDN+M3YCnz8fcSxt
WP/jMi0AQm1waG3kxy3HPQjsfYk3PwrZ7sU8LjVx8jObLXVR+UR1lxDmHsy84RLW5mAFT1+WIDlf
qklBO1ZAqPu8tHnaQAk0rB7Su9T05Pus4xTcqRDxQ59b9dwWKRFXJgYCpU+nnsi+QISL/aoSTCFW
xm4Gt3/wDnvoeKukKwMlLzaENfjU6ljvB7GS0MxHVTM94KpQTaPgXESZXTZGpDRiYhy+Ee1g/Vzo
n+uXISwcb8aqqTMKrPfXrChW2g2C12RJDqLn1s5+XC2AWgScKI82x4NcxE9w5oGpuZtNc/2K8Esy
nxlbQTOJa4CcTXbH+SBpEEOHxpbEXFd98u5Zg1JNRTutpQGZbeaoN/jWdRg4zJGGNnmNZPD5RyHx
lOM+TAIxhYgT+0X8YgXu+86+bcEE3sNIpDlXCWN5s+GVwt2RvdVwXWENYm0PWkbr1LiOfrRyF6dN
2EMz1cGWDeXpAwyqHPvTy7pPDSE7BNXSyyJpJY68a+GuImkt5LfgO1pX5DlAI5Gq+TLSRK+i1cLb
zSBgtxFaFm/xu0gMLcozDw0yzH8hE6sm4fvtOBLzgJ2onP/rzlqIgbOS7IYmAkHtfIN5MFmFAsUS
YoqB0bIsm0XaI4fpDenulf2Q491DrA95mlkz5df22AkgwkIGeW1dXA78t/Ql0cq/AQk1vM+zmUXM
JoZ4tizT7rhXnziDleniwjxJEBklWOp/I+RreufThNwihG/45La6UL9zSpKO1QVV/+FnxAjZGBHH
S1i6TT/pSZtX88aywarPImcBvgE1+1HnSDkwzvnGUtiAXZa3JihvLafzjuLx2KO2o9HNwfmj/xLh
Hv9A7ykG5TlWwoRyOQNDVzWuyjFI68H6YTtWn+NDhielXVBNNAyss7fHr5xyvG559jZaJKy+/Co3
R30YE8FHy1wd2+mj2bLyCeE9Xg+/Bf9njzmQscHU34ZSVhZoDgd0pl1kd0GwJ59xv05DEowdVEO2
RuTgJur3NujNqmaCBBh1IAk1YF652X8JI330oWynCtZy6cou0svwJBE+xZJL445JWGhmuPTK7Igl
Abb3a8OhibIWBzOa9bNPDYZYhc2eE4UlTlyoA6jY2iV73RfFCmQUcQn2IuxxuNc8UaN7PqY5DP4i
qPy0EQVceljdbMQJxKoSTRYHJkw+v1wR8xpYojBSFSHtYi0+YzLDSnSWWPjeSc4aq055RZmRUAMD
AtqwT9tVqcaEMmFx1ppB21oodBZtbWFfp0eAURiRBHGYC0rihQhBYpdtvbyYeL9vT/A2vxgbnpSH
b0ofSACeo/FybOV99tECRK1y4a89vYxvtKWRQLE98zuhHoSfIUYpqFeKzhMCZCT1/Fk2WAB4/WDL
zsomPwqpyJBApWP0tp8pJ44ovpBoXvmgj8kX/jvWkoTHNYJg+2HoJYSmzaNZqCH21hT0vcYOzn1q
y+ybJrRiRKJ5YpMTvoU++yJWKC9zYBcnA02IRon9JDuvDIYMXJSJEQjz/Qht99FaHDtoClpAomz3
onE4VeNyFPhP0pqMzwqnWmIUKymYudSuNVqQRC2vhADpWjNODBbqJWXoSBcqmothQxJacS4LhfCK
LvjeL5A/zlvEJeQj40ALIiR5HJKu7ClQiwF/M3oXw25v8mAV2/0bwhSe38a6QkH7Gv3rQbPI54R3
cVCmK/q+zrATe+APmD1ltLSi2FpKTaXRK9uztX6Llu59n22zXxLO437kVSF4jJSh1M4PpxeNyfZ6
RYrNquNKXyl3FeeHP1QbxtF5XF0WeBrQtwEcfOAML+XEfNNejZfGb2NFWfHxnBpZy5ABq7LTMyp+
BnXkFgmLqEfb1CrZVdiLGeKRkRF9j0EzKIekln3puwoZvkr+lWQdcjSOxyfA4vWIYWfD7gjRYmO+
2q2aJn2BAAx93I3nLGhqIvIR/ZdkRIPTmzYVQM8M5AKnrnr5y2eiqcyqW6HuLqi7H/J9c7FNLbEQ
eR2mQL98s5EH/+CZJXGUEDZAzFJmGa1ceYreZ0/2+Y3ePSZ0LWsPpjM5C+ehSVKeHbLY0FYCT2wh
eVpLEaJDicnmoQLt1o9t7JmXdF/prXNhlwzhIWoojBMMlJHDD31Yn8BiGguB/Jd+aZsDqmoL5DyN
ek5GT9AbKEOT6SohPYKwf4Z4582NygTBiadNCg64TOzP6uzL5EMCZDEa0gIJEF9TaoaVx1H74Cvn
NcGnnVn269V4i0fdqE1Zdc9q+6X+84nP0s7z1krxeZHYpB8+ikNWFt1nMISxyXf/EgLilUP3p9uD
ZoInsZpXHzkt8yzkALAagqJ189Rb4L0UuJVGpZ/v2OU2wT87EQp5KdxAAmXwJ22SQdHX8smPh8fh
7e0kIDbjwp/wDtwaRTyzSZu5zW00tLjWUlhGHLlT106d9q60QRVp8q/zQI304ktFujcJ47rkHo2x
YVvI+WQJKwyQuUrLUqAgAYk6voJ6FxLftnRSXhqIHpem+Lhq3vTq9vXuhIbyjmNEmpAafcuU6qKu
rxBVzgD8SZL4/hinOLOrSeJxsKvMswJ05Sh00Criv9Y+5k/zfXWAlsgW18yJ+Vr3N41lmqjNXXTk
/NjkShdjRc5q4sDkCvm5Ej/RM142ySQZrwHWLl/cwJtxXLTGAlWomRiZFzex3OxdwhOsdxRRQOYD
zmfMDdwy1UFSOk+rux222Hj4NrCpQUrnQqlWwqH+THrQWbIGR6nyRbhqHBrECjA1eGkZ6YbSs1lP
BQ/IZlc5C14mB8VyX10l+rk7vcJEb76zmVym0CHj+dnd3Fy0Rdl30s20j2oWJOlUxpPCKlcYo8a/
+5i8A1mFogl2O/VtCP7o3SnznyJ+/4m+8nLrfsGck9fqWPIF+0+jWjfgZSwgYoE5I47kb4m5ojeb
G9UoQDQ6SpDll/suutwdZk20hDinEGEIUFlctPtwlBazDo4iX7bfkeqIJjq5tSfOa2G7DoX0Li1o
kaanNWaF65rWDlHMcmdKMqRFpxo2OqUZNRPy4fLK4uFMHziSARfAuyaBXw1MxIVPWciW96Na+gzs
xyNEhESXH2rIP9TiX4TxehTh2h0HKfplBT2VJaEMl0TpOE6gH5TcJTVwnniXHWZK8FJjZ45g8Ar/
E/+Vurcdnph3VbDxS1SDvL+IwtXIwnuYSUYitov4uAI1hkvdJU7fFcfC2iNbXJy8iAC33buibAKf
mVW/hK0pamMHbXyXzTgfHRzVhj9nZO0bDbf/jf+AhTbkfBgCByiLyvC+El+zzXkn8kcwJEDu699h
zQiD4+QrGpq5XncHA01N/00cxs8sv7vgpGx8RPnyRQPknoy0RxmD425ytmhbqClEtzUJVF3ugDhX
nTcKUn/UK3uunsxQo/mQAak2mxkn/KkHiTmh312DytkNS/td6R1/2ffhnqgA1qny9j4xudos+ueZ
10GenFfOkhJ3kT51rM6Mc8U4JAOlCUyu/9skpIi3DiIe3BffajouRDREjNdMG/KSr6Pg6fZwY/Gu
CBMT4aSFn0tBkmizA8x5Z3gFTBzIDrI7F3dtIn0NPas0ueoLzygRFCPQpmhmY7fBbPb+OwvPQFNc
1yFfEGY7A2qpeBaVrz0OssbM2oFmxJZZzX515pEtkIw2kyAgKaOp3FZZwAvQOVbHDdDmkF9fb1Nm
tobk+YgGfJTlagpWWW+xw0KfnZtTRQAnlMw2pMTNCABmgtYSmL2vX8VNtYqNFqzk3Dg2itoe121w
Shu9Y2cDH+EDH84JnQgP70kaO1MObqrelXvroiJ7xUFWeGOh8lDF9T5qEsrgWwuECtf+Fes0bzxb
5QILmxeJ/rLky+g/vzvLHaZH76if7zsNL1zycZqCAytTtf7o9UfQW/2Rp+uPX4ed5glO8lfYl6Ks
2amThsDazJH5T3Z7By7ZszDDS/CeibFct146PN37kkZ/Kikeebdbi/Nl7QoEBD5STKG38YCwdaVk
OnoZrTWxdF6I+BlfagbJDhmJwqMzqSYNBe0kQUDb30f5oy6QTWqJhBc3/7H8aOFHv7fm1Sl+wTK7
llgGetmU0DjsDAK5gn1WMjcdRkhuy4JHIjq3qzPPI/Wt73Io3jJyQMW/+xxAqSiDKJJBQFDNfoIC
nJBl03/RTJd7vTBWFh31JhYpRx+KJX3na0DlocTbvwIoDhMnvJWIJstTDa0u/vnO0skvIUhrZ829
N4Y2DIhtGUvYITrZvF2DU1+8vsPklwpCj6cplrB8HaYT4nQ9I8CC6siw0uG1JeSPAaNdMJjblujf
E9AwV3ke3hVXBJsidIhUmNQ9q/3Sd3lqKoWSgd706iaAPoK9uYnxkp9CYyMywOjxh2EBR0yKxraQ
vg07tsX8pERHQqHwY6DVsu/YxKdAC6p/xFfA+5er7Jz09diwXAFxkVP2O9pHOVJwPBEfPEFhHlE7
0tZlgwe3QuxHQnwbvrScjF5ilHxyj/CMf7KQB/LM1ajMtBUTP+h7ay2cIItrd4T+7Qf/PdbzDDJ6
BYO/l3VRyjOLPE3q+9XB1CAFscRWtUITP7RpPyi4YGrRjEdkpmoRoCxW034cjunBDOhpFPIMlzTk
20CPqtK6SaTmUOVUpe9uZu1fzumd1n3cRIrtFuQaJW1rSQeAjPa4slY37fsKrDafbAZNeZ4E+RSX
XAfai5MHO1S+kXNfReuVkp3rnE7KujDdbhS3G3NI/4PBnVrcxdZc8EPi2k/u1iCNrgqFOh1LWOJ4
722twLTpTUMINvoxYWOM+o8v7AG3RwCufq45gouqpaAvdY01LiMv9sGsdOENvszaNF8yQmiCPgop
ZXTszngE1c8f/vS+dxiR1QrE6azd5L/2glWMLHa64Nd0pBvqnNIVyaxiWageRQAaEPI1sdm4PsE/
XKz/7ixJ3V44fpsrAFbvs8etXHtI2nG9g0N05UdDro/qGYXzIGhxzuucShffhuakWRNqOgkEsw/Y
1usA7JzzHC2G6N32xNAcbW8773k7z0DcRlAJ7ZBm0+mKbxCqlrbwwt89DVdPxA60eLbUQTcsyaR4
qQmY0AgKpzWMz3cRBOX/zZsjxe22Mh7gB7xEUeO3XCYvFtKCPjKIi+leWM08Zb4rcQCsZnE8jDgx
6KjYhU8Ybv5WQljQV8NCiP9Uj/T3ZWGSxZ6ulgCkB/ffYF4ZNZamNAx5dKohTNa2sd6zqONEehJg
G2wqAw4p9pwqESTDqgzPsUYkfgGYilO1Tb0+jyOrJgX+VUXV2ligoN0pMVhJGOp9Th+jmgNzeUqV
tnENAiBRGx19F37j0P0x4bQDprVr+mWsoR/KsdYPrvKlMc5Hv9OS94btlkU7A7b2TSr96c6IkEoz
T0U552oDS8sw0zFYqVTg+8xO7RDz01gmdR7hazBFQQhpfN2xCNbUGzaSi3UZBQutAu01A2MvonRJ
HaOU+IbOvUjOqkkFQ9wp0AecR9stRnOG/gQ3TCM=
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
