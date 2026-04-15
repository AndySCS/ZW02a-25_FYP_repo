// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Apr 14 00:40:22 2026
// Host        : CCVDIAISB0061 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/twipaa/Downloads/new_fpga/new_fpga.gen/sources_1/ip/ram_mem_wrapper/ram_mem_wrapper_sim_netlist.v
// Design      : ram_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_mem_wrapper,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module ram_mem_wrapper
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
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
  (* C_INIT_FILE = "ram_mem_wrapper.mem" *) 
  (* C_INIT_FILE_NAME = "ram_mem_wrapper.mif" *) 
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
  (* C_USE_DEFAULT_DATA = "1" *) 
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
  ram_mem_wrapper_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52160)
`pragma protect data_block
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
frkIDg4=
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
