// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Apr 14 00:20:39 2026
// Host        : CCVDIAISB0061 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/twipaa/Downloads/new_fpga/new_fpga.gen/sources_1/ip/mem_wrapper/mem_wrapper_sim_netlist.v
// Design      : mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mem_wrapper,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module mem_wrapper
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
  (* C_INIT_FILE = "mem_wrapper.mem" *) 
  (* C_INIT_FILE_NAME = "mem_wrapper.mif" *) 
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
  (* C_USE_DEFAULT_DATA = "1" *) 
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
  mem_wrapper_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52560)
`pragma protect data_block
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
GrkY1yGs
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
