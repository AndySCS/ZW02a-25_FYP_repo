// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr  9 20:20:30 2026
// Host        : CCVDIAISB0045 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/twipaa/Documents/GitHub/ZW02a-25_FYP_repo/FPGA/FPGA.gen/sources_1/ip/fpga_ram_mem_wrapper/fpga_ram_mem_wrapper_sim_netlist.v
// Design      : fpga_ram_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fpga_ram_mem_wrapper,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module fpga_ram_mem_wrapper
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
  fpga_ram_mem_wrapper_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52256)
`pragma protect data_block
rAjGsdwhmSJj762N1DRntXtjDEBo5daDoNlzIhjHzlkU7NHKUNsolcvwAseh0B/D42Qp2rAD6+Ss
gejBhgcvfDYMmEtVgoJSJSQq/3hVZs+pxGop+WTLtT2xnqZ+JXSYM5r1pE6nErAtB1OMvn38Sh1d
y9+dj3KRhEsH+zm5MlXJwgkU8eEc0md/XgGG7O3MsoALMQxHxyMFqjEYpAbnByyV87lun8bNdETq
aI4QEiglDKi9oNgVYq0oB1ufSctVhvIx+jco8JRdYBBcttgv7VPdAx7oQ7hsjXldVdcGs3XKp5cH
RpPUxHxH4zNq9LDac3a5yrgHPdYBFkQHtaGZ8LipchG06YQH9KWYITK0M2csYquv3/8wA4uTpqa0
WidxUPM+Ai1ZD0QiAZs13x9U6Bf8FUEvMZiGQpBuDuS7tfD3DTdcsP0E/r4UjkxTml84JOjbz0IQ
Uyt+qIPslKsBuohAZ7aSGTiTlLqsppPTYrlH71hJZh6bc8MbIPK2akUgLYwW5hM7SnCGg4fNewXW
/QBg3NZSpEU6gitvde/2GjCZ5f13ebHwS0WSDPs3eP3htYmL84gsl1n/r1xCmcCdkvJ95ZD/+PDt
Gcn4rjY5lOTxDybDWHcjpmIPd1IcFGcKTvl4hlTJPtEjMbsBzwjBqXQH3AC+SBluYEGxmmhKqD3c
e4DdL+Y6FYvBG9X/E+tTKtcDGQO8l8bT58IycObSGQBrYPK+PoVe3k24XeCrBRy7sMLIud85Q4+6
8ZbNGm9mfHjCwOPBzyLBAB0vQ7NhqyZs4K1Tw+QIL3WaWtIk40Xfy9MdEHZlfej2ks+EwTdBMk+b
rqonao36r3T9QLSaZaT+74RuWTbf++oDhwc0hHfn9keJorhitPjYGLJ7E5YtnLoyasHZCaMQphnq
eqhKFLqusVwcL1QzjHxntvrgcudDRBWJGAhCrUGqjYrlURBM7P1H4IeBaWTngeLXY0VyK1hLL+S3
vSXr/A9IyZXh1kFUxzPPnuXYDeZAYZL87aVjr4iEBOLDZbL/Okn0//fOnvofAJNyQwS9PDPPNSGx
D4gtqhug9buI20G4EhoEp3W96jT7e1RIJwWx90htPIktWYXne6PmDz/9HBCJ5juR9ZeXj9LjvyXz
CynfWyhiXsik+2DXWo7UPbBBxQiCESMlWX02oku8Ou0LN/o7FDqjyZGRh0uMPz6YkhI4RtE9DgWi
986ZPbx0CuJSN4d8F7yMiwRb3ILUGHOMKSU5pl1iv/GDzKkjIlXtRnzz+UMMUFFFfTscPRbHKr8l
18cYmVm3CDHUH9et6Q9iabl7isAPmNt/6cHf39ck2MgfzEg9SJrCXYNZOkM1hexg42V+dAeItYSn
Zg6QxZD8721G1RlIKE0BFpdEOy/OqVgz48IOZxgGF3GFfD8ZkgkcjQgXSop+h4DILikzipHep18x
WLn8JHS/p4THhUkD2RK9WTwegzRyPqkPHq/gE3kGMTMYTtQgxBbat4xqOalXnH/Oq8FZUhdddXox
zMwALHs1OpQRHYXbOATqNPq0FUZftn5fMDNJYF0FXd7gDi2PwESbu0EE02Px70Urw8hbBWaJ9Lx/
jKyiuh4NiTu598ktluBP1VE5Uvptb3iSVBqlWJautXdnYA/UKqUpJGyqY7Re2SRzm3WMhBw8rl+A
8TSigNh+aplzARaJpx2E2rO5k9hYEDczele5IAUfMNJ6Yq5pyLq1IaU5Os2ZqGEjN92lMSnGDoQk
MqQrTZtHjG7lxNFuUNBx4pUnfLEZ+j9LRk5zJnBuQMR5iPoK5jjc9Ojl97oTTvAov7vha265DHB8
m1IfL6CCgQR+m7xunBblpg5Ce/sqCNRgDBwA2AgjVOXKISXzAE/Yef+ghx2k426mhiPgu+Q6jqen
aQSAMwyYxux5mtbX1ulP3J9buxXPrtYrzwAr75I5UkW2vlXdYVIHvH0EbsD9z2mHdxTwnH74WVbd
s4x8o2X6GzzGyDUmEGPIVusWgez479jVCswTzY3iDRTxQznckkwO9UswDI14rCojW1Ws8F633SO/
pGmESA6mb5GMiDNVUQuSZEoBfwAZc7pSFUCMCmQ6Ganfw9wYZggXT/DEjLtVnYQnfZjwpehUraSC
s5dYwBecX3LBU+cB/FL220+kFlUDJ4iGj7Hx6MybM1HYDdG+Hf8KP7y7itz3X99JSKtHprsy4YV+
03EPNK3Ol750X+sHLt1YBu3MU7B5dsxByJSjzc4KOY7dL4/27ZHN6BNQxdjb9SP34fBu9auudDTJ
MTdMacEFCr60VLGjYxr00RK/A6fmABnys43TCikJdiszekgRvQISTgLlk8ZQ0VLMTXjs+W6zJjjI
ideX8x06WAvYFYQbkxY6Md93NSr3UfDgdMKuf5eFPjw1U0iToqvszKilRiAzwA30xmAMNglASUuB
v7nhTfeYT0ZLiRDcnIAluBxG5DKcfxaWuIN1T4EFzZ5Qnfsw7VJ0N1geUx/hJFGqwXfgQGQgVmky
kZ9VBd18waKCVVSmZR5hkex7Mdouj4h/NRrFhECTHN0+KjtCxfpP42oL+zabtBTfathr9bWfUVIb
3zVcHPRnBqKJZCGw1YzvQp87WCC1FbvZIEsj3bI9R7Ol0oWSrai0/X/j+6a78j4+WxQvJliGb90x
9paeoEqyIRbWdQhVVGDZ6lkrusEgk38YalkiSkqMzDd5tegKizFZ9xolC9Wpme9vSHvOCj9JZBBk
C9Dgci84MACKwVROvvmTYAgjyiyUsF2te1/Wy3gnDniZ/n/WV0+6vePzsHB9bTDTabrGU1SQVgUP
MI0Tf5UdBhQFMjPsA8rFmeBzebYgOkmBmXxmulTJGYcDYRHpPSswZ9B+faI3tltS+Q3yDPvoNOnZ
UQmOt2rlEkljB7VHcwSVXb176M10hb5ShqH20QX0SdhG1etppDXzaA+OyiBPwN0HkQS70yDGIC+P
t8ITxLVLjRVdrZHM4Y8/xAXA/4y3dOowMw3zHAA109VTe7HB0/yIVDfhkvGSiJQSXHJdrOdm3ZtR
0WUSFD34z+65Z3WWFnLlND0pcMx++Z6hgLHkBEO/blwcz7NZRcJqfNg3/dfkSTEUMZ10p6bXD/sM
/JzOy2HHih+3J7rs/kuwkN6ZQiCCHv6uDRH9VZNO6+UgSXbar+gSSLyoJecHzjn5rJtXzuiABP1B
l2MHC/jcOpdWZj7CxowffBIp7j2HnJCo1nGIHLL6DHX215lLrLrhQs/oGC4kX71SMSBNpTipHc8s
KbVYoG2PFkPYthtZbDkx9o9Ur8jYkqYfSUeK8ZjnzZpHTKwUcCAg96AQL+giDnqZd5qNL9Atl0e4
ahxk6uvf26HPIvtYMjbqEZ/z2hbFWIfUMFOuY66h2b9kv/eLHvQlOGFDkpbucOTtiLpHNHMby6LR
RN/cMp0monTQdGWaCWyCBb778VsZZio4EtFA+vYuF8DNbXvy813jPCM17bXDRVGqoKuGHyQDWcZU
28g/0brHfcUL5cOOk/8l6s7ZCh8iOE3BowJ3Xl0ajjGRCouFyiFMDM+/7yB1Vxkvj9SyCstmqbIL
OWqjO8RGR4lPQppUinl4E4S30FHDyFl02kgjBR7iqx7NJsT4MgDVgeWCCLzyVmtIy7u5N1jAgvPH
cXvcBbVMB6nMYKuUYvwcL4znmkoEyjhCvnwNeauUlfroRLvDFbYlNldTmwhIySSs13nU0emOjUDO
aPGgVgOlAm2PJ2GtxUZhOJ1zICfSP6AfZlYAOXPtzWbDu8NPK2c0F8fACuuiKOK6YD9cL1v68Eg+
ojQ39dzRjIuY2jRRZ05gAX/scg2gI5KTlofx6buAeu82Qg97VewCg5t04LljjgkMPpaEIRUy0oaZ
VO3ADetPbdDo9sTfDnrDRBdNSSTib2FYmOb/PCVi4y+f0tHc9zJl2SyG6BzHAGPQB71gH579LLw1
9mFgYptJwS9vbIFT6zjdGmxImZt1m6mPPwOU4B9bmeu65P0eJB8tl8Cz6wQ0CBx5rXSZZJU2jNeJ
elvAZREmX5U5SLQDFRv5CHv/RdPUC8lrdFYIMoCkx9D9lAbdKtDHk6BUQhFWfzZHOxW+OHlv7Oz0
bT9+sQNdhoLLmiCn26l/NC1nSYG44n1buB1RUTHH2yQ87kbQot091akv8PUbj/zBL5v80UuNj2xn
/q8efrRreRuDvqtVtxyDCw+ijIfWzSOTiWuLezZxEtBz9PdIb8ixKpCYCe0R89mY8ipnXD9y6Bgi
pVVUPWJjFCjp20TD99EsdphT/fwkUDxeUZDLrCMVv/+HgbEjVToO3n/iVVfSz2zcumv4fWqhHYed
VhGmmkxLNnOagTPxPmh+zzJG9E8MexoP7516uKdBQnJ3gusww/aM/++76m4OeUkQYzvMC6zwG3Rj
4f9dZ6stFooYJ2yWaokco8omfm3aGuNZdiYXWoO7gA4FqRcgVm9m/cSQp2L/HWgVA0w2oX6Hpsyz
nBSkVAxtz1CetPgMVxjbNTx9KELhD/GIkH5PkXgK947VDedmV5vx6dh/w4wmrZMVa88C5q6EweZL
WnZrWI0kNPI4djeJpKCDLWBO5Eyc7nwf1HwaDWnWQPzQ1IRQekChasH9OiAMFY2stRaN14E0Muhf
00jgHAY5E6/rSDkllQmyPqJAxX7WcSppytjjt0JrO3A8s8JV3ZFuKDmdqnjCukalia+ixUqrszPO
APzaK3/c4NhoS4YqPpoHQ7LhJbcFxKZHf/0Q6HPUtAwgIL3yQPaA3zzZEo7QN5N61aUpcD1bGeVq
r1mRw2sbc8+NtmsnzO4H60auQY6NWw0U6rgDo693QSNaBBj0UlP+dKBOrm2/fwPcC1ovgaVF6TVG
5ZKKEsQE5QFGSPmqMKC2KX1CDKw1frfsy1+pFQp43Ab5WdZdD07EpN9+cz74LYjZuuXNGO34sjBv
9nD0TcDhQJGIktzH4ot9Pu3JQBzHF15rKNLwFlNCHpP6MFP4ww5DcJuEfkyDmQNlIw60B6TVM1cC
bnu6LHw1hQjJ9ChdFiRif8e8/Ixuu0F8j+A4w9ymGk2KXE8XZUZk22cCVKGq7cKbstCscrBrOoBw
UfKUtK4NZZ54zVAa9DKvb+37yj1blX7GaWQWiyfy4iCHxYYZ25wjI3325jAOWiaVIQFGDbbM7Rje
leQtjB7XloYB5S2fZNqakhEm5T9yDJWnXG2txg5hyROZWPE322gZDl2FweetIjNub7xBhjuXcvun
qhxOv+lTzEY9FK3huk9NH40BMVcwOVvXE4u9OQEd6SCa/g/4fBp+J9LaQrKD8T6Bw1KOY9XXiy3t
WYYaVp9cTo0fHlTt/2Wch9dhXV64g1ou3NjhUQSEmos5GC+29po/y627/zzCFJW7xXKpXnYvSCYp
zdsa6jv5GSZidL2H+3F8OsDWeARGRGfd2XDtCkL46ExPfZMKY9ZMxmBod4uSi9lWSqcN30vKJ/VX
Eesa1+RHVrwhAEYO2NJxyckvfzT9ZDTvZPTQrp1FK1vys0f0prDrL1u5efQIUKXdair7JFIWnKNk
z1767VvTULE6Q5uDOyOTzLp5dcnC6EmBX+84BudVQ5zcNYW3grCoIR5tf90dbcp3tvJ8cGrpdnGP
Bs9JVMD6Mdazz7EtGlozhKhuwWNzi8it5XwBcLz76IjvmQkqLG0+iBDrxong+2TTyI2kD/cyxwgY
IC8fOHp8onVyc94a8Wj6S/SmI2Jk6NC2hTwZ6wb+d3SaraMr/yKjygfwWUCbLu0dqayaqvhy7ZiE
MIXPQ1Vs634c072vJDjGW6nHGMNL0ZG6JTmFDHxcOyTNQcRHhz1W6AxFCYuw6cla/T5Hxp2KRtC1
k0/iL28k1YroiWbM66oXsvZ1Euym5eGzARZe1QiKRWdmcvBnXUYRxp7sd9pzmtowkuwu8gIxnU9d
qT4gRkan5PrdS+ZCiNWE4tt3/RAF/tUFMuAp9WVmsZ29Ee4q0N7ZO/KnbKFkolibxOxhvAHbpNBj
wuJlB16todTA9TC8y7rf9gxRY2pb0PX4jp2SMQenaPHD7erwrwpVMqFouyubIiZ+xPrx35kn+Poj
d9uMBC3vVWveSW5+QjG/HJ4cAcEhzSDb3oBjcpjTPB5uFnLkOwjkvUBAiY8wPPNrcXiBNKaY770G
bOFAtp6GFk67TXRfIn43coJQrd2xyVeFJKo5e0/aaYt8WS8w2Rw9A6nBpg+bCF37gmJGYkfyGVzX
WnG/4tcgHWUK4eGWGhAOCj2SbnyPDg5lGgq/JyrjEgTMhGLF0a+UifZCDcfvQdIZWT6sk/oEHCwh
3uxdt9nGnC/Be6UVRXMFDPbRF7Z50G60IL9xVOqFYkc101BwMj9P0OhZD8DILks4EUJUcCJu1WT8
Ak5WFgmRl1MMxrEBFB/KgQrkRHE9xS8QT+JnVbmmQGqQJs0xgDr7Oc+trB7N95Ev1no4mMKmZ9zy
8HorX+cCq3dRZNx/pV53ToXM7x9S63S1uyoN99BGed2R7IC9gZ09TvFS5nmPRw6iONIc2qw6ddpe
O1O8PEpaNTXzBnohrv3qOLEjSOZxHBNXWCcOiGhSIfFxXUXFU6/bBSWAeEKVSv8ZHoHDo1OBCLQk
mIO3LkCGqW2G+3M5t/X0qXCqh2thJ/+yMPqFl77z6fKKroyd6g4ed0bZlGXrvzDgz/Z7qsVMPPiu
kVv/cXu9S3aoqAc8D1nmYpXmBDKcJJjyzCgMZMQGEEk+Qb5pRTbWqji69eHTJO9A2HgVvVSDhMgI
nzj1om/pjmw/eB38isYttrZZDGdGjLvGR5E3oicqyTHFYXdKxYNy2TzBsgAYcWimSFHNI/rkhJOk
rk1r4qQOApyQTt6wukyB9GefUOhAbATJaO8kOxit2IwcJz16m7XjU9LDRtBO4OVrjtFO00ji+bnl
b7H1ZH5GJQOQnSl3TG44o80c8yfd2edn++2N5GDmrhQPIJg7kE26+MvzEpNli0O/XEEMyRBDCuLM
hTrc1RvUdLUXpS7maQPYiDnTMgmQT0F716MaWPXLdN/+X8E5jw5tq0p67ot0jDJYcAWvTPhmG6dC
49xpCxoaAMLft8wpi7G8gVpmN5v7/rcl/p59QD24jYyU4kivhPvLqueA5DO0ts8wamP01qKws981
Z+UO1p8dM0YhrRBCgE6XmUfqKG78gPZvPfGM7/DSvj2koEtFMwRXpGobnZZz3/KD8OvRqstEfkP5
z9eTK1WfYz/TG7+jy1IqM5hm6vRhtlwZ6J5rzBuGUDTapTZzWuMY2rfXMYc68193nAfyZ5MbxEEu
BUtNme5btDrZVvXcaotHp1LRsYJJMsQmT7brDTexF8PWcBJGcvkH0pkQcQA0e2OnTNOgsk0SIh+f
F4evGVu5JOz1eMZfEnIE69EdndSDaNkOxg17ThuMt+Bcf8nl2kK0yZZZycAKbeGToZuG+fFUy18z
dY/2vvEGlprcft8ma6kWxjV/TPNHpSGkb7RhMKA/1rc3Qq5h6XbzxYUBsQS8gbcGVuebespQiz+i
BAgRTR46XbV4z6oYE5eGQEVyDe+ZRuakB2aY9gO5LVSR/BCabyH9hVx1Oy9e7OFEPqwOcRbscfcu
xGy6o7Xdj/68HKc8TZjSB/8NSWXTQott3j/CJU2Vil3ryOvbsRt56lGt8OPLMhGfPIJGIAyfMGOQ
OYP6vSpdb5LUdF6jTJGZU9N4sg+Inx/NWVMxdy4HxosXy4BkI05Xv17thPM/hisngORYr1FAWs35
mGuJzTwl734v594uNcN8T3z1V2bQOSHLUuwb0Qbpi7HGa5aG5FFPh8zWTeGqnu5zrgkb3UhUumu1
dimpU5OzLnZMavEeVJdt32/H1GcOrRgxhglZFqfMP2Yc5+elRINz6WwvV2YLiB/mdzT9Zkwpflp0
mUMB2muIhwEcR2vz/SfD7s1H1qEvYVFIkfljIek+Du5DG8WVhvdOp87+Fr/Rx75Xpz1tYSZx6nHa
DRQEx+YPGy9xhFXMMWgR+9ewN1jgwyAFJ5vsmcggkgY4euLosRpE7+NlVe+JUpfUcKTWVgXAiAbT
ylSHagN0a0VNxNsWd4LH6238+6DSN78T8taK5vXLCRaUvqUi3tv5apNjmbNu06BbwlSJODOHHTsS
FlFpba9I5QBAvMymBw1OLo3OLEjoZL8dfFc4gJU6CBGSRGL3cNWfNPkzAVojsI0YJE76/rjt2bDO
ZqciLQ+PQ31AAFgaSUlzvBh9nOh3TDTesd61f7ZGr2CTBHbbzvwpDAKMs/Lu618r2L+dCtCxX98+
xjSMYtMvwFvhGleidwxlbnSuQTsj1L2L5/ML5ojf7c8y/9Fz3hNSocnxm86Im4FTk+RAMLHZ/Ah4
1DuKYL1DDOxa3mFRuYa7br6STteG0tH8MPXtLUykmmob6YVRnbfi+wccp0qZz4BcuaXq4ZeOmNYS
GPbDzNnotF6v91TWO5y7kQe6DJJd2RVthN1SuvHO5s66dbP7+5L8W6nmrJl7YnXDLfApbg71RUUN
y1Hqr9dr1iMrawRUpemzrFc9W90DHNsXb/P7GDu0qba35z7VU1aV/Qny9OtSNA7qTBRZsTGbf+ho
n9IZiOGeaX0OaJj+JY1awQby/IJVPa2h9OVC6M8GdO3PrJYfNMorS5M4GMSgh8+YENtg00QRa+KQ
I0uMLSmOakkSIhoe7w7mTwZeTXfovEewr2OLrcZU0Z1hOwfWuEh/JcdFRhHMLmPkvwD8+8ppQjgl
BAda36xP1REGfrQBFAWiCbljMBa+ptZrcxzUXx/zZq7Y6xBmlXLRneOZwU2SiWDanpZ9K/yoQyq4
HNKhOlibL/bo0HVQX+hQKS4yKiP9PN4Zz779gIE/F2IDxiZRm+jC08D3I/GzErKJzGTUEvyfzogk
oTm8qmGgwTR1tgObOnwXD7EqeOLXiuiKXAOcWnNVzd3WxD7HK4NpLQ2AE02KNqdOWHWmmd1B62RS
X9dYM4phXfme1bezYhsMH9Zj6qNXEg7xamVNEknkLOTM3CQLbUtGohkIV6sPF5UqqYT0dCUHVGmF
2Z3DphuXjKAKRVdZydJTdQcKIUlS5Us1u8odlRfIw6zyZ86FdxKisPnLKxBkZkj9ALcwwl3zECi1
u/1r8xsk3wnQXyrUCO8HVXaKnkzPZL8ml28KoVMJSIIg11rjyk5CjopmBKP28eCLPtrBcjsKebZa
yk0+pppB1eP11zhiY1W9mO2DZO+LM5zppNkseZosYHrpiPQrXDHhEfzfHBMJHwe8dHPRzu0b/WP5
/ZFqMleYLq2ERik7dGwjkRZPQDMIPzNI6he2T/liD7QJKdhKohsrPNzQ3iHJNurA7EzPaKpxecZS
vnYpHnyIZYBtyBeGiEBGfVyd7mgLmJCi4ETKc8vL98MEfpxV97IjdyYSCBHYP2SC/1bCRXVGZ3Nw
5vly+dscZqfYg+NM7HXUeEh5PGIPb3IYdABybnb8Au2DLKeU6DvSPTjW2Yc079Lu3Ir9mFxlyyHl
aUP6ggxCRx/ScG1GaKMsE+BHVns/J2p2GvivkaDKOA6M8Fbc8+/XGjaOBq+Wowdx71ssdGS4U0Mx
uYkC+0oA4hgN5K5DtMm5xDVZbsmJOoMQhVtdPbmrluiybEkyD81x+RDtulRpFkWbyB36tGwb/08l
jdblV4dehb4b3ZI1UlzsB57mI+Or49sw+WEQb9YY3Q3/p8CQ8q6Ph/hIfB3wHPV+N0kWb3fgcrvs
DpC5l0SOORGcAm6WmUFyMdL0NwiCBu7kWOtGR49oxPuTqV+3jcg+n9mHmEN/yv6dXIKzPTLUn8ps
UVRv+whbGdM3nG4t2hlzLBefn8gooBvUnsESyZHm7FXEJiI4h0+jBuCFIFTF4XIm41NPXXJzb259
W8PMf7NQC0r3ZLAFYlOghRyhSPVS/KZ4NbWPL2GNp8XZjleLQmmemVRV7WYZ4mFcOp75scpZQywT
DPqiO2L/BwZ6OCXbX0WPrEHlwdgrcZltPM/nuB+cYAo3lVAXthYnS09fAkoka6N7wCbtjGXpmFhk
POkVpiNGDKYMSB7/r0vVlKIQuJDsLINO4ofe3NEQUBbHCFr+ukbFaFooxU2QE93fL++AwOMBdFMs
Vf2FSaEym+yhslrxL4pZY/9Yj2SHZYgwxc8Bv/Lt1VoaQdVHh0LzvroqAjlQw7ey34K+XUbuXE2d
ntoXks58R+y1e9DQljmCvmIUXilTa2xh9pwdrv1q0ajf+mL2mP8zNS49ifU9IHHWx+ZIvh2FveKx
PwfVGQZw0dL+/H8vMKwsYAmyWVsRM/V/7cMeR6x+9d0b0Jl3zrYHeRftU4WxXIj/hY9s60QVWrVd
ph3Ynuw0V9/FmeuMQIvLm+pcVvDKFBfIF3VsSUD5iYs5jezOH3bgSocicT9shLSXH/wgq1At6/1z
IqOJCEsTI57U6Y2bDRv07MGYFFBnJ4EYXI7AYFugppp+vbSlc7lcsiC8FWcI7Nn7AmFHGU2Isoo4
h+VoUOCMpexqBTNfTQxcsq/0G2ORda2p91Y74HMhhzRv3lrZA57xxr81fWnFnBJofbb72UnSuiUO
JD3jR14dofII0c+0MtxawVAvY2xIg6A24jpjkah3XIDoV2tyBgml1WSO4kTFmSy/0nDWH4skaRWR
nN1dRgt8AcL1oSGi9mdPw01SGmuY6yJWqz7A9iLczsXmlMPp4xKgZmsCMXSVJGfqB+OnuGZKgqaX
oQB0aLRaK7nbj0itWNWwyJelM0jDu5tOgzAL0I1EuQYiFvAAiB7VnyPF53X03Lqkp8DCd92amU6G
W1tcwaWbHy729sNmt7qhqYLkeV18et+VZNZbY0TBCJgkg5ZCLzK7z8FYi0qB/j+M8vQEUQKu1zOs
l5a5hCQ+TOjUojyrAt8FnWJGgtqzrr5/5F92DcH+4e5QRYvwLDJW9+ZDi0aXNK44ufXCluGYGOu+
woXI3Bi3sX9Hq0vLbElYbSxVKjgE1bWa7xgcBxKHeOI1igR2Axr64iPSre4LPGalt9bIjHIBajKK
7iR3nP8SCS9blXCLsVbF57yQTW9T81QePnR0/jUwTFxSl1CZJi79U/mylvyYvclLip7T6dbddWUb
D5qd+vtlsy/LjJrymkRQfNOpqkzVLz8IUtEL5WSHU+c7AU+SjSYt0j4PhklKZ4j7YjWDGmGtOKiI
WoZb+p0UcneiwJHT8Hn0KOEjMj0Um5rnep8UFkik2OejBIU1C6Yf1PWNO/Ep/STeHw8oY7iWxtMA
OV+yu9NiHlio7Ruf5ImGLeo9nxtW2rt+ncdQsRIyH9ZmohtoojNd9Tppx9bj+JLMskiE2ajdGx7s
aARE7yKz8eRoHoa7gmsuCKksfazxDCRDsQqB43PkcnJb0wynJbySYApcxaZILQUAwY5w4/N16nSO
UyOwICKkQx4RxVejf6Fl/LtBrGbikv9OV/m+MQ2pQLm4fgSBvA9iJsQ2FoY95Dmrrd/sXM55Nonr
nsEeaqtyFgBFY6ThOmC8prSfGkiuKgdO6iTUotj7Ge3OvzRBzI7eXvCj744jhSOQh4jgk+scU+Jx
5P6C/uY8N9Zz5yliDHXP87xpubSDapNaKXciJKg+If21eeWNSRAInNZLyEinUm6p2TjU8Axs2yKZ
osCHKTy/smMzWtA/AVTlwyiRDL+NIM+sorG48WsYy6vauArXBqhc74eEabAN+Y4sT1utfrX5wfC+
+Eopuvvzr92iCarX9i5XFLQmzd1WfnbyHdl/gVtNiybZiuT2t0wBCgPCa/WJI9Wk860qdhuee2lL
7SSRaGLYiFhoOvMNV4WM7jqq2H6/kbehpcVTiZNSWz77cMuh8xDwU5g7dM7siYhTSR/YiePgHBS6
gmMGgDxPb1O0sD6shaC9nHSEVl37QEhuNK2jhRNg1660aX63Rd5Rq1G69epH5uGWNmyP82lIeqV5
Dn/e4rhWW5NYjIeXU+Nf2FbPYF+rBXByClPxJRvpYPDfbXJCa59Xasiamz2GXn/1SDwJhZNBiVXA
ItgvLbvXBXk4hwBUppdoVNnEgxTbaP6g4tbgYVfgFd3F1gjsOtQKdmx0GjbBUmLzxK46OjJjCHMw
n1Cb+K6HIEQqCyIS+qvMoUm+/FWJNyTRfxHBhcguR/1QWtQvQyo7aoUOMtYGExIOHFsLKDAnoKCA
h+77F4Wm+EBeDhHQF1pL2ezNKeb/C8+N+zQMkMdXz9dpgnGmM/FSLnqSq7QDuQhtaNmwTcAuVDqa
LMB0+UlzrPZtqQ14gfvItxDqJXryaSlAfYzBVj+/zCS+nvEg0YzB9pClRXSB7r2xMinb2JFVr7CJ
MU1tcNTbF+GH9kP17WzKGmLgatxxXaUCcrW1Z9aLQnY/c8YrGbxnNeVuZtgajly2BRTXD7OMD5Vx
f+TA/lHdPlyVgBJYMhuvjDmKAAjNXfOZQVh10MyLTwKujzGUcmv5hlyJXcSUl+1jTbJWmeU7UZ2Y
FfvkuhuVUJzbiO+KXwphhQsYuRGIZJzR5svrwn/x+BL2TSyl5AN05nGT5DonTGf+D6fhHwjmYB2+
AVCRKxR5vrZh0kSzfeu1IPbc9rgS17+QEGHK2aWhjjDsvQPVrwXR9J9F2/iEMHfN7iSx/uUHZBK+
Zm4G/YAasNmOJh3TXDYCma1GbNptsxXBB3u5BqG1s4cpEOgMI9sR5HXXbHkhS6ydnrf0iLkoL8Qy
j9Cto84sMt14uTWZfR+aj9BR9eAw5bgY0sP/9GGZiJNVSJxxJzC9t2BJebGvbW751bD9M1xGbpta
h3dkVjXP8M4LdpX4ZR/TNvGh5tS6TBffOTQ8meFh2tRTEg8n5yx6uCuaTnW32kgWABoDEfLf/HnN
esanKvdEVDIXKxJryORC6afS7IEyIfnkJImoR6LJLjHo7wI3llqIKa6Q3OKAOj0WJbq+FTPULRFd
Mzle1ByhP5ntBr0EyC+3sc6UDvoWVXYRNZQiTV7DMuW3kXBHUvtJ8piyL2LeMVolwAe9dYN+JbGP
xEVNf3W51WqrX5ahPqv7UqnzT9ZekiFN1Dg5T799dUITRmhZsPf5dPu95pUev1shA84jIM8pfN6A
7+YILm6Sju5/zxibuRBZ/c90FCkUE3IVvweG3aHDiymqF1Azw0Zd6/19ZsYV2O3R5w/QMGZe8eHP
89JurD9AcIk/oZUo6P64t3l9YK01pk70LwbVhjBeEGQJl1p2KiRliW48vF5mIabsFJuGJCh7KD5P
O52CumcgV7mDp/hnKGBBjWSDZQCs2YAyoLVBdolXtU9uyTCaJDXXI6T2WEAoTwD1+wR5ehOpoWkc
VK6qhvbA9u0HVDmhI9M99Zmtg0Ksylc5LPnJt3FVkSERo0Ecuunu1mhwekbjqAib0n9sH+w8sbPY
eL/lVDM1B25gjUL14R012gB05LchyaBGs54B53ubRn8kcEdx0b/HIM8zy6sLz9dmxYSLsusIRie/
7FOcbkgIdS/NtmyliUhnubMu75MH4+B+OZir71JajLxVaiPdLOO14u5MXvk6kp8Tk4GYCjJBONYZ
fb6OfG17z20V9D9sRP9AfU6qjXremSZKceFfGv9Ht5guKny6CuT9oaDMwp0ms0z8GUPP27SnmG2Q
/4ry7nEYyw5uq7rPtqo1HOtRgtcARtMH+9OciW1Ab2XHvMDPyv/RVVLwL8YtdRRxmcH/NPkUVOI7
5Ija3CnoWjTKlDseiqWbbsgszgewjm7aFU1p0Bgr4tdjaVqwskXR5b0RQsFNO5Jq/KX7GUEmD6vb
6oQXBwvw7DCQCA2g6Gb59UPidWJkJ4rDisDoRz3+zkqpneb3Y9XnKD0KCQc3BSGslp6JAcV7+VXO
riWqg4K93hofooF0mpohzNlYLNBhrZseK4iPtQ15dF4AHnJ+y340qa+9AgT0zHUrWrfcNAVNxI6e
SZtrZVlg/aOPnoj5W8WsW2b9Dbts+Ty6PRnadvHZiZPwRcu47ObtkALGy9fVEWnwPjWpvL9L8Twp
pYvSxZF8QC1ETbD6IbRCojAsO9imkVwTHRc2bJZNmAYggubNNzh+JJGMK+Hx4I8Z/BIcefvgCrMO
TZS7PjODiklozyX5o5lhyG2cTrh3IVRb7HySgp2dTY10TB7/TdPF1e9fz8IHSdXlFcNNa/VboHLA
4ckNlEod1R/yvEaA+Bjmns4Q06+V9rgXNjsTfp9Lf60puKlJbw8ePKMsgm4Jhnrnr3X3vdX92WZc
TB0Jt0TI6WmmPdYjlgHUiiCbsOYlkVT03JMBi1dorbg5+5j1UhrwfY2gdoYO84ij8j0kvGO4rWG0
ov+3cMKK+bdre4ay7Nij63KlLoqvBSJ+vzf95jQjnaXUHszW+4EgLNgQqUlpJfhNnvpNmBy+1bXJ
i2L2W+gpBk7AoaAacEEDH2juOxw+hXcK6G0OHmhf+LByfPpW0devMoeTYuBeeRPMLH6GmPPkp34w
3/t5LcbCG22njLqsiK2qUFhkj0G136t8rdJGOuxFmSdTz+JhPkjesjNPtvPMGjtxt4x10rO32ZBY
WHac7j4p2ycnaNcoYwFQ1BpB14MlCwjuFwAKRSShgdJ9/rereITZSl1imGhW+sQFHXJZwpcHdTVB
WMdwsGCf5++64qEbH7KM9KPH5YUvhU+KOSwMQ5fwWeiRr8XHJtJyC7b7kKx1qyd546gWfpfm2G0R
i/TXuTqaJFZ1eG21Y1PD9O6gmL0WbG8H0UvQLwYIHm+4on0nqei22QbhQsE14U6O93vObvyOxxe1
JPavsg01sSCEINV9B7+qBXNtFoUaWp0m8eQK98YkJPDT9rZ0Xex2L/cw6k3zYGsyNmY8onchFNr3
PfsMhGav10rtGtvGEaIOfLQaimryiIpsUIo+qr747wlv2gonSJpL5RyZ0p8TD6VnN7Gl6lkmKa9m
EuujAu64VmQM48vtp1UZTc0+q7MWNWMtbIOHjJBoTJXSjRd0LQRNj3Fqnzt4iNjdmh9Y+nkOterG
tLqS2LgvZgbYfQLBwa1/7gRbtUMFoMPcouOZuwLETuDCHpmb7XBowvVyI/n7kTLwbJgFtNOieoKx
lsnjCLh0FklIqB2GVafxjqG4/EnZv5yRlu6A9vcBPlbSTlZeNJaOkk6/EJdK1dyd9yZ/b7ewkV8y
mh9I6RijX1GDUs47nmgQjWH0aK0TY2+yyzYjHrRuvImU+2+JkMMt0BnmYwlyv3BGM6lm1ykFAkNG
SvPtVNF/L2iZrFI3i7G7J47hFX7I/6JpYdYGXDIm2t5xRO+uOUlBRNWz4reEeD7aPWiCFmLsU2G4
fxtAIhmcIzQROgpEANwOV5SSdBBWB3Gdtf5yzWFsNnpC9ckoM8+/J/nsmlfMPkiL6MMfJaO8q14G
F61yJwE7QYxD5KCDu2d0NdgjHva2MUHX9p/Gc0GKmeghwLm9FYlsawzVOJiqiJzSn8RD8ElGQe7k
DCf/y/8rtLDZLBlb6irIjfcIu3a20XRUJWHgxEFF9AT4LcamQ5m6+RioBwGeu4qM/qPMVm7/BJnW
S8vnZ0eaRbxSuXEdJOl54AGZz6+9ep8M5L5sWV98oKL0hAFsPetovU1NzBNhLdyC//U/+8OBN3bi
TmAFp8H9xzhFIuYWg6xjjwPTjNB9M0vP/cvGdISy6mnaeY5mKeYyxmWpZcJydat2+WtFP975wV9/
QaKlJWYsQ/873cfraWOXCcgiue/aioQ4Der46WY8JDw3AsgwL/tMd7C+U0roK3whs7ZrXIcVsSHd
+2R6hOafi+wL9b534EzxCknKh6PYQ8jFqdjYRk5KYyyPkCQicXQetGQlPrARuSaIrp+2bmvSW0P6
lvO+XVDSuVakYdaH8V8RRzdvgb8awaxCBHKqFnnGYTqRlOszdFz4zaOoHjEiqc1IuzMnNjZEM3/0
MRe6lGRL6lMiiFeJqysAGVxRiCXSxr6rwBkCZyDlS1xW8ipAdzcLPQMvNrJ28H4SWS6LlekQMss8
xeWfVzQy90XL2Op8SQjPv4gxAKYL96wLrE0Z4nRaauxFapauw8fLLtzmlJ4/G6WEqryXwfwvNKVw
KLAOMja/hbrZxI4CAzISYggel5C0MuniHv0Y9JYCOcor7OgfllRaPykYvGC98TQV9DNcbi2NvSY5
F0bH0uvbhe5Kniptz6zTS9p3YC17/C6QKTWvR79J+xfhAKUFR9g9P4pvmMPBVYOJNo6fa0Gn4WUg
0czba2RH6O3MmCmIxePokPZGcYvT82TOiJwrtctjPmlTH/wpSVJUJVMJZZ2TvOdIlTWRJacsMxG3
cXAHmMc1ZbKHUvYlKs3CGAUO7a+KX4YOlLZFh40Da1RPg1+s1yBRe+yKORsquyVRpORKNxmYVPfQ
0ezZo07jXICYoQiWYvrSq+CV3npnShrqP4lm9uo3KZ+mv2kmfNadurmYkEC5s0iQ8RlEqoE29JVk
HO9kc6MXzm8Oz2G7e6zNkGvfNadztCDywv6/1mafH3ZfbzPdLVF5YIfxjHHYpxRS09LRO66A5lQI
JceQMQURvVNT9LD4C/4B9XqfR09LbgVvNZO8UNZ7HQwrLDugIOS9LTFeYSs9nJt3jDZvEOm3EOBC
QD6ikIkVo09yGq2ZUEaNPyUBf3CQkBIV76uw9Oy6tyQp70hRIicB7qNp7nXBMJy2ZJFjm4Uh/RwD
MjtIpADeG3hgXHe9PKS5ODTLxjOmrv+TPN2BvQmbPboevySN5OWmVZYIe++kRluWgzbBp1p0qjDM
gYuZtkoM4Dbor4ThOaoZr4S3KhgPj52Jea5Asyo88z1A58OZS8v0/Ab+AvJ8xePixV3j9tQRwTDc
KGtMgmG0N2TXYtVZt6OGzuP3nB1JKG3nYYao8sPOE+/FViOr5o2dtWYQ3HhtUeUZ4S5GO7vcF8vr
26xedk+nkIXQ6LsK4yEVY/HtFE934HDfKQvXf0JA4eWCHZNVawv9MnTqteltJovaaGXhcM/dtjyi
9SjgbLG6yKSZUx35Ntt6sX+3egsrrKz60nQcmryTItd92OW76ndIhgLc963ZjFylqpdICy0XdSdE
QD03N90iB5c2l/GqK6ZCfWRlVkdBvt7j8mNRyU3XyXuBvvluVGvbxlTCtcpV9B0snKxMboo893Rc
4hF+0qwRQ+zKUqFloD/gmWUXC/F4qjWmqqdMaD/Rhuidt1A7O8AJUjdknQ2poCKn87b83L6JLT64
vSLG5ZTcoYj/F0H2qe4iINdI6kYhKtT+ONtk2RiVE3qdChshfPPA8WIVOEE8BaiX2VNr8GWvX+AB
oec8/SgH2Rosbx3ovSVwmGXoVvK24Af3a/zqGhKQmre4Ol5Q7SZBhW3x3kxvuhfuyBRrAgyMXnn8
1PvGhImktj503YtiiEgDUcLLVrOCH69Q53gEuM4Zej7SWyvWaCQHc5NFR/0yWJWDgk2098gpsd/z
eWRYAYnJXGheW2chlVWKvYdTOP7J6Ty41c/PmaDFlZjaEwtUPIXStp+jBC72Qs5smKQHLii4WMYH
DzlMq3t8TAyQteQwykETyUACIGVEH0I9rmk0o1P7mr9AchrpY+fGvW3F6QoxQ7KqXuahESXrPWe2
DsNSZgOhJMC00ts6zvJzWBmtAJMzbvKgx7cpMmZBhJAuw6KB9dPLJvY1eUP6OvUcA9K3IR+I38ZZ
I3LLEqsSL3c+KE/BvJY71FWlJFEAexuf6/67N2Vn0kyTevi5BLdi0SOeQSnNTApFUZxw+UdMsop8
ovKBtc6MqbIZWuOvOTRiFM1yuwVzBQkJKwaf2IDHYBUb0jQdkQ32L4c2JIBfxEpGmc1XxnykM1zY
bE00xk/M4HUYTrOUlpOhmH9874aVGVvLMZts/kylKORjznHmpc9FsWLq12GSuintAAQaLx3STf/f
dBgvhJo5N3g3B5oNwIhN0ZNm4mBvEGDWlJ9G9XfLIouCD5n7xPC6GgOMlkMTZ6uC8suxKoqS3Aaj
eOWRCh/MKU08QS0o/sXAFrpEvM5PH/9srx/6MCyRq33VK8I8kqewlk9iWXXH5u8A3oovvKECQnW5
Cbo7/Zt5hHCdS/GT332oDZ32hcIePBZV+inkv6e8h/7V+wWSIE/HgnED7EirdYCw/K4vxBoF02Fe
ITqAWd/cK4Zoek0ZCDl0wKD/9qrsfbnr421+wsw5DCbLku4SDT5bgeWg4eTb5bVkbd5vwlEbBq7C
S27sM1z66maadLqflpV6cAvvh3i56y8f/1rgWTtcT97HxC3Sun+ZebhjV7pCWxidoVdkEJxglHuO
3/ZzY7yy7izb7rOODE8HYXK8qQW6+tOnLDLp53Ne50cDSqQ+SfXSvBXf1vfyJ9BvXQs2mDgASZLc
q+a50WOgV2UyBj+G0oMD6Q2dYO6x4IIjVX1a8FSdB41GhP0ogka7jVu/yZ6M1gY/2VBfne3Uj/nl
vFhDZL9cYKurw3uX9n75fJAqQk8AdUpWPN/o+drL9OwLXbAZVJxtOpVNTOTvYEVLCvVvOVo1XLui
W+72uDobVjNV0iG/Dbar/k3V9EJxpOFgv+oo3p6xAWfnn7ghOf9+lVEavd1gpP20/0ed8teMaqsy
QZsG1AngqJDd6XZXe//TiAgCr/J/bXePj+xJ9CjMJY+ncz4fOY3A9ykBerjac5gAdFRS+8loTAwo
NEtt23uwo/uPgOO6ULFzS8E9ENr/Vctd9M3xlgXLWyG4Muh6lPNbcvKZEvTUeOeJUv7tkZ4sksBD
ilvE7V0SyzOA66epObt3OArFOwptCOSrQOP2MIbimVS4tt5mOpQisZaoKHv1Ljier0zqZNF2l7qS
iZJHnMCArvxcxzc/TcAuhTNZj/ga0/d9jqBU3W0kuwoX0kccus+r1SfrqIP4MkHIbL4sjxWc4nBP
vPkz2D4r2hozyQgc3O0EF9kFUOlDdUbvTSkz6+WGOfToX5FCE8YcDlRuqj4OviL7adLOtQtMf8D8
Y47v5wxw5Mrq/RiqlbB21SRBVQrEHvkOjW78NMk2Krsk5O12z55wccGTSbfLk4dpR2sbisyTaprs
uSDMULMPdKiyJ8CuOTSyqNS3fTcMO3ZPI0r4nsF31222IbURN2QZZrIIfdgo6k5SFDFMHrmTIuRV
BaCJWtSCDI8E9dzkP/p56bTfpEpgYJUlxg1PBExDdXd8yBzoWtTHbYxFf0KMfqilolpTXtQ3kfdg
Te/Km31bVXX031LwUeLMhmo04dIDOfPb4XeYLBG/5plLef/qHtjtD7jK5FEx5vKYx8eSLJokpWJA
WWDWbA5O1GZ+Yye52EUKceA51cPVVayWbrPrhaTHG9mca3P281+l1qan2OeehwxAzphPQU0Z22k5
lIePzlsOGqOyGqc3a9pp1ccIE0cBYxmWorVAOTi8rdoodjHNuAKLMaGPPVuwxLAwnknq66DbaXp5
cXqB9s6zID+lfgERZD2IpUowQYXECxl4WRiDIvIqdo1goOUL92ODAuNmByEOwjOEKEVPkA5UeTi7
wck93UKoWvRTjanlPpImFSUWSCZcrIrtaiV7+L34VR/iX2NPGXXAJXyImfy1WgdCC6JaNSCh4bYH
z52zF76dL01ZH1W4PKKzA8YJtmXlRbxUEQhzXajGiUevQ7pn3n222X/wKNKMWn1x4vptyuoi1pr7
Yr+s6iru9bY08h1N6sqchpVok0ix2SVt/sYq6i4UBdgvOfGM830XIYzr/dFCOCHQ407PCMjYZn5e
GZHt4Ve0y8QyDPrdYaMN28u4nSkLbqV+MzqVdx/z98W5x45PmsaYfVDfzQdAT1lhs1CFmpfRJHOd
PBR+PRIWHmZENUtvuaoqnQ+1JqnysNSr4jHwjxyq3zMbuv19vL2Oyaq2detbQF7xFYi9EpaL6jM1
71F5DzOrxannrn1q1yH3N966X36rdWNXdk0WK48GOcNUikRgjAg6HWz3hAtuK81WEsBTOU6PXBIh
MIYUB0HSoGfsyD7V9YHxJzHeTqDySsiMcPZhXHYfZ46NNOo07MEx+6RvDYpf9gKCV6wpRoSJ7Xkc
ojsIbKXU/8fhLqoIoOGnAo+gE9fKYFvg4vCXIPSxn7yYUTbTLTm9QWtUS2bNUfPGrl2ebZOZgSWD
tjUzV+es4xVBVxz3rUAcwbBO+9sL+dnMuwqyDeU3cNxj5R2R1i/88v4KXjtAIBiwo6gcjlpyMIiJ
9wXmrjXBGdcAVw+rtgKm06WRbArBmEg8Z1p6siZDR0UsfM07ufwsPbOfR7lt9rTf62WZFKA1fhI4
0CAgVGm46ocO1VQ4PHTly4js64p3MvWKpqsjnmszkS78xWoSYCc0HBC4pOnfrK/0rnvya4tUht9g
0DynujejgJv7lGFWg5zw5mVioQpT2dghUh8kxEb38bu0snkk4pPZ5atNC7xLq06zI5SAhcZUOQLB
YbLE3CqbPouX95sg8a+dVarUlPQVn94m2Eh9vUrp8xo1EjWDAl4/s1UQN9r1bn8nBeyaZbPPhZzH
iA9U5FSHrKcVLouKy7ZlDTLNCmlD3fbYjCC+wxYdhCU5XGznyMTWCPX3p+5F/IaG8FftXS1PEiM8
t+3R+njRm+j+bo2zwmxF04SF9H6yA5Jol0piyqvMR3D2aT/U9MLevi4RZ3EWotbJJKWC8bTFkbb8
4FkZDrX58a4NMiqM7cTu2ayACcDbmqeywW6KdH70CmdJxS2sauL/bN2r5pEsYlVlV/JPLNdl8yao
ne7Rd0kN9cchssPCLOX6holg6E6+4QFm40N+IQzkpNje/n1ebj5qdNhwe25O+SqQWqO6ZnHB3Bgq
QRtXDAuFr+bC8n/ah4EhkvSkLId/jJhpU0tH6CVb8ecc7JqiwDm1bkI6232DXz+7yWQl8VjOjtAt
Eg/HgUoxZQyz+7yT7hBuA5CR1wPxLpxCLC/kzYl0mzVl/iUvYYoMs/CLdDYdmi1FWO9KBFcHigFk
s9IP8obcp8zLM+iIcnBoioPF4DudNO3pReUWNBTPfHKiKX67DDhXTg8Wr/XVIkU7MXMcxdeY+x0K
XgpmqGUmIVlbM3KfkcIOG0b54ES0K+Gk8jSRtqV3ozNOu1sUmJfhS9BCla1iR3DDnJsxs+NLLpA0
ZZd+uH+cXkv5iId8dTEroMqEfZoyamkxhi1BPkuh5O9WvZppqBCzyarlpVAEdkJH6kP4ocuK84oY
xM4lAktkbY5czoRWu/gLBB1f4fUQtMPnoIZRaFEdU0PvVCxBGdak2Na0vfKJeUd7z7Plmc00d/n9
35hQ8lvZh0LAN/nTeN3eJGYhSDwya6Y9ny0w+dxLzKHgaAqYcjkV3WlqazEd+RrXoguvFOZO8+eI
X5wHZoqwUIbNURe8FQCBmg+MsLxbJfQ7mp8BHxQv1XNzhYL5QNLxPoiU78aWnE8mTgfK21uTqLuF
5Ke48QkldM0WPPwktbKYTpSPmKibxfdQNAtr43OXfg3DL0V+gTWWTcQIOqj/2W7A8LlxWOqu77vO
wG732oJCUlpH8rnkei6C9daOiYQF6L6atD/XIZ/aM9X5PBr54xe17n02iMMWGmDP0XiBSfGDwmhK
ekC/XEFkXIA0IMKDGaR8i8XeJxLVgB9O+XlKd49mXmMrT1OgYaxiCGsJbETmm9pR9A0HTm/VzOKs
7qD8vJbw3Fntprn/w5Wa7bTsD1Gh41x2lF84cSdkuqzuijCY9q6qXKcbfp7zNntDUI6Cmw1nBl/Q
cqvsUiVOUo+OQSsypJk6BttV/3KRLZChQnr2+jFf5GMFoQwzF42JJkqJHyd0qPwoUc60+rin3Q91
LDBssjq69A02NL4EXoP7Q2ZKznocarPhqhFY+pwWxKeRCuu6CwLc6aftOWy40fZB+rodZ3xM9Pyt
lA0QQZA2aJO1paj9Mx0K5mBPLf6Lpyt7MDoOnD4NNBSWItGk7dMi+NBrFkLiFNiZ0NUefwbKC8xk
qP0shHqFBpL9YTI7xogXxNaTTB+dND2ks5piCWwc40Z7WwqTssE0TnKLjQyCmi/rldOjSGMwUJHC
rJixym+w8Rrnx2zmdN73ZNZPjpS9bKbT2ERyt+T5zXnvLC2a5HeAuwFtF8vvAzlrPAqmMfM3v4jk
dMwdqYr3Y69B3RzXIVQ8GMyT4TNdCwek2Pq9RwkqMyfVyC9aNFro/EfMs3YBxvoq0asrXz+S4EGE
DhNoMF/ZWHFluaCE3RrF61Z2bnT8uovurAw3fHmyN6ocCWlUx2DOo6ehzpVIj64CtQtiHCb2RD3W
jlSA0iWbTftvj1iYtp4FPQsSd+FJuiN+Xz1gj9Kv9MqAJhqL8SBmGeHsXlxz/CdjWXMzfvZP1A77
z1GefI41uqN09AO00/jaDrGZNHpKhKZ5o9DZbulo1U2qOAo/P6uRMqnbyEMkOK0UX0yWMBZLE9XR
G6JrYi3y7I//uNz10KuL8BJ1QGy9wFihn73/4lK7Ch4ELhPczguUsIDx6m2B5LUWyqHJPpvqaaf7
KPmj8h3rqNdWhO8/Wt7mUvOLgZy5jlkffYNw8H6JGK9M5o7pLUgtaYsojS4898uFwf1S5jYT1pP9
azNkpNBcOCZekBf75/HOkg/JZ7ewus2Db3Sxa3KYypvkHW2mR+y4MKp4LRfFsULwXoBbUgk2mrw4
dOTT27d60BA7zd0muZslazUvfcw9LH0uFnahCYNKtZdg2HrQdRIwdnFUSsfL0lUAvHDl+Nk+ax5s
+0PfYYxXiv+gmJ22h9WX+gQZUA9s9wiPqn7ppS7krSx5EHjZRQHCeRK//aq5Xh6OzV00UfNcDW6W
Kw/fMP+gM2TB+KtBH3S4pmL+O1f0oXRkKnifxQmvezYGZmWlV4ddqBu6r97kcvGY8wGHZAH+cGsr
2cV5x1A9iS6BjlvKUCZB3xjRF6cXHKNU4k977uC96Cue/FeHG9oDeCUO1PDtSFSuHlOHSvxhVaU/
4OOZsoj+QOm93R+wa5+Ylb6yznqK3RJJyZxB5ZysC+oHfSd+/mpw8WMkOoep5WcWFXYbpeYTxI2Y
WiPmEsXiPHfGJEHlnmX6G2yNI5cJSs7wV1KjjoWPqXnwSdpmvdYj3tgIoG+tIBZz9fKbJJiT6wDn
pctojebpWnxsUzcsRhjPXLIOEKRoOdbMWB3xeHSXgUNvki2GHSjONbwf5QALRxoNaAluV+e4pqz1
ESzv04Tm1wUjS5LRoRjURMigHIxYCAa0YXxxX4yAH1i2fMpJ6UGbteX1b3lv5pfYTW3T0LO6cuLS
3y63VAFr14RD8xfS4oTLKSDBifoziw90Nyh9kiqUhVtIoJwkRCyPXGokl+4fsspJVYMAUpEsaC1H
JCb1MvBBAvyHiCoORYlu3GZnKrtD4Xd9JskYtQBUYYybTwwSfmXi5ULgTen4k6Ov/g6QExuFCVxq
XjJxYVq5rTslUe6Zi8QudR9Gv/6aYBkh09ijg1ITqRp5zdwzWx3GdY/ZR83y2zFjRIkavynephEX
mSG6cFwE6/fs9DI7ZoZas8bILKbUb+jktSymsjH4wVruaJHwS5szR8Ub+uLR4y51nOtzB663SdWI
Yy+dIHl8Z474Xea6aoKmdwH4VFGczCxWMgbOkHCaAZ/JhdlMHJY2O0icwg0hIor6QLp0BNb1DTh5
hSI9F+VNBuGsd5D8MqbGNx2w5oKTAGB8j14/AjsRv6tKdSnN9FJJ1dW+ZTjvuQ8pUgGUjC31q00J
LInEdHnT2ryPfMdKELFstxvdCplgD1T3QZrx2CBG5JKvlLEK17X9VmyeLpw9LJSVacZO61BLUgSI
kc4HXAMAmliWkTlwZifXilbiKSZM3uWz4sRPuE6BQodwp7aMjbXrz7wKcV98f/fgnbnxkH478vq4
YTr+PZ0AJIPQFKtOh61xhm7Wi6nI0QNo+/vxw9bQ3gdbtsC4sUKvN+2rc3U1J7aUrdqhUHSL+0Dv
J1kiZYHfHXP0oZTkDY2LcyFRGVkqQr5YvFSt6Ydxk5COIyYpGvWJWVk+bdkm8Zx9Y3eNftVca9g7
KmvZOs71Z4PEd9fFClBcmHKv9rwgpImyVFpxE7DD3I626Te/5w1y/bqCm6Q7+v0Y2zNTIV+VBdZS
5ra+fuxt4OYV/t7C59gMPaLqUdu0NrNRonv3leN/4LNcZDhZL1asUsOojDi9nyUHJEN1yDbjq06L
a8Tm5vzsECC4M9jAjJXTs+9SrkQeiS0I6/9Lx5Tks3gv0WZCS4B+YXAyn4sstRMWakRR1N1Mwa+D
z2WaWreugF2cmBCLaLmENXE02AnVfd+VnElLBbJ1O/BQx8/uW7dhXAu+FACajS/v+DVzwua1mqBF
vsjogemOtPmuxJ006ttUDZ95VSKnTLMhKxFGXFoJ0+mNvFSgFvQGfICs5wzbBQhOlVhH09Tltsk/
QAhgziYvpY/tCOwk3XZABgeLG0jPp8JHiuWAtvDDp9YdM3Bof2MPW/M5kPQ0ojoANZ+eeFXO+Ccj
Hqn2Gvc3QnLPR/GONp926fCHNd52JVeYAPx+uRz7tbxbqUKoMxMPPB55RF0CFMcTLK51HQKX8HGf
SwNH1FXnHX0fJkDY5+XpH0SjxlxBWLUH3+BQuBJTGlsS1SECm8cdxuaJ3KEkg2JMMLYm+SjPCwR9
WPi5a5MkLgr0qf8fA0hz4/jUG/p2Ol6Q7keQYfEfzDEvAyUchRaCqYM/yLygcXhPy+xldPNH24Wv
2gHMNKUT9I3nci6f1BROX+gIDLnCvfbWMLgmNnMEpLJllZTv2sSLwuKo4hK5nWxZWo+t+Wx+yovt
ElJPrgXLTuklgJh3zDYPxg/iM+4q1HTvrw8GkpFKAt6gJBcu+OXhKfUy3i3KbGkhtPG+Ma3u9Pth
hJlxfFhhHVNi/nEaV1cBEl6OLTNSYR1p4IMxxzEmDPPkZ7FqzBqOb/S1FYWsXS5a045OOk7rjA1y
JQzN9iniPFLT0gnyqZe8xdN4BH4tPCmbeDpKe+cr2NPGrHIeU3DouEAqodY2IjhVCrPVr+byPSw9
d4vtHDl7VJOfZp1LvKR9qQyPCddEG5TXNcCCzhZ5LWpNnQgXtABvtZs1kreQeHsYbm2YNSZVrg3I
bGhLqmK4WMiF61Ju6eNDJQQX7d9SflsMugkqyINRxxMVgcOBJVjw15gjE/6oYMgpLt+AT9xBmfzO
k1mOl9c8SnCSxSZRAGS2/ItHtFBea59coNhD7rkGjXeT5/w59KFYdg6hOUw1CQcxfAv4vs+INfd0
mEG+9fsegAFDFFWgzaGuEtmLowAt6VQdV+kKYdsY4v7upyOsqlxQGZcl73FfnrBGJLVHdjF1mKC5
kBV0go0/kjBqzsaTI18bfFV77AXRxG/4poReMj4qoFTZ+o03gXf9Z6S/KlwGa5rF+G5Wth/aeQbC
GDTZ7od03ebYxM+1fqYnOSPoArkijNCE90qM+x++Y4vA9E6vZhRK7RFTFtXElznxeciylQ3j6TfI
LHgiCgz5jQ1fCvt45BD3GL4tHMaDLcSHxKLDP0U6Ec7B45KTNs0UegfYxHpxRRDlPIxFJn5O+7pa
k6n+tZEMAX4MvtgqZMlpvTWyy3/WEfdM/0A5nQ96Fxsj59cKDoxFeb4aKDoE/VquoYMWokwWvWpa
ejHBSBWM9WGwkB6vLAm8gE/2KlNEFmtY44Ere+/TtrFn4+0DIMjpQn5yVSq8yiISox/+01m7eOrG
bQ6Hli+vXk+heQDInjJVgHfL1WsXwG9GgiCA45yXaeTv4XI2eIQEYPXByq9cxlogP/RYmNWUOytE
4kHtCMW02Z3ECq9Jly/hItSb+4tdzxhOkbHDj6PXx8qsoqlBPvf//UclfPoDP7Au/ufkU3xVZODA
4FLfsEaParEQyJWqNfu6QcMRdxJurGc/WPud/m2+CK4HT0KsUxQFMk4rwnW7e5JE7j0EzlWptCg/
Sq23tLUvbe5igK1vYzftQ7mQ9q/Lo36RuwUCj4XVb1uBuTCLja6Awd2fTt+Xo6hz0CUV9DBHSbiR
SoS14Li8uJUhdYNcHAoVr0spd1/FvwcAKu7R2T8/RSQAjLRSfOwksYFP5Dfi4Jyq5cKyZlJRMX2z
m9NCtWBxsuree5IQKaALZNjf/FPugzV+UDvsGA8++U9sn8TydwlhwoT5MwdfJD0mE4IdkNzhQLDI
kV/osCeV4VsrdobZVFxhokbTeJdY7FAdCX2Py6qRD1eP9Qmu/Y/4qKkLkn/LTSHY664+fBB46xbK
pxLwetuQUg+mq7D1NIRbMQ5oDEonUlHAWMz8LrwaBlTtaHCMRquz6VY7gIQMxHbB+QwcjRlxu9mu
MgWEz3wNiKyB78IRP33Ib4qZJcV8OuSml6V3fz+bcF5VW6A7z1RN+McvxdEFnnoWzFClxgXICXnr
7B5D7uShxyo3m6w4J7ftNxlJA2OI0QtvFA9nV8IrZw0DLbqw7EFjGaQtjcwWWIqXxX0Lk/ZkEp1l
uUotWMv7giXFu1KDd2b5LTRAHV5DYZZSI0+jkIbaR+Gp2d/83a2wr83U7xhfqLhXL1XX6Cy9nG6u
LIlgXiPB+q0CtnTcFvcRmqPDz3ZncscUK822jB70Z1JnzeRAsCylh9So31NuxdvOyfdIirc11RhY
USbU+J5kHq6Bxoyi1kXG1CyGStbfzmhpTK+5ayhJzainbhzaNcCXMV9hThFWzqARsPcFaI9cwqvn
0FYn9j/e3OMyrcCDeS9YbuDTGbrybRswfnR0+MQnTfgh2QBDbUOwF54ShLrWV8MEqN5WUJcNyOuv
FByA1oTnmO7WyMYLZjAaA6aBXPoltjnaz+SDh38yGhafq0mT7yzUeQyDp5JVaf/0Zb+4XTf/Zfgp
PSg8QzDZTkU1hbmwCWOdMpm52us3LwWNJhJQHxxM8BBiAWBHPrEBz8wVYXONqY0p48pCvy/RQNvY
L2UqBAvhHWIlTBWZ2kf3qN6pcdHkKDR6YBAYU1mGQ+822uOPSLKSzUFsQ+hkf+kYXm0qI4xwjRhO
KSMocBkoIPnw6u5ZYoyH+BGFSAmwge6M0Usgz2ehCFc6SJe3+MIEUiDOPDF1Zr4TdYECc9d7jlta
J9SXGqJNyY61RLYQpzS9lphxny/j2e00Zqld7m/MKTNHUkzM+iX7ILGMvM2pUmGsqVC+RvglcjJL
Kby3pSN7n5dt0JG4lRTUaiKnrkFOvShRe9z7SBrHudWDR8Mw9JBjMcIhETT6u5SvKFzrrOg7jxNQ
bwdX7rsDEb6DwQ7EWNBeltCboYecOF7evwoXkWdHJ/dTZT7AaL77JHxjdMj4zRFJsyRyiteYhwYN
PMR8mYLvATFaxu/P4so3WRN+mP3by+1QXRMGcP7Lv7neIW8WyjqPo5BUPRe5oEQLMvS7Hp696dpL
YmNL267UdD7GiHnlg9E4kNNAzg4VsEUUoAW0Gm2I+d/L8xha6/3LQghsVeB3SCSVMyXX520bw/Jh
LybZsod0U4b5Rdu0+MMlCBl8SklYIEn76H+wNK/ZPVsmLurfg4eYFifrLG+tqDpoxVb3jHtb1rPS
xxDMra5PFYAaqH4YWV5GU4UCBYqjcL4NiiynQDNmGpak1p64qmNgWS0xQdME0LllsEIH+Q2+aDQp
/m6LoRbNtc+WWXhzF94Rx8sp2Id0zusY3bXN1YnonEtlE3SElog3vKOo4yzh0Fl0CZHbzSn01dfJ
B0uePBsSC2P20iL0DrudXMXW2sSZCfJzjd9FZ8euoJGaeulgf2yVSe3fWHRl3d/jt3R5QwfYo1dP
hFcr6hluWVkbFas0dbr9cewv3l4A0fA+IM2mwDmQ9gccuT1nuLB/hHdESo9O+yB/Iwl+VdDhbsAc
8JNrLBE7YB20+4LiB5KqIyWDfcjxoD5n2tMitm7mnV4JDDIp8f5KGaDzpfWLddL2/Qj3aIBXf9Tf
JmIGERKkwWE5Xc4m66olkyFcfnKWqVtK6lOfz7ZKLphWiUj6MP7dUE6VCYvEfl3MiFHFe/P2G4XU
ThM6ydV2eV4u+fXv0KUbwvZUEurSNo8cdhofbhyUZi7ep3L0hbW7/U2mg+/Ll1lMUY9kDNH3h01F
/mYUAfcD6zn5dSok+ZUrvv08Vgxus0jbmp2BKNpBhxR3LRk7M39lc+jzEXBc8QeHL3JMRyRsSDTE
9bGRUvoIJasvySTpjyEzg0TUaE5ZTf6T2X2qdMlReAw/x3B0CpfKcHNVLcda/mB9imBmxmGLxwYE
5RRZ6eWVBKMowr4xcXmW4XB2x7u07NKHGNFq7JlxuWgK/azl5Z67rHqkY95jn+roM5DVxvIPqHlI
AuxBEJ69RJnaQFbC9T4VslQQcTB3/TqU2oKYhCl+X5/pQ5E/ca9Ysqlzu/SU+aP3ZwotXAc0PF3O
5MGeztS/5AV1r+eGrO8yAMBE97vQU0LqakQLXZubzxlWgCHJIqWqN613grQZcgRNdtWbILXkXEXc
iJyqgnju6ncAp8qfKf85/h1Mh8OPpH1yKbBDvtwg+gj0m+tSwMhLS+z2v4u9ESzNFC6KCOI1JW6u
7I7WMEBLWJlepsdqm7tw7YsjpxpAz4zUW6HHRxXHGa7InVgH/VvoN+waKVk33S4KdTfqAlA7yN38
mIVSP6FjekWQVqxcNJ0pRJBStID6NUphA09ob5+Gcd2OTAY6YkgWBKdCmD3k9rsRKHXR6YfmwOIs
TOSEZluwW48ZqO9TxoTAMMPE74JYbFAi/koZXfxiKcTOiaWWUYSBpj57k5TIo06VrCocZP7Djgea
IoURC+2HICd0UrLwbBYO6MIMA19o+AfCtX5a7Ogo9X3aOfYsZVkd/Utl3yXy241zAkfMS7Pkz0xW
5KwB7Hu8gaTCM2c7lWRyOdnsi4U5H5/tuOuGQXHKQy32WGZKIp4DNPfGKrxeMShLBeEjLicGF14f
/uHktgxfg4v7lDibuAcxa84ty7U3keQoFduEtgXr+NIv9cd61R4BEvQ465jC7Oxplrx30iwAN6k9
ZBXy2uIy5tu8YNqvgV7/Z8n1mHecGWEdStx6fMD4vBSkdYY9ZJ6CT96csKqUIHOw9sr92KycHS/k
Jc9W7TInMJvXF2hNVk0QAyz9CX/rZmu2TIMraRO/X7vmO5olakuQs+7JuYCUSWq3P5Q5/Fg/I22G
w7BXMf+/5hH/NDGKWLR8SlbOLBUQljgJ6Ck3Tgzvf4YZXeNpeM6TXMc7dTb7JqVHPbP6B+xZlIU3
2xfWSKlHHILdCqwl544CpLAIE9oNd0YT4lZwmX3cdwVWB+oTEgCW7YMEeSepwRyaWYNyHE9LqJGH
C4DQO7KjkGMlr9HxMprosio83Z1aKHQMXR2Q/hB6/uIXyglVjVkR1BaXX0pggZHCz51WwwfqzHT/
6K9k4wuZeBSL6GgedOxjSNinjuvl/qXKuvD4QjooZMndH8C1BvflWEuL7JvdgscafYCQ5SVTP21I
7N+GUue8aQwc8+QGbvP7DWEEFw9oxFVJkDRkGcDZOfnRWdNWqKpYpsqnx5U5nvgTHuk16k0Jrugu
aUxVvDnnuzu/JbKfP3/ID+4YpYCduh7eBXe81nF8I3FSn9cPBSkesfVsQySKXxgjwLPdydyxu6Qz
jmzt72uttDrx7XURWEVTtYkfqPbMgbAPztnVsjCE2fzwgkdxPpG0kwY8coQdPVaMykxTmTE/V4ji
xZMpKaNOVViJAeF2a93D+2yP/vzD7zKISYRjvvSeZ8gdV3jdfwyCkMGpomVuFiJeS5JL4cUxW++6
44uaLmbuEJPRvqhedqPEETKhPWh6zv5qsJZYTdu+5gmn8q2AxiqL5tvzYJwDp8b268z4rwJFDGlo
q5EFlVs2UuQDVRWpDKVX/WpbKC+tAcK6PD3jnIPxH109IwyVTsZnUEmlpm2bvbN69/v0BPFsEw3F
OagR8uMTsOIeTKu8oKgbGkXPOGFs/IZzaz0IxZUrfPBcoXFAs/rP+6sjq4A6aM71tsBbFtgWfv+4
y5Z77Lhxb8Ufa24FbEZ1uUSPUZ4F+RpIB87LDHtpnCQvd9ES6PG+SSyxgMx9AUsGdsM9Lt2Pp6y/
oTYvhTUwj/thjLNUQ51ufXa6iRLeM6Saatk+9Ke37ES4Jpp9qYFFvTr4bKpRqOAoLDXdQ5JeHj2l
V/MhDNqatooglGh975RUecWG1i6BzbpOVNPEbYU+epgxjoh6ZRxC31j+NSZU9qGuze3V0odcG6/1
++HuRWZ82+s6KYyQDcJUi7sHnTZzpvBefy3dNecKhRnH210LmH3V8HoLF3HWqHE38YIW8RcnLKfU
WliXaPU4NabgeVh1HSiZTQchaOx+W27hbnksLyagnN1k1Q/sL3wl81aOuKT6DYiYzFxF1oUJqhNo
K/Y4vdg2j0Yxqv12DApyV9Ui2ItDFh6Cc2mNhto0Nk+nS0ezoUMoUwgvRmmK/6QeFhZxP22Cf5k/
REhKAaLd54hQ5f/PHrYF2lyT7HL6R8ypajNy1Se8EPAdztGlSgXi9asZhrojt0+YknKS14aubaG/
pFqDL0lj/PZLf4y+1sq92Q2Yn6lqhtPfS7nk4Icbo6v8dsL6YeKCdebiIbS/jkrlJ4suldszrTHO
hNffb4rW2Hhw0jub+/c0JMFiGfjuSRNX/m+NUIPEyvpvMSkEZeULqLmb4UbA7mzs2Gfw2ns/XYft
KOBeWgFYQzabAGIawM1eMwP4QqCuuArIaZS6z6M4LexTCx0/2ZzkZsxCeRlSUOoCh/PM3NinsmLh
PpOotPfFcHkrrPBlkBbfIBuQy9JOfp/MunmXzQrpy7i2nFEM0HEutXbX1hnK7cxDtyf8GZgandOT
L46JpujxGOuw1QJLTjhUu0UDGn5uu3+w3e7Szij39qQwzHtOiVpHku5wrLq0Bx5ZmV/Txjkm7ZWl
pplO49scn41HOIyaxysfIo1gvsKJEpDBgUeR6B+HovIrVV6v8gVVJM04RoYGqodUEWQ+4BxBenO2
ahsjDsg+2LRXlh4/ULTxrWUnv+qxG7L5KkDf4Hs6O8yBEZDkCcqQAFxZLqyKblT1pGedxVSmt2dZ
jXJHGXdc9CQo2T4pMCYLZWPjf6DQW2izuBghupAV0dWFGKnDXQi6xwZFj65tyDYONz+igFQOfOl1
hsODERUnC6tz/zal7Bvk1qcXEzg3hx9jlXURPd0OPF+X0iCpWl2WZxjNBLbg83ctH740iXDGCf/D
nproBWfmmHgQTH9ZUb0x8GqxASi60a+b+e26PZfASj7q1KxJEz2Z9IwPTtFCrChuHcVOng+r4PBD
9BTkn2MaZuo6ARoDNbzr4D+m2Yfl7PKdO91AdfxNINX1ychm4tuA5r1bgMUMn0pytyz8+MPh7GN4
Itv/+yB8lXfEccaU0zwLaO8cwHLnLpmA2CzfWQvvn+Nb8zaVKUbauL7tXy1TNvgEnJcP7Fh31Ce3
Bvgy+FuUEFONeeDfVdeirGQTCl3pUgLeMgfZUlc+MiPCupzhFvQ+GvdK7QJjwf45nzdlITJFq/3B
h7aUR+J7lEXcbtVZl43zcgnqzzoooQCvIuhPDcxZ0uA/eV3RDZPOciKyquA2WARAYNqksD4wlgY6
iDCwWHlFhGCzTh6pKGEpgfuT/4czkNtJ1gQZG21b9QmfIA9RPg9tJ/6V2TY2gn6BEbSWmlnLnocH
+TPPtY55rUejqS2vKI6MbXmtwGMaETc2z4Pd00IjYAQBvOG2mYivu6z25fu+w8WHPFX+91DFycXI
J7MPGZx8jKc/cEFJ2wXPdhnLYx7POOql1cAgA4Yyw3NgVaFAftB8F0l1BUptML3CNRkgvTvctaKR
Wlq+a13VHdcjxgudJx6D+HYM5LJ+dn1l5W3VUfsX3W1+qIejbBXEZjbNVzmYThJIbZXc0fQ21G/G
kOA5fR+yIEnlh+DIO+nlaMy6nBloSpi2gesmJ+hPR6pUqrLZXMvr4lM8RK+SNeWb83qzur5yzyZh
4qZ7DnTufEffmsVmgrVh4xWqojlhzp4cbKkV1GmZX2/pWdzuzj0CpNS9cxAj8czFjAMZczGVSGA1
2UW/VMOTVtbfFACP5+pLgZ8DR5//fcw/Hb4fVL2r56CkDWX/Szkg8Of6WFdS5a+J2qjktZx3+DR1
MFuWrE+fhcDY6No1c/nrbR2uq04T065Z+RxLRmYNP6VWn4udPlRguRoxxPCCSE16HN3/ofq5Hyq3
bspYCktCiIVOiUFmIBEGWFFWVKGEf3gRS196PUmFV0CltLCyBsmE6Sx1PE2kNfKAqxCCgKEN8UIN
wLK8ogni3XpHzjieQsR6e/8BvHm0y4iag93gycBFbg/Bi7qYwjQ+gg0P4wdc4UaSzFP7zOZt/kzk
aBl4XWJrwpbzL1ru/hFRTb1hVcT/rUN+qZZt1CfgziOoPwNBJPEQZTtIJjmCCrqxR9fWBrTpti+P
6nQpd0CbVBX7ENAJoYR8iEd8wEJGdhwI8K0hOTM5XEEDAWyQ0aoPZm6MnhWLqO1WZ7TMg3SFQeyd
tnAyZk9nt3w7vUY6KI4fCb/BTEtu8i2Tunr48+y2CXmH+xHyliEBPZG4rtrqaaTNIJsYnZXwOJ77
0tmo1d7VXEH6pHyBXdUJH27gMR+Y45TO6repwUwc0W8pkiI9MbhayKAyDlDzUxaXYPgnx895/+9j
8p9S7pHe6chFIC/dg4bz3YDI9QX45s/J6ki3AJ5sq/m8UptRwPHajV5biBJ1O0VkqI/Db0NqKRRF
m5y0zcFghLuM8ym58N8g29yUKiPOY2k48UnJzFKSHcQaODxr4SMYefQMrbxGelGo0oXEh4sPiXPA
gwBsYDwbWg5Da5EWhRy00V0++2J1KXvkvA4y8yW8Os2/eeZ4Q15IK1QsD1UWTmin1Jk0e30NJ62r
hG+3OUiUYRGhS+MzAGzzo938ZJOA09B3ytL0QDYvcYAJLJeI04u95EP3GKZUB7PjyMjkxb8WY97d
JkwJ26Bi22XsZRLnpB/3Ir6Z9+6Pl/7vLTNfps4habQgwMLIe+kNk9WEz05hAHblBRmjozy+cbtE
MCRKVIf00OwB2j0C2xmyCqeswhN7TVS8nixYa0smqh3NT22ZOoH6wNclALh5U1admSTw9oD3d/DS
ocHUwDiBLm6X9W/Z8lFW5LFFJKADpekEep9RlLzGr45Y+1xMc6AbLgc2OU/ErdOdyr/Ayzy/xwEQ
xyDQxVJdFkWLh++r5v80m/4FB2YBT4BNqBeESLUuYPptABHYMvyiOYuTySDd7mD003Y0baCei7kT
2esM2qWBxtU5OU8vUMsTPLyBlPFtlQ6RtKT1q1GDoPGZSL6fEcZJhBA+GsEeqp4wrtGTYgXuuUI0
e1seeNmTZVEqxbCzutgFZ7AIf5OjOoGg90hHrUcyuWpb2VnKT2tNLqKqnrolrU6KsvDMk1IZGwjx
dpMNJlTs4caKL8oYG3Zu0tVpA52clbJ6EO0H22CABH9JWWjjoii/5Jtsy542qGx+wnW/70hC9nTS
t8hM8tSV5U6/R5GTbF7yMwqCEP2iQF+P9Ch6PbyyZXxZWF6+gD/nmkPxw47CXtV83xKO4q5tWlgq
ALQc+1MQvpHxwaFwOwrJPBPR9yeXALyf4+r6VT+/BpXHdRZqcyzhsH6SB1fS2Dxo6a3r9xdvNJev
a5irGF/DhqGpx4WPvDSzW7HQxETOJWoguKe45lxL29TLeXbrXYOSd8IouLNGsBrSQ/gApwWVM0Fq
N9F/xRSfRWOvKJKXrTRq328oElzQ6++M5/EDyRRtTlwJnaI1RQUjIe1E46cKuHxJIU5PJkpCWUFh
8EYELj74C5FXewdmLQe9XITdSph+A8vXXaa9EqzTZ32MErUOCQ44Yt5BryyyZIeQGNKTPoTZz1uE
W/K59k4xWgAfsauEVOdrliB/Dq1kbUo5pzP9aaL0br/14yW88Q606mqCLobemCbAuFeV//S4CBnD
3E94ALkzK2NHoA/nZqgLOayoitJ+lia+UYpwMU4VuZ0evoha1uUfBTtsN6IfW4g5aR8nnY1XdX6N
euHqfXeZ+x/Rvoz6U0rN2xs5YSLhr1DttK72VMeCZAdHPb1vKHKED/q0kHTmL38htPDCvcADsBor
jsQzEhUtyedG3CjjwVgBf8XLDD9KTwy7Lv1REvw8UXyvn7moJ+2GOiVTowVelcvgqg+CA5+8dh8z
hSH/XeRxv+0lqaX6Is9uP3nQDZlWLS1qmmVvP4BghzGqVeSAN8RQZFEDjI9FGRRbiTVRDlNm4qyj
dYrQSx7Nd/RNgR3fdh9aGwm5VG2D1BDXNR358VkNVD12hJ/QhjOFtceErYZjl2A6HYjIpyRqv2EX
AvjCGQDSuVtOVkblkG6PTHTadVF6yucQJlb4/nYWhZlpih+9ZHSGMAnLBHImqBHL2hBYP4Yu4yap
neFDQixJLppipgSs4FngWoagsL23d2Do/meutpny44GSwd4lNjNYzhy6jVhAym1jWf1KtDMWx/i3
zPIVBdd+2u41al3ExliNY8CNrPNRxD6yrZ5Hg8scVrHhdOhgCGviSckz0MPLMqiT/puNxWOhFtYw
1HaNB7fJEriHpwxRYtSgAcqQlxsJ/+BirCxbcU/4MSm+sFsn2C5Rx5+N1exUCucdOQy+V6+Q/DIL
4HnEK6n5MB8rSO7zHmVwHByZosLkKFaUPaiMA3z0EJJZyQWSowbrci5A8UOQS2Umk+0CJXofOp8o
9OR5cXOdCzWoOgvMx/ZMIv+lg35d4guUP3KTGxiUr45FKMRL6kJ31p6AJCBf4v3o1G72HTV3wTua
VXbCI5Ap6nT/TKQL/y4WvA8MhivZEXotIj8Kj+AsZYiEQ6vZwF6K5t4b2ffizFtP/cAOftBrDV74
Im653HUdcC/PUR8IMIICzR/Oawk2R3+K54rAe3mTkZaT/UJ+v4jTJedX2fi0Ex20dlKQUM56TDuY
9m3HYjQzMlRkV5Mn/KP4d9Tjf2H2sMH+TseHjcuVhVIyAJS4Kj0T/E6P53NNllE9gkcEe0cpLDL/
awRPtDQ/gEXewJgGNWho6dgc1F+PceLeOo0oSXm1sUnU+jFQ7ZNdmWQe5z+ZbwrF0iarHKkfQd3A
fI/qpaDbzMoCyG9Y29d8cxoH0bK1j29SvpRzDzIAxkdm3LERwupJq3nQIZuuvU3nx3dHc+JTMnO7
ISjWKp9F58SaJbyrcBbh56Ks66YxQ8cs9yr3DcB/LnJXbNgDpb+mw5v5lgwUJIRMxDteIDARz2Qx
MWFOsmKW4tQCH6CNDstiGFU7jU/PMZ+xfO81g1OEYTv6RYdA9H7kgkfwoSWb5NlDHCN8Ck0IVRP3
zdpRjamK/Zxb2LqID/7JDWApiJbprIEthWFEchB8008W7b+59sKWD363aX6GjlyWDJA4Js7Sw879
IulkZIyn/8+rbn5oOwHIVuoDmHqjM7tVQlqqNyR/eDGRmNPGZYuTxtz3Z+7O2vHDW7fqqzPxC28S
RpsqXQ7yFSaVet3qnBXrCr5RpQrGmw/5zrGlOREvP4Kvi/9l/Nmw25vO0IMTzIAMxJPwcAkQRAJ9
1AvxhqQrOOq7auOKryP72V8l1tgKcu5oA/UQ8kEikQWpIA1K8gaZlYNsFNvldKLxKGXmJgagKNB4
uPhpDQBSPWnCWoeQguAP8Zo9D6QadbR/WA55oiexn2sQ6IsclRq3yWdauXZIvveEtH+08i7Ibt5D
IlDej5buquAOrSSEEXapJez4Q2rxWhNAjrMEeuY8Ey0nZruQ5WM27dQqM491Cod3vHsukwzJdcRS
N1Raoz2DijO7dDAnthXP8KTBs8bXYKXaFtD3vFsu6oOhO23/+BxWGpPj4f0pPtIAHGEDkE/R2bv4
mf5IV2GF1faVTYgvAhUE0Bq04QGxBg7gDaukDgO594pFVZm+QRmCHEcp8NuFi7qd8JxRD89oHuM+
f+Ls7PuNLiTP8GaV56RtG2IzbBG+2cULkqPu3fgasRICDrt4YF8hL8m+irABZOwGgCtXUerWc9u5
we9dfEh6QjNmKTC2wElfa+IGcQDZaDSva7+LqF3RirW2qa4/lZCoiidV+e5iSAkNPorDVcNE8wWp
0worjy/zbeusxDj/7v+B4zw41FgaC+EvZuA/mnvLN1BAc/0XUc55HtWgblfMPkfRwouyqChhUxFo
cJbFJOm8Ie3DkXbijpyy4sS4Fk09Rpev6HAoGa38vSxKgL1ZwJY0dpJoHdyia13ixbbyt5Rb0dz5
9zhEvOyaIrc2Jcl1TKZ3zSDxTC5FfMtVeu3Kc6Rf2mUfC/MyBLwCSj6AdxO5fpWyFRcjXRt+tz0B
en3k7JoFt/d2whbv2FXrLxnIQwEpqatR9b+aGxIcTPprIFFhvt40jDG5ZSchNypmOhaC/eDOU1Rd
bLANwUB/Cwxz2CRVCdtyZdg4Xz2pSppjiA7zrj/Ajv6HE2NR0/GB4CFxydrhmQs5U6Z1LqOSLoOq
MdO12K7aH2+eUnyv2NUzfFpZ28TBV8NcD/UJxYObDcve3mlprzhsC8xboMmwdkv1duwnxroD3zdc
f+Y6DNF2PVe4/6va0lUVJG8lpMLxEW82wRinuTF21KVpPacyOSJEPq2N8BYyiXzUmsbJNMXcLMpC
XtKCtlECcE4Wd0Q3VFzKAX0+kx80EGc4Gs+KbQZi8UPJeC+Ib+jmzc84c08RXp6VY/8UT2AxYTS1
Js2nHexT+dh1q/lnKSG2JYxbQcbsJT81twKWtCvqD6JKEhfMVcNCWISejbYBfZQ5n5alAdSEyYLr
CLN6SVoWHwDLXBsgKYjiC9wLOTFhx8XnPnc4ULQb7b8BvbXXKYFmlgit1Tv0OVTeOIg6m1rttiId
cxbI0s4zpk4d6CcWS2x0E5xl8PRhRsm0L8khUCP5TZwUYqHu50R4qpjCQD6z6zJO1FZZmCDKMpFN
iaeCGAAdEKRtKotNyHHqn2gkATVuCmDIxkxXSlNGp7NUgFPFRKULsR6fQwbRAx+alzeFrL5ZlXP7
ga5tKEQ2DanSxXehzTf3Y+PiFhIqfn1x5TpIgQtu3aB/LN1gNfPdIWO/mi1cE7V3kuZFCLXG1yQf
Uoqh4hNc21jboS1QAkhE4S5f5jzM0/OajCTt1ucq1ZzD9C7p5znXdFVDXCE6EESRDmbzrE+exkfm
TZHmw7Sy01X5fRTglssHOt3wZ4NX9JrFqtBbQf0hXwtU+oGufadRXJdhXbJCeJZ8kQwXs4LOMkFI
GGOI6pVJslXNbp8rC5mPROUjn4tTunbV2L2PmhOhkfaIxwoIzBF2O18fwXUnPWTA+rsKIyBlz+3D
67CKYPe3L+pFrtOiebNuOOEEF/VmfJs5Zfdxm0/vdb4f1tqdJBbqgWkXZE3hOoEdITap7ifkrSLA
kLgOAJpL5v+Wk3G204cpkr+LQyBQ9PpM6vHD+XE/xYJflG4bGSXqJpsEyNDPl4kKFd/NO06mf/ux
uxAPMF7XABOj44el8ASBRHgVddZeR5oXL6z6K3M9nSq+4bDYsY046iVmZwpWjQ2D8EC+pm34+rAE
pj0iYeHYXVt1jSRKX73XHi38CIhCIp8XosWxmss4zo39CQe36SEoeqdxTvCCjnS7TeETLm+62S5/
dW/4tsu9Qd90v+lA1V9PGbj29ZL9Xn8bAP+eNQ8yixeTAj3Rmgd2JfCDZyd9Yyb8d8Z7LUrP0TV4
14kUGtGdpkn5zR1pLh2DxadCEJD0gS9j/yDB02wVfm2tLPhIKAxoks+9aXFZ+OL0U38/IpBE6O7O
ws54/YhnB0KJLmiYe8ck4RfHqsz1LpFpwDCP8b7Ps45eOkMvsTQevFBohaMdEQO+KoBV/HIis3qQ
KL5wO9UMFir8PQ8XE37bXhvHxNGsQhhArkAXrpvQrhXfoiT9/xm801ttV/zTKMPmtcN/qfyaBx+K
aITsPbjFe0EZtOhz7P42on5+ShqrJfolF4DoK3/Bp9554g0YK500MbGvd8U+DyV+h73t/P1eeRkW
ygKt9Tr6jeOeDGAdjnQITuW19YFjjmyNZqp4kL9jHjF5PSRYmVG//BY/3HYabdEVjhxHm1r8kzp+
MmOmEOj62Zy1ViWVO1H1fdBzBX/Jh3iKfZxYMyZq6Mw/PoQyU66P1joIfIh4B+PtR4DxUbg7dadJ
QukVT0GtAQfUxv8vGp1UXudZN+Utp3kr2i3d+8rJKIkSo40JpVtvyppyjK1pVZHTEWcWP7drXS2X
miYryZRKcjyaFscdpzNW8F5nP/XlY3311T2J16YkLlLt7eHLzb7zMZdYhE2n8LYpu7WDhZ9dlp+1
3T5D5N85nq7ip4vjIpmiDh+Jx3+K3oM/bszVoY4zR/cB2ZThMlY2Zxu7OTD9NEmt3800O4PisuMJ
BX7sj4b/oGp9N5AzJPZWIyrsbF7fFGppTlM/6/yhIYbnCcFCgHKub7/N56b16xxirgpjIFMwcOUQ
rbPE3WkVO76zOOIO2k7E47dYBTwvl9jhfdydantMSWQ+HZGaM/pZ9ZfMztWD1ty7PnO6j8EqJwh8
6W3imGWTksAZaTH6CaASindAjau7VyGUVHfvujhOThB4WjzYmgd/4mL5NDfI4NXFHtaUflpvekQK
WvuZIFgC2Cl7mOIIncmzgbL8YjgrxxxYYxBKLWczOI4r1pBqt2x3Jh3+Dd3p7IAxBaKcqx9oM28w
7ktSCeT4jTNrA47N+Kw+cTSqokJHUL3ZaNIHIlvPqWe4noRe/6+B1xF7ymBBAVMZQYLnaEsB26BE
PHyevJs9IhAQOIXvfU6AfoR83737g6SwUzU39L1/ZBwmDixokJs7odem7pZvldehS8KmT0r8Uuek
dbv7raGBfXOoKKqT+kvtSEG30THaFk07RhM32qQqmXkGuBvqIQp/AoeWhTkgIOZK/UZdhdCKE9kA
5NMyDsgCw2faOuAeUft/S9HGmXBTS4RhczPoIPaU8Pg6N+MuY07dQyYZEjSDghWFyXsJbi7GcJ2I
yGZYT0v8waOhfeMjueaj2wIXDgOzy9rm2rVLdVL+kYRQE6WsEZkL/INdmB8DKMvTq+FwAcsyl+6L
SJMHDSa78YrM9WGMkCnTz/LzF+2+ljWxDPlYACi6m9kMaAQW1oq/xK+Ply8VvG4jOezBZd+lrF/l
6dKZmK6KIZWai4x/fKdsdSWFklixWsOVm6eQduC6/7OQlW+8sjT5XYXzLnArVG+gubElXxUiSxQt
vKzVD2eerNuCDq0oI5EHWmf4L7TZNDp6kilfYg7EC0Fbp6NtqSnqy5NiM4YE76gP46AioyjE6E1u
4SZlqHM6Z4Dk4apmbUsVoL96EWs2nLNL5eCOuKVqEm5W4RmC8MJMpdX7N9vfjddkTafIxplGDNXa
XRQajBX2jiUw0cnuirc45l9GI3NqPlmdrblszXyNoaHGlLgJpkkkmXQTFskZRx0bjEqgSwyhfq/n
0TQN7a7+FltZpgjFW7zM7uP+bRFl4h+59t+JjwjU9NSnyD6E1UF0GNjCnqD1h5wMf4PGHESnQmGj
DYTWRaJvf1ZQT8adsjsBrlExR6YGVX6Gkl5zjAiHKvg1n04IbazxCF5kTOct3DFrS/Wj8R2VUerC
K+FNEsU6EZ83+oiENizUxUnjSDgBpo5Xdz384SwLWulOLp7xgNG83jnRTTE1U2Z8wgJrqpQRSq0R
PY3dutQHa5ZZTvxXdq5M3c9QaQPTNCvFztbqeGXFaI2IufUouDQwR8A1oPcg288tdcubWPOYTNd+
e4KHSiD0I8FhWYhEn7NkBhirp/ARbryYZNpbyTzBD8sWUTbavYtXVysfec+U5wSUvIfLQviYbyC5
dzq53WoqCHlMSd/7EBZv54bVQ1AvE2l6xxRYglmtiaqn4JbCx57PIwygvE6BJFUb1hcHBGN3cT9p
/3LGIwFCsyoJ9iJNRSGzZfpGI+WYewSqxiWPS9s4mPUE0R4ysF6GDmhj0Qjk9kEy+VtxVEUvaHXn
Tigi+YqmEO8i5PI3pSvgStZ2AopL/Uh7ZvJ4NV7JrFamvA4rHErfUT2On6At/yKoEXc0L5d/MUcj
QwbSgSTTFD96gm4Lafe32fdpQqsAapFDgGk9WJMIKoeedOiXrIs4Je5J3JCi9wCFMiMjl579qt4X
ZFbuZOU3XkNozOEphFGftlN4HaZ80NuiA1ToEAVV4CDxay879j0Ry9T9yZ0iwohhv3z5tPzKB1RS
tPAdizO69K1ct16l3mueNlJsCuDHBxzhX+N+M3TiSZLS1gVOpaP7ZzxKV/RnfmXl1UIsQQVM7rRv
E5FG+TPXX6TkfRogJ1X88md1e2vcXqIiz1kw66YlG1S3GLlIhvnIHuWTYieb+/u6pdBzkIPU4Bdq
NyjdWg0PrSgNEf3v0J4HY+ZrqsWKTG1YPm3DSQwxqb008i+rYa+73fsEyuVA6wG7Ff1YcIGJyxi4
qGpZKM5FxAItmk1vB2dQYmpnu8mK1sj8v68AIAjk44IR9ZQHBv2a8duAQtTQvgSgNFWiBtcFqYKD
2lVlkBrXTiYbZgLZu6EG7t/l7BtdHgRvi7HEJx0n0TvRs+XMO97pKAXi0Qe16gtmDgF8GBWkabUn
dKHmZC1995C36WLe15AiXDV5agMadWAXGBeprlTxoGcpvy6Of+Nd4zsEeF0S6o//zdPkC3XNjPtg
Dd9vlAGIiDAGJBPaIdf3W3yqvuFpqxV90OHGQmVMDT3GoB9G5j4r5BfVmDBK0rwksZDRxI+JZfww
R10vSk6HNtJ1ZpwslyebBb7U5Wq6xfrqzxy/wapPhW2Kpp2zm+ONFNHV+d+EB3BG0aDdsxbGJHwo
GisZIKpCu5ZbFBroVHjZ6Ig+0S12AN9Nj5BXs9g7l6tLK1LSwVAYDpuyEEadXJk8i9C1jXobSjZb
PV6g5t68ZqsXZy269juXDrlRhRucGlBYrJ8QtYu/+rjTorIHpRDgqoTMn13YCqxKF1jPFINvxYVr
lYuNgHMjb1zWtIJuF9fRO1MCaaw62uaNQMrtWxGelTNfoQVDWaZcIc6aVn2jW39rh6FPiJK/Fjqz
NTdSHoCo0Ee24ioebp7z4kbKkLiUkkkDi49a7Nvk/Y6RwN32fR76Xx9HSyrrEnl9HjZlYE2Yz/06
VpuaB28iAEKzFF1h9XPpN2pQXZ/yntjE6B3GSKSAzF4GOqHKghl6xR1IaN5/evBsozK35Ft+L7XX
2XO+Lt92NAYzymPDPPRjfocVNGtTgVVjlZ5NWb7/K5Wf8iTJYwp6Pr+Iv9956bTVFOt40D4yFgDT
uMs5U0IrbfIjf6uovyGO1i7o+0cuLiDgSdH+xHrIZZ4y16SgK0oGA44YnwnVyWLTOyN7on1n5sRL
C1sfYOLlo3HaeT7xv9zymtkcqnNW/PFudO94e+ZN2O1XHmTKkUo0deemNnSnfQR7Ha27Vl1j3Fqr
mDp5EoFNhsV/B9zpB4VP0RBhoihafUyI+J3CIkN8qUfswDN0tWBJOcrfIQRFXJayRtNh088pKCif
5BNnFdnJ+eIquKSHoiBQTMP0oTtg0fwS9V6KqJeIagyP9RnmQbUIzmnUZRmCM+X/48gJnG774NPh
ghOzNXMgmKhjZvEOg4dPrnBOyhk0Sbp9pHOywIF471fSCnTvE/m8fhbz/tZrpZpPZjLGtdYFegCb
gLyP+nnnDzPeBuyRqBmR46LO1Wl75z0Rco7w9ZgEarLWTfSwas1teYtWWO/BjSPwvR2q2Pn37BFs
Qogc69XG0BMJuy+pq/YaqDvOzEBluWBL/csLkztHEQTUmTGgg//T5etTKdEtwxED6DzU+3hJzH4w
HWhXgQNIz0rGBnxbc0MNYUs8H5iChmHEDAyyMRMvHWp79FQOelkXVwechOEbZXztrXIQ3KtG+jMu
hcdvflOXfWhn9g6M2nXYybOMNOgB9zEz41ARl0qFjgFAm9dXlzscxqVrvILmrcRTFxgBAhdIl/MP
KL5OPHLanDIXpyakVd57dLHQbGmz3nzKSRRhN/d4lTqeZMtSuAazIxk9btoiSDUWLKpc3qS6LMWn
nhHECSYdBwL4cFzzJBcwc80vF+V9ppvQ+4NvWvsM5QqhxtBzAVUR6gdr9Y72mgmGZUQzfQrdt9J1
KqgsPb+tilOKTpEw4IYPAZgi7fJIG8PPVpGUDhVXHeg5ZXywvgpzbVdJL0UqYZl3dIkzNV8//5D1
CP9FYkxoOg2edR2g5aePF3IGvUNQ1Mox517eCSEp/QXSyXqo3z4mkDT0779UxgFa4AX0nwvYPHHh
48G4d5qrEr1LTIjgr67S4I6/9HaYccSqTIDXN8oCRzs2O64nP/B3/rCGFoNBxiNWbjbC4lLSO1J7
Lzr4MaMXpq19BtaqvQh+jNRPqHBig8tE57In/1sBq+jaMn8nKbQmOerj0Bhocv2W65rjJwcASn1n
iYfmSjSELduojIAiJqcYK4hLAc8i9R7nDV5oR0o21WqxgEdraAJmVCDRJFEIaLDl4G9t/IOxIb2l
XB0kxIWQs5yoDm+LUuYR1eQ2Kb4bKW6afbsqmvBl9sXgavskq72XRvzZe874MaAvUt6KlFhKaV7w
gJGyK1XkVIsdeSI+PdsNvNUfJnAMqhXje1CfAB2W6nkpC5eJbjYROKEP/yXf/ua+6H5kAo1GYLdH
3YZO9bTvgjdejyyxTVMq/+zdvo1SuPyUOGg3I4CCUlbwjtKW4DjhoiObjDlteDo1rYNDLqoQUCnK
zpXGWMnmEeXVdLXDZDs3L2zxaiRN10bNu0eUmCKlfqoP7lhemFu+vwxX7d6EGweg41yAdBPgNmmm
cXipDoNTv3nWbi06YnK2blBfNF0JtcEqeB7N08vsNEfAMUtFNLg5VeV7LrLq3mtkdsj05HOgSbsi
Qj/osF00nIaawPeth/wvpM3E2kuomrOnfHEuMFw94oa/j3EpKj9T4fRKlLraOqSVxy10wIbUsOaN
Z8CnvQycKTBXbmvMMZK650Rqf/GC2Y+Sw4eJDwXC3P5fRY3lazn6JFgAdKR35MxEKQi4AzuayUBR
76ECcBdbet+GJEUPaVf1PmU45QtviOGK4LT+AIBk6Wx8KaS2ha/bhjUKzbdsveI9rH42DbuY7wWF
PHCflTVs82JlyQ5c5aRWlGp6mKVAiynKHfZuLiUgY/9Qj6PHYfSyokR8Tz/2potMOGcB+z6lU1mc
wQZkaWKkY6wEYGoGcC1UHgkw2cP75JLah+zN6vs+AraCZ0OZhPS9WqLFIrIZJzI/MC66msmC1sSj
ahHz+RG/vmCTHQFzFcAM+Cw6o7ETqxl/uS7WH61Ob5/suXodpvTKEjZGYj+j4U7WIMeuukCDj1Bb
RqzUcqEIH5zU+GKcRqpkNASqVLqazlLChOCiBwqJxcWf8MVboBwcz2ci3Df7DpjgkPluf5xeIx9f
ok9B1vCcupxl/+AXKzK7lpVr7hrZnz1iZTCbzbtqJhrugPJqGYwXadHjdlSDsYOhaCInLobsw8rq
lDO12N587CSx+RNV/FCXa8BdMpkD4AtRQ1zUTBkFqcCcPePoWIDVjnl1A7HUnMeIFvYEkFORKe4I
hJYS/P0A/FhUGhbimtNQAox0y0dPsB3A9zuixBhojXm89u0H/Co2xty1ex1qG5m3+aj4GoXOHle8
RkoN4eed6rdBojiO9wvMRh1YpmPFzOpdBBfFTTjCPwpwv1fz3KBLIM3Fql/UalcmJIaoCiwHg3du
LEOl6zXNZFoUs5YqYnuZ6r8OiroV36DrjCXpDRLFEkoRFjnB6/ge2MferJVBuqhOTi/9bxseASKP
On4otbWLIEq/2xN+q0hKm9Q8WhWpGw0nIE6k19BDAUkyOXn503svM841oaTKHQZh/OJWlH2u4dgV
iA61FJ7juACVVr28e31v+TAsFkAKTtpTjou4SnOhwBWEesJESsEADThaFascb+tDpdslEeZcrO3H
qg4r/yRkblQzZ3KVV8li1+rtd1oQc9k2TGEfmkq4to7Lkz9M8FUGsp6xxvmTecPbwyBSLjiUseJp
b0a9K1hpqp4GkK2SM4Pt9DoBwwyLBQoqIY9wbZ+hvGhg/Gz/d/H++f9eVA6uqVEa+tWho2ujRz2Z
9MxZzVAHCuf32MPX3Xd8JrK31xM7djBrUIVC7O8nj0BB85tJr7qXK26mSIGbZOF7fWZYw9+r+YMB
ZUUptNTj2GgQdcY0Hn2WkiZHv+2GGLiKlOtgwemhQN8pxAjM24bf1jFkaAgIS0LvQoLl9A5eZreX
HwK1eqRBmYhN77zCrPtvN4FA9c4AW0q24DHQ08dFP46U46BBWMziT0f+NOuasdaoQ+4OK2AyDf5K
49OG2rYvEztIbSi2hDHb1GOSJX/PA+4KbirEYcBY5gz/t0MDbrtkauBEkdIZy8tjP+2F3UkBYEwv
IKcWUme2k2udLFbdzMJ30wIgIeR1PLV15xKFs8XgP8z5/szadU4Udj6iyh49/wjH7EG9wPWoQerc
o3BZr33bg59pZ3P9EAlcbcOTdKQDGAZtw/WqzOlv/OhTREiFAvIFRkFyH7An5Iq1t0TA/7H+qqBJ
NnDRk7OnpegX+rEzS6EfuzxUvwENUj4tbMi7VzReuvT2ZKl8mPOAisOVQ57o5+z+8rSKRA0hy2l+
oK8zkO0GhozDzBLje1uPaPG/znD4ZLWTTwj5wCoxVsuln75iyFKriYmSEGUtqFbMeT3hmQMS1Wne
nvOhgSyYbaygfUpWIOXTmaEsltslMMuTHIzZ52+c2vMLzllmcgi4XzyEMb8l0pJgTTYD9saq1Xnc
Yk/RFSdVBSvfauGQ5+4AYbCLx9B/WYrxx+JeQIv1zR17s2EyKpCKaYRECvi8tM82TF6w6gK7gTUg
DOqxjHpm6l/wRVzgOUZVtVE3hbVzraoDuggYlv5zyKpoPaVMsWEhYg4b9HcLiXkbhfucW8r7xvcr
cN3T+KuwG4Q+yzFeKJI6QvfVawTxNm2kbRAvEXXHTUrE6gzov5jcAoaxnyH/DR1wgVrQzECZ5cFt
Vp7rjG1B5n+/mXpKL3h57cixVDkAla8WCFrdG8adAxmH2PGn+so1SfHh8l0MAwCJGpDoB6F992oU
PKl24d0d95XnJy+I/Inzi6bs09wS81i9XdkAv6PU2+fdBS9ZwIiipwi67HUSH1l56OIZPT3qIdAa
iy6RweDa2kEDukSrlMKV1G6ztHG/7ePDzmKKmJ69Lmhx9NR4wWj5mQ2OwyO67GKFyCqRSdiJ7Gyp
gx84aLPc4V8eG+quVZlcY1q9M/mgBdgBwHnrrc4oZz7NBjs8m20FGSA1SD3Grsds99/ldOkSXYeZ
w6S5V9rMSe+W5VbiD8VA2d+n8PMx6oQyzL1COQcCvgyq90gMb0m4o+m+cEgvRnljPpkZBEw7LJrx
+yJVJQV0b44mgrX/0UBK126Fgska8WNSehTSNkt1zAaAACAaRKZ4STguY7ztFhc2jLaq0cyKh1ih
oZ626gzeYiCSak48T6KlbAEU9GncrCxypocDczj7U5MEWsXr+Mkm3BtbN5i2x6lTF3gBk+UTSJzc
KW/Otn5ci25dfVkuCob+PLk9waAeJI7Un7Nl7ChzqJnUb1qut4jFMGU4EEvUDSK/LrkRfldLEu7W
bHSAAnbzuvJipcFpOxLLq2YTyRSx2Ni1X0vK3bfZ1NJRDFB48pYSQ0MdKjlEebYsyW8dK3VktNy8
shkRJEWA17mwb2Y0sNQ8QMCmo+UMwut9nAAUWFbaOUrzyxYrXOt5b8Szwo2c8sSUfI3hQ3u7S+co
tRPDkKcJywdHSVy4Ont2HiGe7vk3WEz31H1q+C0npN6jFfaIv+rL3hl6usUMclvsqx7IR1fgWZ7l
7BrnvoU1vNoz22bk8EXAcmD9Q4pG3pESc0gFGk7dTBGWqNDXuil6a7+7Vd7gmTqbs6fRvYaJWsry
5DrOYNrRsHX6bNZJ6ACbObj/VHTscxq6BwSzUaxKhnxZ2JxoqaPgprrITjMfB3GUA8g/JiU0uNsJ
HTBg1pZ2WF2jHf3uMVk/lwkB2fA2CHJB2gaUe50mPr0qilGRAl5M04F251czpluqCpyikRqDKd0p
T5ZQQHxU0kwz3w1ypB1ZufTNpDIbsYeqCZSgmWBxkr6Gvi5F2KhUVs90GELSItkSJ2QAS19FZ3+C
BsnbfjcAIumH3n0MirZQ9IIrKMT9tDbeGR0d938XK3vQH2EJyfWFw1XskR1r14RxO8GcShRczt68
FtSKDfQzalcBh4G7l2abomfXhF+H1PHntJ+6HCcU6VwzXRdCwU4EQlhI6w8IEnEj5plYBhH6bBdZ
dheKDxR5M72F6mI4/P8tqg53HQDkDZL6DmMp1O1tNMqOlrAyzCYZ5+ERsTV37dJaHhf6Nz8JVKBA
UjJNpuikpoGN+A2IG1piRlB6LlwqSZu6pTywHAkBYYt1hUCppMVF99OYTTy43/qg69JenDm42MjX
esWYZJe7D6+MVyaWa5RzuUt0Z8O6Fo3oiYJw8gIpXiuvtO0KwuKdj4IG2+OxZ+EwW4hg4e91uzoU
aiL9bMol70PpXX/mTDJCTBMV+KFkobvtW00GFywsDRUHXGBxGc2+HbPlPRQamllvJoGBWhX5552s
hdJUnGI1RQOPKs9ieSRkV3hCw/ZPR2Q411+VQLdNyYSJ0tMcDqnkCUpMy7nB4EyBZCcoRf1lU9wh
PEWLZPQFylMDlJN0CkB+suTI7CnYdEU/I5qyOdoAVcI+qMRjd2fgROHlNboKSnKQHufxPxW6uTeN
aEJYAHdqOZ1PuL9GccbFgaJxpvJIhFpDjBQufs9G7K/kGVqnfXcKmPK9ZhzH4ccIYwAOJ/2TgMDE
rdDFJHNEvz91GgdGL7qVZEBgErxjF6FGnu9FJZM/F13NKfwtmi0VjZP5AKiXFuX2WTnRbWwW6bB9
8X4O7B+B2kR3RWKDkRTz6zdTvitT7ikMVa3ESnF2wkmzqAPUSysRtijog3q1QvdRfWny8VpD10x2
jxRUWGJ25/ed97J63hKKhyTBmyRuaH3H8BrmWyHoqbeDoT5ILmHDCSis8inxLAE8yP1G1ks4Ks5H
YP/Nsq5uZajVjNoK3sWxUmbHAnJsq8+vsGse/Ou8wXFIbyFssSC+XTQr9uCCW8xI6iQjHBCjWEVJ
83+g56+ULxS7j8De7zNTewPv5up0Pffn9TpA46uJ+DV8oRxJNABYCyihzwunPLIdp7G88TPUmySA
dWmHwNe74BwiuT5gdXQgRKryMwfwhy3qudhW9sVBmaWzYmuUP3koNxPuQfVEDXAQQmVsz4Yk8/rl
BJTMd9o5Jps1PoGl8HaJFoGyx9y2s/d2b9aKvDZHg2d2uI6ryL2Awc7bIpnqFJ4NI9AJ5xSWxm8t
D9ejsWzMg8cKM1TY70vAD76KZGZw6IxKAA/4JATDB2f36lLyLgNYHo38qqX1GaInCclLcFbrf90j
vAwXB6ARwW4SsaHX46hWwPy+DVvFUrdkvkiCHMdL7UUcZ8LCnCo9a27JCtU/nO6gxFYijsvuzK1G
i4PwiX6WKU/HlZS+d+qxFfJP+JJ21vUDZAZW4jAtCZ7EDpDUlYfXuLvSIOxJkmiLjcyR5IFcacAX
1b8v0vusw7CkVrhRSMpJdbqOtdEFvH2B5EY40c1t85JXvgQl60MqyP+Y7sKHmu2uSzgZjUU7HAat
6/hh4PUhY/WLcj84tglhBiaCreJWtYmDA9oHLxMyLBMMp5lmgWLoI61AC9hkNXHhk7K6VEbAyxkB
zL6WI01EH1HC47EbO27/s4401Q91fmvPYfdknJ/oMZwCsPE12q7fR9yvmRL3/wowPD/jc6i1Brab
+0B6hBOQgRCvH77kBwkFpZhqPzmsSSImuiAx3u7DiMt7WBzwiuex7lfYjRdliDqqsHmSUR7nXcN+
BBfGch/HzTs+038BuV/dl7aXZhLcNacqepTno8P3s5p9XBXTj6ZhthqqpaWwgX47aMoBxJVA+pCw
kReKnTZgna6CFVmYZ3fRwDqbr2LDR0sECvRQelwggN8gsuhorNGdz8Vy0TKXVFtbEiMLF9nZMgm1
s1l/mWkZqAok6QQFrUknR87jGKAZSIG1hxAf9WBRpwpQpWAowvd8x4Basp1hmxM+iy6O0PA93Jl0
Dd2FoMIUMjBLHSKp6aq3fIJHK6jjs7DacptfEmcspOWYzgdma0dTpSLq+TmrTEex+qSZ6+LPIjHQ
bmqL/2ZCi5jn8Z+4LpspiBBMYqvL/Ee/n8lfPTbsjzEhMOVrW+mFSKrlsXuWVrxekpaA5lDqALIC
9T9S9GGLYo9fBXJycEYLgaoupl5/WZvcDzRzHLuCN839zZXWrGzw++zvi6y4LO1BSLnydn00QQBd
sXs1DBjYL/7Jf/k7Jg4bQHBZFJVR32U4FNjyr1vMHErjTy8CxW0Bz9sS5ndzZggiPaK8ORsK0w//
Lz6YTVRfCALPgRJ4uQW1C9r5ax0N3PcPQvvCrQyJ7O1Hi7zIxLRvtz4LOH7KNqLnQHJz1Iy/qXIx
E/Hdl9ihOfZKDFO2lDZR6d7PXydbSJFWwSPAXSCuy9s5QtVlPbwmJCzSIk4nm/6JLv8cy5OCQ6S/
cBDlTVTokR76D9Au/EbZ21NYsb/wzRf13lsIbjlHxjGuNy7FGmdlc91nwRFlNHDeWjZQdYQUHjui
lpktDF4VR8XAxXA3kLJou0ZzF5muRYX6t5Drh6qXFlv4HrBWLWZiMFRTU0SNWjv/k+VRtOYl7nFp
yJekEhnGW+rDmQnjtwhsW0Z6g1PTG1RYAsZRhrY1CVa7nxuqUFf50eIC3x37YKB4FZmCpJBrtMNC
i2anEeOEjlOwKX3S7PD+ij4Hl402usmr1mOUblpaOAB8p9ydwbaGaxsoDORZ7F6tVIZNMAq7rjMx
CaLSh1ASMSTDCnD8c8Eh5GHE6qCvyCMGjLiav60iRqRPiOv+wmq/iGARHvX6TDIGXPjYrOhgnOQ2
MmcpRBcWW5pjZRN/R9n5Z9ObLDtqNlAtKBw/iTISVl9aygndo3QvFVMGw3Bgcm+FD+XVx0Kr8CRq
+7XeNIjV/KPJmJySSi9AFrKfAuvnC9suQsK+HEQPXePMNWZoRo6VebMvop1eGIMk21CkMbgBKCH+
CitYmR4FUQtkG/2O6UD6qN7HNO+O/S3YcAfpqNfYBwx9v8yMI1lyKl69yjVzcbEEzlFlNM7Kb0v2
cEfJZjdoOvnVakmVibUuiBh0keQ7UI43rO71EyRL459phBxavCMtdUvjrxNwqIZpfaG3s4Ewx0AY
KOC1fVj7+8UatuyCifJyy8Z8Vr3P81AUErPBvPTndZ41H8Y3m6Dg4vQcQwmdf3L14LPYjzsfnlRr
QAXi/DJlb5V5N0O199oN0lDBuZdypvMNedVbbMIOtmc6yf8YOy4P4uwul+ta4gindiO4pi2wRmXf
+tKcVELFZbc8HCS3WiVVPqGyVshvN6QrIL2oMhKXv7Oxa8Y8JRvltxOMNZqOu21hueqh9tVPfv0v
78PwakbWjqMt1+clvpncliI0OaSUxBdBq7U4BF/nShyUCMgyAk9dOA+66z9MrK95BjiKRboanIlf
T/ZPdHtc+IT02sIdNQaLBOnqd09nnTwyqGQjoKePhQB7ui3EvlDAN88L9cogmrrq6Vsqs+vu3Ydh
fgJw6g7j+sDD8gJC0YPNYA0QRv+rO6PCxb8mOVAZCd1wMUVobnh6Ki+XL0/WL0gj9Yxak7RwdJm6
dyApuw1sqA+zmQSNqmFvl4UI6IoEPx58AkE7X9HQ3ZUcA/xg0DmKWvPtSq1K0bthANkPPBKqFFVn
Qgepn9QVzSI2QaSdJ1WvWKBuTNr0WzmEH5/2H9rha54aBOYo9sCjQ7smuzLgMTF4dWUAwrAb6Vwz
qRd64eo0+rWR4e37w0noBKRTjcnkoQ27BvBOMwKGtegBTpLJ2gbw3TOnnf1CSowoLeRrjR2Cfl+x
CV6dRiuCpbAYPql1sCrMTwFtZKjbOBsT9rO24FPtRl6eumN+25+wOclqUGgq0AfQJBYWPKzU9IvY
iG+k51m1lYAJlBym1oGmzp3l+WdLYbr5bJP4gf3bCvzD2NqQQYt4wCR6QJtOiM5bgZFLEpFMBK4N
nwrljI0npoLdkY99KzeK2GKy5goDoasETxhxI3uZOE+1RCzE9Da8t8SbemYuyQ4/5mKLQKH/yzDl
ohMdmo6/s5hvp89NyZ+TJqVjTp5eP/aubPxMk1OYSfuv0VZIU4SHnHAEGMEc0xHmeXTgR89KxzEq
EYWxlOdR9p0VZnMuZW0H6GSV6oBgrqixTU98wxZaV2TZHx1fV+Bm2JchCirBCbs/xmZvazTYinBi
kBXPRmkgMP0ySlW0k6SQvYayl3BfoydieFy16uTKocDMC81ToMWep3Al3m9oBNnlFe/ZtvcbdXtz
vNsxf11NFH/WerPvpcxJ11euT0IfPCZ0bFazY4+e5k/XCig0FKEE9jYc/weLR3EO6mJe8EGVVaRs
reLgYlLTUZiJ+JjVzCiko2D7EnvOxg7Q8A8DwJ7lHcUpkyOL7Y/6ofEeASFxgD59CJJxjT4HFBeQ
7EhCJ+61iQM7FSSLeu7mbWI4SJY261lhp7iSfYRQ1QRKlXXzvEefrN6445xjNbljR8Sjx6Ex64pN
8Dpn7KZ1eFZ9zgh8sccD26nNQ1nH/vpBLw5dSTj+COTSTHOZ1MMKpSX7b3sEP+sTtH2w7tc8iQgi
HgKb0R84Q8H4cwggPnA2GhB5jmqv86Eqv8R1WInrTfszBGfBwP+LX5DCzWJOTV5dtq3Oy+IvxnCA
lQUC3pCkQKO1PFDXM8sSwV0cJfsMfRu6gselG6ExcJH0xl/UxXtTtPvUyRchxgpHtZKA3kzNLrSH
B1A51xftncVcomvkSlb/0SbnaB+OrfFTvX/XIHyHiSVxfSYtyTDF4rVIkGNv66ne8+P2bOjeStC1
EYYTzF1lln/iS80qkXwprsZOxCMPjZXGaDYLDdRrVF1olSxFT8jgdR8s1FAfUkNETDzI1SgtiiC2
IUHIVMwktWg9FmZwRCc169cTalfeVDSectVnkGNfjbZ4FT42u5nvkoP8Tpmv+pIQDPUb22I9E8hT
57eilYhPNbFnAr5tObUgL+EG6562poH96pTJyV0hWgw6QWgUrotlR8s7Apnl3x5aP4x+0wDQXKrw
NHuZFOorWiAQ60R+CBWBfarCnOKYLbKM+Zr8hozeLI/bD+h54xllqdroRgq9kN3eUXZ7YkEf2BGp
WCNozyf2FkCqq12ynDqT8GWWJjidx8FLV6BBbwIRf8VjQldNS9NiPq0XqRdeO3JK5muvizhKTrOv
QwoarJSldaTA1CWPLgcp3wy87QggpAwSLy1ag0dSqLO/Hn4Ex+1ts1NujVeq2EhP+DE/Rx7YKSGP
tHKkpourA+gIESppiqsvQWPHEZBt81rlGewE6/0Sb4FuatKOkimcOJ1BD0CrX17mFwNq7mPEdOlR
CHkadmVGdwGpBsBuYK53kra7dRDHG64NYHhxp7xvaTrbCKzhjkF+zSdAqYrdX5iTYlmgjSEpJ7+2
G3Vyq90c9+KDyosyBpsNVIb5XsGAewe5aLOVvV5kdvVadLGDdYsavddEaAWWkOGGba+WK7yZjO2c
ZLvbYKCnGvLGySnKjqsuNuUbQ1aDxvBJgBxerYT8tD5PPSoCFYyDvyGcweyt+RIqOzCzLxm9fQym
4+Bd2enbGVxTCxBbclHhxH1MuSPTzEZk8PEwWLoy72GCtdKQ+u5bgm+LaNSfZ0DwVqmHZRALSFQ7
FgwvGPjM3zYxbTRnDOQpKQ0JvS/cDh1MEbtwwQ4d51QqSYWmRvC25HY/WU2ILOgCCXODPuoNQvTe
Ux1dKcTZdg9ZxDc5+h9xr2ozVXk9RfarRFqID128CsYJAbfPOaBoVmh3pj935b9SHlMJ6R/ESudM
wTYlzCQZnvgQc13/0zZh0GpBr7A4vcMwEQv4T3FFHseQr+jcRCalKLyF3caLHsBxKx73/2iaYLRb
KkdGzqNWBLF4bW+WsqLc79lYG5h8yQ08+KM80iGGQC2g4XbxCvQxyfZXMiC+HDCMx1E6la7BNFfm
1nMg5FcLwmJsd494Oez0sanRrc660mKAr9ndR2Es4rmbVpHJf1QLogCma3wVgwxzlbxUtkiY01ws
DFaVCnK5dZKirbZ2nczJBdPztgfy8cchTd4PrzTID3xN2Md7OSXvbGi/iIQpbnpLtl95CzoSt4so
5xhZ8fZy+z0opXk3cvp5rOKm51m77juJjj53EZ1zEcMkh/S+LX+1yFDuB4YQN4VFDA4w36RHvDX9
qM2UD4KOaMv787bHo+bqejbwnpzF3T/eGa6/It1baTLdP6+RQHMbZ2bZo9UcnynX2xUHwr78j6o1
OFra2K14R9qIkxcxiBMDVGgMgSnXz4oIpSlHQIxTVd050ePWO1fpSS0SgHjxzfnoohpoMt377Zs4
C9QZwBEPmrysWT6/DqcIbTDpJ/vsR5GzNjVtMk0OSyi05CqDb3n0xif9kpKe6EAbItrhoM/4v0ve
poRMKLcRPLW+VU9uO8lqxQ2wxr5ZPBNaIRNm7so/XAGZIq+8Asfkq+VhEQL1j2nTQj2+KH2tL3gc
cHarj4teGPqNDcMgD58Y67BXY2CCMUVn80y1L+ncm7HBbUQ5esb6h7/i2RoN31y5+TJZDab8sMoC
5ktgmCDxWXePFSUNaUsv+P+AyNgPVvyJh92nZBJJn5WeVBwxKu6eEv92o3AOqqC9z/w2XPPoYgjd
/YEdsHPtvyoko0731lBJGRNp0Hy51yMAtGw2FtFOd8/hAGkYAiyFQRjjtBrDQMNjEJveTF6wgXoG
a/oGh0+RlznfIHE9TZgmxfcShFND1MkVxW0oyo7qaSotykB6k6LpwcXKliUQEH6VgMJg1hm43Z8D
W87OYebeLT54rXTHost0aMEEFG5g9htBUiwmKg9A/iamNXn6gIs3H9RAL5OkIY/ZWMLm0gT24oDb
+WJlFbxAxWAlAYxcGfAY/XR8xXOl6AA9Gv5rw11LDBim8Ofb4V6cqBuWQ6d9PfiRv/UwPKviMIjb
paNDK2QZ/fy0M5B9ql4pIZqZqeC/1NasJFOfOdH9aM21N1yTwXl9RU43REdYrQBpbIBGigdGXISN
sHrDzkWFDVHYgcT37+PdSYdQFjuT+1+FRS2cv9b32kmtgnDC7HZ1SMm5hYEmnRJ9pXjxsMbnQAqA
wmfulj8FwcG5VzI9Rsad7yzLOR9+6itzG71mx7XZzKY4KBZYCFJA7QG2F8OJNP+jzEtGr7tN7v0Q
/tCUTGER66J6DKmUVWwFPYZ8i7z2TCBZBeF3NkEaiE2vjA3xRJ4i0el7EAumdqzGL8J5migiQtK5
bTuBOKrinkO77EVO7L03MngbI77m5Px+WQoSj+5iP+qHRLFaExVeAKsTJN5RuHe0XfR2cJ7+sKaX
HtOpDsa7Hh80oRl+lH6fOS2oKxQAKGGKR13ua0TqnGMgE51buNvcYEI5oxVYQnPfTVDUo0t+e2RY
kvFEEfweTmzvoP1IbmNhjjNgtHF6OeC/se+g9S0lZxhIpYv9pZocpydEH4yZ0uKr04242YkCzEH2
0SDSNzAPsFYqeZxgKuhnuMRnOOGjgNjjzZeaNNzoFFUQkS8frSVvHRiEAWUq+9UOytCrjsrioJGU
/GlFoSlvWVPFPontGuvrq8chrkNbGXMCoh/h7g8ov1OeBkIDS+KpUwndK+ADx8cao6aeM2QkOQjY
zonucj/CMFOXpsm+WehipWS2sBGhFGT5IjCoKE8E2i17msDKwNJKe3DBD57GRW6MC86JriCljgmk
Gu2MjngVrnmbZvOWBzJRjW35a2F7RWrWJqiOFcfKUa6IiQtM/pim1E3wsIoYLGBVEpNw4q4s/EEZ
F5+pQhGscLxz0yVAfE5Y3MIzseEDE9fPAEBPzI84kYQ75BYkCf5XIsGddF+SBss5LkzMJiGQjtBg
ECoh0njmtiirSxZ+VwCMHv6FRXZ92iYcJVbYWWoudRlvDdPEikATNvmIzpueUAuXcFZPiJMs6QWb
qfbbQ3DXDg6ketI5CxBvJ2tCKRabwuafFdnEtO0Pb2BGe1wVrF8tmiwkl8sC1Ae3r3CRCZmTQTMF
Em0l8+4B9ISJyJPasubAdmf0zQ+xM23EBysIabci61eJr5wVNILHl2W8qrBIxwF3V39KyJN0MAWX
zdHggESPzEx4rboR2VGpvAYuJuOyLIKKHRw8pGeESTQsclWAxO9425/dByFbUfVwiDpa1McwBD4z
O29TOV2MD68Jk5Se/6FT8xpz+F+hIaQLI2L6m32HMIW8GWGotETOit2EPoYvYxk2+d9GvPm0F+6E
4MHz/4G2BLbB9D7597sgKdRMOa74o9sRmXnjllU71aPrlDRJAeaujUnRH4y/BQPcZ5hbe3wayN4s
jsdKp+pLHPmVQ31Buyap/J8VW0kr+7JNb3e40EParySSrpVqBigM3EKuYkU2lG91nxrlAtMt8I8d
1LhlHjU+SKrUF9RIjdOSN1D4Aq3TcdvELpxMyaeOz/WXDYGZVFM6wWkd6IoQCpidr7oQPZCHLVRF
8S2jriBaE2jWDYIsK6hvMVYOMtKS+iWQjqw60tTwrciqj6OtKTNtRKnut4+R/2+JoY+OfLzNHgOt
n3nT870BM1/snbsritZfGMQSHO5myLHMQaMDFi1vnSAnggTD+QseEE12q1yzOX81WMfRfqzUFRca
0EZVMaUq9+NGAjEyiv3i5RsAKDpW4vvMDKfY1fa4Uhqcln2z0eUtdC6VRVr17ftUG2nTcSnR5nce
Yrl7DKokDWrDX/SD1uqgxcVqaKMuOgrRWfa0bhVWimhDwAmTucAAVCe65mfSyqbMfNQQMXmW3Tue
VdS8LmFRnjThdg6v+tNJa4IjjX/IEPeesqrlFGy6tCOBUKBEF4G6tjl4A7HnYsbXIZy+8gyTCHkn
w5ffNFO2FWLIb3yvp4mr58sxETOCcx9n8ofd5G2JyDLE5sdhwGY9mxhkwN+K9GeExzRmWjU18ZSD
yTMxU7aIEpzgMinPT/45OaZRi5s0fmbf8RMbuQ3gOGUshHJMmFKH0VA0I94Me/04zppXebxMTMhN
EnjbXAdFgBBP6MyEFZpisVZxe0ONj+RS99s0D/D1CscPRZdKTcdrBux1v9crbejitaHYYT1zibOv
DbQ304qwi1o895MXt6DeuhokarwsjWU5tRSo3eKpNW7KXRsu/r1aBAsTbNHIMcyNMf778TRvNcFr
S/Xsqc7y3UX/xNXnlXU1QQojumKLL0KIknKg0Z5H2wDjpNqXjSRMDRCTdd7IOceBFjRmWfjmvFl9
6HoT69FKADNJ8FM0hklvjx6wxrjTh3BlhblKaIV9ckqegjCoJYnDEh8koCKOBE5sZn96QLCPTj2D
NFc1HqinsCkZsfcfOsIrW8a6M6M8TshRYv8rdmwsV9ltnwAzBMo/0Pf9GzXWQ+chb0u2PPuBEs1H
ADF8gvAau/yHmPGbGopJo9eXpmhkhl39/cjfow9iyruJqrJ3hb45HoYEuxwDMdYoyrAUDVqeoIEo
t3zOUvMeqPreNn62BL7yGG5PggC6ciNvflIkzsas5C/Dvvw00csgJQZmzZIW1e+PZCsLqUs1tgNc
pPXvwb++w+8t+2gW05vKNhvjpNVzXJstj8XqkbYK/s0fLccTATuOpblCBPhAUBFU1UE0G/2cjJK9
BNlcEu4lT8qHo9Hg+uPCPeSTJD7MiHJoZkiokjwQc5PLksWu2uCSJfDDd649Liyc58BGEWW6mogJ
JZVGxumHN26v5Mua6yEXothzj1sZmU0wLebtPjoLS0ZIIIaC60/+0X3CJgISQgPdrbhAr7Bh45xd
Fvvk+3kKFzILiiZLD1B9wBSwur01QZg2bWemLWGVrlRMhjVNPwapH9giDBiFLchyVTd9rNobeqdd
4ve+1cpSiN0+kVRT46LPikxDeGzQnZ8yOwtIGwIto6WYfWCkaXSYLQxvmaL4Tgcq9IEpTvQVciy6
22W4MwwlsXq1CVW3Gcxg6p2J+9l6G4N58OmxlSVJWOPIliIaAmO3xugH5AFhgAK43pH7pdAs8mHu
0SN/k5UTqvdnbryHeIN1La5lcLWWz3tThlg4ZWDnW6WeU79LoWExJ0HAjhOIEhnocVc5m0I2Dths
lGSRQxHx7t7OphieRNyIuGTGz6XGydhiC0LNyU6cthG5RG+QKkbPucV+1Yrzhu2oVzszgdk0k5Bk
wZQioDbuVRt2iY7k0jlmvqh4mPChBYmsmPoeliJeoOLIRIm9L19dN548EwogvLKAYke8heVOcHrL
iHffxSXMlNFb/AUGhlFpnNH8cd15YiIqBZdQHhbt1jmoOVJjVq8M0LO9aXfspjOm07BBLmmkQTcH
W+Fd4c9DJtv00vHQWz8ZS32m3Z2JJ/Dfket+pForLsCTG9W17Z/oPlTNAzpc4Zp1oxycN/9ka8q6
oMxqTzT/r1hDdkooNDeS9Iq2Y3h0OZ/YAeZa+eBUeNfmcNx3c4bvDoSdbP1uB1IVPiUcdLehdUmz
f7G4jxr+vbEEwTxsUTEPtEHfMaAy3i6+dYD8gxBrQiXABcT2RkoaYVny6ld8bBPBfluByfWNhkLn
OPbDYLlWxemBjcHRFGUbi9ldA7z3N9RjzHh0UJKebZmcwVMJ1kjY2TsV2aK/hcTDYRBF7zKPYPG3
uItOo7rYyLzbcVFkN9jsoai612Ie6rPvgwJktdjUeg85KqbCZ7kRFLr0hKUqH2JiR+GxkdmlSnYI
/xiEhgvl4p7JqFdiifVxRihF6Z/cBR8P2uYJ9GgDbmeqThDZCVbCzoilUBngBMKJdzHBcJZfM4pf
NIZoaDlsc/8xYlaaIGGTuRmFhd7jBD9tFvarJDGa0EOaEql4GSkF0T2eBYfu4f8wf41lsSPzDMaS
aWGsYld4TP3UW6eV59WJMDIJT4lJlMK51Iyuc7a87pZt+zbZtPVb7Jwa9Co1rlf59qHCJTIVMoY7
WNMC/7S083rF+baeRXcGD/UqVxGZfDbchMFlDfxKfPCkFDr0SdMJ7bKp1h98qzzKfiUOGfHGV7pM
pOtdXDg8CjVts13+BVq7clLZisx/ejgfYmxLTijm0pPUi/NjBDaaXvh23cpMLDM4Ks+vr5s1QbKG
bF0HsxTnUBKhgNY2ihMi/w1BoPyyMgyqBz8gJez69KsauW4kcTNe4cZ9z8/HMKFA9hCQUULApB3E
RBOVx04Vh3SYcSsc/i2pkwrHWR0+G102N9uyLGY7MqWyv6DKCf8pMEhSX2NRAF2kuSLrAbyIHksg
8kT+RtyNpa1Sg/69wPscrZrIaQ5sWucTcNTU0WJrVLeirpf8uOHblo9Xbx593SWR8Yje0O5Uq+z0
z6/8Ol0BS8OMqnq1n23bBtvSxDchVrzayuYiLTNEMuE7KadQCzwj1ZT4OYXeS7mDWyLA2of5A03r
5LVwqVbaHHJDQatGX47I01QEjPZrYfSqVfxkHmXY13+k2H7zkisdvjrB/qImrorsYhLSM4ykIx12
1rLw4HkABOnTw9/RpChxI7Vj5wp/92dyZmvY/BCb0Ozyn313Zz9ak55RMFPRitEzFVD5ErEc8jq1
pYyZTwVowYsoSRDCB5JSGmk/1qepeSSz7fpMoIdE4MQRT7zAfEYjDXVa0btGvEknyz5gPUUT9Ndi
rQ+F701CN3O24zFhv+mheXSkZwWULElxfaktl6/NASH9uaEt5fEzvf3PlcRtT5geLfLC8XGA6KgR
h+T7YTQ8u2Q4nuCtrG9RYck4Hi3b5W9vXk+JXhdmFVGwi0oePdejNtduL9zxIefK5OwVGesZwzbd
OQC0h4drlYKbJ7F6M1JBZXjLbZ8qz3jK1XhSUTs/Ah61Ij57Nb+Cf9y7O5lKthaZucmzGjY98Id6
YveP/wPVhL5dULDKcaZfUwwuuSswtfwMeuGf1ktT33YnF8daVunjXoYyOrPmEEMgjZWbZJlf5RCT
3LpScIigfIbV6XOdpDRnWcg0cPhTZpX6UbGD5hNkJwx68K94teUQk9ktEoZfkhnWx9iDb8r9ybKA
clIjtFw0PTclJBT4FTQuHajDu0W0gALEu2WU2TOA+FgCbFMtS46Ld2ozjZf97llylHL/O6ZNfsHz
S2Zo+1+9if7yVPMrXKCMVdgtttFMtePsO9EYXRXs3J4wi0OqIaOUR2xd4keUX4LUo9BfaFd+8/mh
QcXHzH+xX12RS4+iz59XGd/VLon1WDBgetH5adtFvqkelHTu2Z62zDChl5YQroFxFWbXK5T4uDXR
cn7zEOLCDE8IEEfNVWLbmerDSJbnCBnQgSa6Dk9DjBlhF1lYRvOIqQKgog4eref4S9MwnJ5pFGjK
WFJyv0sX+g55My0w/NDZnN2Z7RyfyjkeShuBVXvr2hiU7A3aNsPbAX54ynzHQXvwshtGNNMTz6K2
Og94pUEtQV5lrCWibCCUOzPE61VjcyORYlmezNp6753g2HnMpETPdJggyrcjsBtKgQa4fWEog7w/
OaN1bASFYDgITkDUjNckUapGkKMkQ6PDzzXT+E54BGpJNaTA5qY+xJgiAwzf92zmZKAhmHj0dVuz
LcnDhJpaVZNxFX6IbNO4YURDF3PdJ3AdU2sZZf/FIxPQJe3SoqF5nDwvrYQbCVH+djFz2w68wvPh
wNPxnWs1iDPPtBUCqnz9xpb7cObrjDSfDVRsb3ISndJYFxNyalw10XUkcif+MV9pWskOVSLPjc7C
4j/RJW80911+Wqs99s6ypsxOtSz9z/2O4ecZHdGIxV8F0Ma6Rfio4WehsZ84/Y+x+UKlAYiO3f0w
eVgv4Vb+Cc/Y1Gm/tcLPTJJk4G3lo4GNNZl41uW5DG2P7rxVmWQecenFJGEMvb5QXO+b5cFWo1nd
bsKvaL15ISb/uadSYs848raqcn5FxesiXxvX79h2P7wF05gnleLImJWyeHL9KxFrgAe3Xio8JgHS
N27IWfilSBpFkffsY3Vk1AUe4MIsBemobAGBuKkew6dgjwPXTyFdEMMJ+2z5mQUbLwtTb5qwzaCs
4DYrLScMjlXT2+rK3UV1qQLn/MITbsnSKXO5Qml+rKTsy/ygfW2FbSvSCLDC2/Yq6cAhnczfu5B+
YIKLFyOv9LYX03qgPdhGD4EBWM+4Cz5Wv7boZFqjKpIUKlpmKhGXdZq8ev+/CllY80LJfuUohHUT
yl1MX2NwnNrzikSPQ4uxalk50XWkhqcAsDSLGZqeVWtOOMSAB78h42Ucb4sOT9QqAmPO1u2kQun1
0pYZFlH9s4rp+au1LGr2FawIIu538JYpavnqlYrmgslSiAWjNFB4Wc1YAsvZNLda0P6nBrcU09eH
UoHh4uTQDRE9L+shPk9WS1xh5gTaCDYu3Rm7nP7MiMATJlkoEMO/2Ljl9fq9KlYWGINvUNZM0EKA
vOz99P+//iMe4bIR84HpZEWsuLLlCxk51BqBdjL5dMijdPXjGrnFRsk+iMUxaGXCQRSwt92nCLAU
vRR948pJHhUGuW0ba4tiUm5FAzOZqp5u+wInBGlQV3R7IUki7+cNPxWoi1ck4h3QZXIml+Z043U5
++eSDRGDquKpOCAP0yJjEy/icV3ZEWhBJrjNELnPexuN5qpr7JZeGD2DnfIyXmTy4zpYvKkqfKEk
LemuO/b34lKSU/CVeIsQ2wuRMH7MipCD9uPvulhdm+I9/mGuTem3j2o7edrFLKJfL6aQX/oCqGfK
/zUVA6QOMFKLwLQmjqY+X1D8VpEkZEtzsQaEyY93FQrEbqVkChrRA2XB/6e8urxooo91qRUcLdBo
SqFXHjWX0P00yd0+s5am7caJDtGGJrca6F6XJHcFs5z7Mb236s2X5ptiSVABEY8UNL3v9JDIL8W+
OrMt+oUAt6KFqbQHbnZ/RIJKrmVI26rWhRjZ7FRb2uvJNBpk75wjgA1tc0V+C8Rr8f5GasF+IoyX
jYSEIJVI3FPweqCFql6JfNrKmhABaq+S3xdY3CYdj81vrnmTjvuZzwtoSsbkc7humicgwhF5GAti
q/Ua3FTo1omWqPm8MxXEweGQzVwKIvErXzqRRHwC4EKUlPMBZJ98KchRw6Jk+Ib8/roZ/Q0ZIsHf
PjVPMjrwAhtdBHGS88hRUQLBTmQ8q8rTkMym7BiUGoQn1M/wvEBmP2McjzP4Wb4n4DxwtwaXvRIm
y+oDvaJtSIcJgK0eJpxdaCMB/14qdVMLkMqoTLQRYBGcHT+/Ikqzo6DMZMKpBjU3SIHm9zZIlU5i
JBHAbeyIoLEpniSsNa9e9xuD4DdvGzGinoM95tV7oCg985OBRA/mhn5vWd26YhtOP60LUzMNZ7Ix
T+QltXgOURvrsyxkqyqAHIpi4gwroT5V7DcDee2T4lmo5V8/HonjSQPVMXZYeIG/x+/Yow40m83o
xPWR8pQQIUoMi5C+FloC0NrrkOZyJ33vXCZmYwQo0QIjGTcJV56S2WAbR4egI7JkZVD1ye5b9ORP
AX2jpZZD5QrZwlE+QNwxdylLoeJ9tbcPDDhDSY+piiqji7PehOIPBVRRUlDj7Eh/F1zX2oVqdhY+
yWI8TjsfOWjFtTB7mv0fw2OixqOqwDJKdonr+uR0Jw0WXrFqsqeNoLS+AOaop7LelcBQ+BnPmL89
xltf27JT+Qh9iRRmP5i4bIcXJDgUX57GQ230gfXxxOhTJTfPwcEbgSijVKfJ0WQJGWPRDKDl7oIh
vFyIpNW8nFS1ZaZKV+S03tPoMp13JLcoSt5lCfeVW98vGWqWxspMV9wmZURPo70fyCx2ZJ0eOx1Q
P36oEFJex0FrwX24oBYw9DblS8xkqOc1HFSb+4kYQgN10++wMg6/EQKRBx9QrbUXlhDE2p/XdgUu
MauQe6glvnKBncsMyzgyGTeo6lizhOLe0x3zQYywd13EpdM6pTde8S2yGq17EGyv9TyfMBB7fTFq
+5kkUpKNsF+hnXVZNPcBQWU4NQE+2UzrSm4xfwszxnzJYkOeGsNJyXCu3EQOPlMaBVlT/xPahBIw
Gfb7Hksy5ias5M6bLDq5attANO2kL+HqVZtmI8pzjjccJFFBU5YmZ2e4DYALNEf+Bqbuccq35vGt
3AxVUKpBKGFZPla0jALSmCgKVHjZ3xuuULCV9ACs7BRA5oRUU+pAKHVr21alKr+v2VV2daz/+PQr
L6F0ikZu+alNRNPrmqxBcV5ULp5mtVn7H3HrZKkBRDayPIgKik+Xcahg+FRI751/0zm5ADahml+T
8+6VZ4hVAMvt6vQ42jRakLGjlPSNqbxbPpbstK8wm8OKD3SLiVaLHVXMVoiGTs3iqjSSlbqcwpnS
S+fOJDoPuRZOPoV5TUhqs+aVQnDpHRZx2ZQ4Wl3ERxzytfqpdCnCqyajL/OV67EwHZL8AuoFUXoG
lVXnxgQTkv39k3vvyBvzQpAYq/s21955UIgn0FP0WTYcWHmYJ53k2OnWx/7GZlNIv00LGJ82TyvZ
aX7Qx3YwFhJja/ajcAPE16/jwpBq1DRgv4yeaEtkE9ZR3luM7+z9swHaJdraftjCDZo0wPSkOWuP
MnWWh/J98CuxMdyY9TqZrByF5Nn4Hll56AVoihMEw4OouLZn4N+Hqm3yPS+6ZgbKLifJsOsg1rBf
RokXtoUhVru1YrSyaNw3taLhvnSB26MT1IsW3GMwH0ni/zY7MATgrH7iL3HDMx5Kw9q3bpc04lO/
QMLL32cSUuJndPNt39m6TpxREbDrYUWN996aWR9HcYFlEAUhtPZ6QVdbFGvyCi2wOj1lPbvLkr/Q
h6cD25UftUJrv748ecbcQcCV7iG3STX1a4XwLH4tEy/bvl2YWsChJ6V4Lt7ztPfWeSoLdDyhPDJB
ivKsM3xsLXZ9QzXOgxFW+zXKwgIm6UPpCavpfFU1XzmTJmdi1kwAt4yIhRQm9KlcYGWpX9r8m5nr
Klb6oUb4eZfZMKDesBYK/tgPUVIsr5lQmg8qlFU+eUYGst844mAWqF3ms707fAw3U7FntFNl933p
Ou/EZLb5jKmIjTLH2TWuXvbM6nVH80ybmYXKE7Tt4lL4VwZJM5W7B4YY8MIv6CGy2Knxa96M4LBM
6KMFQq8mfX0pP1pgjo/Jf6Gn8W38R+BGvZBz+S1BqT9N3JDt8Pk0BfW3K2a2juk1s3lILcIWdkYy
RkZvwnWwslS6lLiQGfNglVGyz4EhOBkGl3VJ0DjwvtqT8Gk+J54Y+oWzHw1oCM2quf5UZYeiT7gS
5rJFQSZVRcz3ap2Q4K9ZmhGmQR+OqhF4vH4XCNEc4KQ2FI0VbVbFoxFV9V64KQZ/b37X7LJAuVOr
TwXUlyYPI+YlhE7BxxOz16tMko6VKHP4MAtg4k/jpFRj6nYQj1NR9NU1p0hzeWFN+UlgphqIlDnw
Bol1yGuGUDf3eCw59Cqu0aya0RN26GPNlkzpf7jixKia2H5tdDqFjD9XX4XzUffIPOHt8WfKaySy
WlPr4wqZ4A6P3xMfCZ9xc5zkIqStcEPU+v095UlL4rKcpqY8/pAexVl7dc78Oli1macLhhD4h5LM
Wll5uEdGzYId2lyQQcFcOKQc7TUDEQdrA993v4NW/ASE3w4t8o6fSwxWpkU14HEU8ZOD9hRqQJRV
pvRkgYX90W+pdZSWzJ+jf0uYtVXKDEy9Ozlbt+d2bfQFB96MBIU7svGKR87RV5VjEsMe4EadLmuX
wH+1wmwv69IP+d0TwB64zjfsW6Dy685pMb0e0kT3o8kdQGVLCu1TSDGUAN7ujECxFoLd9/DRGWK+
UA1pXWC5G2cFpY5pcwDdfVVpYdgu5kXCJVMVzRJBpKXNT5mn/k1h187JzZBBrKUOLPwrisb4xh+a
VPKm6DCOmQgsxTkfhbi+Ay3jz307RrBX2vxvIP+/0U6PJRLSNii/gJMpXVzpouWS4qOr7ZMR9R5L
Ft9VXCOtrstpXn+2j/Tht9C2793/UpfhxLmYmfUIAe8cqGNZzRThNixQ/uCEvdgfVSxpsO8dS/Z/
J//MPbOBZjH5y7AOcUuzO/J1SMtjN012OG/YPYgsD3tg0cHXs7hSPEG69f7y1P7y3ygioazr6zHB
F4hpPT6nvqVnOTGlZov67MHBNS5YwjAUON8dyf8LP5gB4AerZIAM1Ykc5WroocwVHiUcUitEY8rp
c7V7QLdgAI0J5MVda5zH0l+ofC/vR4SF6b7n2lU3Zg+s0/nbXmVP0RZcu2SJ4jDTre12WH2ZM5fe
HN/uJyllUNCckDRioB2J7k/d2l53dSrb5Ewu+7W3a9haeMRzwTYurUoVCGuenb7OB2HDc1EUW2No
1kn/SN+Sh31/d24JdeB5Aa+XkewAhjLKOBG4BkTdLIqhAPQ9U+PXKWgdj4Fntl+TQBIkQTMSLx0f
DHP0/vDOFeOL35VPnVVnFwUxIrAO+n39JaLWC47xkcaUb4Yk2sGZ3LLAtdbyAuFDXBqYX0/I9yQE
xkX3QBjhLjQVPRx8xqNNPJz3c5iHm3JLLaJ3jgpXUzua9aACvnchiuaqIQceLclKiFpx/MQI5xsG
tmusjIpuLfTxTPLWZULZu9Qea4KQp3Ldx6HH1HeYE2iPM98Uyut1gnpoLKfTFtaEdX8a0ge0vF79
D5aApKT6PJc+hw62pOH6BgQX7ANJlD1xYgaP1We48Pnj6xiw6GZb3dPYu2qpjeOA9zopbuFPM6wU
lHgnJBBpUkLmu9VBwFERloEaYwY0+yfNuTEl7G+hSD19dQtilNOk/8d+atpWCH2JJuJ0kNA1Ryxx
q7RKX5sSVn9IQHoBnDVialhxxGFt2dGzllH7Y6hsql1TyVt/16P9fJIqYQHXGg2/QC5nojwmttzG
faHl7i2Onzy9cdoPljo+1u2saaoyaFQRQLWWL7xOmnFcEt3Z/5mNgOnvEIFs3k7H55PyeoXz4eko
klpMwQIF6puQslsPnHPS8Bv/BPy5+bSMadGKv5lAC+SSECIEmCE2KffWmB9igy16dAAhTdvjs+V4
BswRcmpD4cDjJdC5DiEzLlKi+HDOsclxLLxduyFO+POeGJT9lomUvbIxGjc69GXqCPfv4C4tSYs9
V74oG+IwvhrhtV8grZm6a3223JLCWK7edWrCu+nxKdZ85VpngzCe6j7abXwn5nvZGREXgNnupppP
ytBJ33ijIegjNUVYBgnWXVmS6cIEHj8kcF5MLdc6mZaLkztWL9QXieBVpznDCgNRkTTq0arOtLFL
ZnLZLMtRLFWRZYRSo/14ymupUrd/Ou2Us3cbFOV57Noq4MZvLgGn6uk5LRlPVM2qADhCxu0xqgBV
SowLIFf+bZu888Tgi+e4MQ6LLBbHCTvwBzY+yCkqdFOmb+iB3HVJd2zCE9uqzty6raBh9sdck+dy
ItWjBFz/yAiv/W1RG3Uc/Byel28nQEo1Yi6yTo0jfhuIrQsJrHfyL2pbciv4Q20nFcir9j4TOJnH
8O7Z+sd4dvaPN9T1VWHs/d2P1mqLRijsO38kX07oYL6GpC6ARIHCFDHqo8J8TI51+r+2wDmH6r43
iq3em/kAroJK5ya0/oBVFVwkEKDKyXR1+QFHxt+o9l5ODDD2zn55D4Rs03vM69YMJg2NyS+yTFZt
ULan7jK0IplazbcnzQjB7DzwF+5UDBUjhl9PFD2g9x0dOvejI/ZffjHe04gj0/iMW+jSQRbbWBOa
DCo10hhe6gxJwwxX6rY+NvVSBCNQQlrQqracB7PK0ybPMKwM51NRQPpaZRYSg5pX/CNUHtfQfVOO
J84XXAb0yhM4LMSkZBbQhcRKZFiXP08CDiiwnKR06AK5W6eHV0g2hB5BOVzRZqsaBSZ+Q21Jr0DZ
jC06Kiglmgl6gSTdfp0JIBiQ1RtPZrfgqX91aOzQhVJAC1iXNGB8flNijIEN2QdDv3JBHu3GbTgr
vUC9OLt+U1L3TjbRjQHSkDWXpx2zpEG16iYx7/vas0yTahy/a+/BQBWL3J2CgLepozzXw2nYL3ew
DcVkaHGvmmFn/A9p7h0t79HJtwaD6+ZnHjGKDYZoz52Q5zddXMSJ75r+9JppYF2FcVRXjk3LXJSj
yu/ZAtwql7Vj5ojhieHtGeho+wbrqLo23ZDAdfUXktZbRx7iRRSgGwfIVs2L/dIPsuVj2RTSi6yS
3rGcp4USNPrgDv3XJcWCd4llgOj8E+6I+jxGyMD3ZJWz+Z8mOJU0gklyarrdFr+QmlBw4nPu2Ad1
sGvgOJfBd/0+1ALkqJOothYq4viTGL+rzSRGPMozUgp/r+P5zRnUAdmobD1kal0xtjkeZ+8Kfp0U
S3qGSupfAy1G4wK0p+FoVaQsICZ8aNS0sS2lai1x0fk8PfCrkqgOt/ww38cFXKxVqghndVM59a1f
40awOc30Sswu8ozjDNEY3uU5cvRqs8iE0CrS6wW9U4dI44jXg2U32W9rkRZmscmTH3HLsDR1HQSb
7QoZhXVlFDd0invPXSHTu7xLaznSe1Qof7wSABKrVTbkAFkHsfnS42phgRfVGDvhvgllvM/uz/QK
7W8xS4IDolai2OXgDcDtMmHV+oWTc6WXa/BVqHQUCkMf1q8jo2297jLO1H5d8wpPJYDe0GIHrWBe
YnvgO10ghL3AmgV7pe/kEsC/tNEeq3fAvmX9YqY9ic+wfFObBiP1K8raC6fd2kHuvTGPhcismfpW
WYY5VIITWXH5geuDdI9I4//N0nyhy+EOODt1qxaTZe0mJsXDywxIdPn6vu9I0WTsWV+zIcFlYZqo
CZHBL3u9xfDhVnWvBDpaS4P0Ag4ZEkof9QACwhGAq6taBRy3esao+9UZEO1u0hKZza91yMXwkhED
m8Hbi/OwgZMed1B+anxPm5XOYrOkWai+lXh7Il+PkH16vV18sf6oDxQNFlfWPutyKy4v1Q+gAheo
xxGOn986VdqCL+K5JWGKD6bzfDxk0DfpruAEcPJeLSLMCuStJz1l9vRaRZP7X9TYgELmINkoAA/T
VRqgtzGXnBQ3jAdrIF7mebv7grxw94e40Me0d4XqwYgOHWjjE3ym/fomCmomSQoY9RPMT2rFENEE
aMPBj+qZuEkf7v1bJ3XA3aPHl7SUUXcbhY5UVacfLn6HPGLXBxWjY6lkLq0s8NBtUkz6ioDdi6/l
jHTVKoQ3T+fIqDhUubZtyOGbi6aR8Ov9ZwuZECPuXhs9+GF+Y/Erg+TrVCzdB7yjT89xTFG/xTH9
gS4O8kVTbi4gnHJcfsP+pn+pvhq0P74hqgQpnPcRrJQrWhNoIhPBouQaG8w75btGMpXyEWdL59c+
jR7wciVXDTEfoUGgeDyP64Jq8+1QUElyYxhKJ779QXE3+8KwDm1mPibdGhjhqCEgfmq2VDD5LAjw
YJu61ZqURWw1u5ezCVeMlvh+hqgAXVcAiuje1Sy0AprhprIJYGdscDg0/QXl0erJsINa4faEBhWl
LUEXWMp1uv1K++M+bkQdRsoy3XQVB2VKtiZVls8J9AQPG9+OKO68ajhi3KbERrqSkGdI/Wj+H6g1
Yrd046SzrnefJgQuTPEWal2+pHc7Ii9+Q82WhDCFTOc8a5eLsjXlbTu/ZLptvxj/rQ7IyO8t8DDo
w1yw0JQ1lvgBiCyhI6MVCD33xLpPFydrVaZGIr0YLTxK3MtCTBcFuk2uH5Hbrh6uHHa2mnLAU1L9
OFw19i/mtabugOVECp/wti4BJxo7AFy7n7mGPAjECQU7w855D0vh2/e82iBCMvQ9PfzY5Htw3KhJ
LRD5zYKDcPjYVIsRPqBYSMIUKkv6dMf5tNy39f3a3Y09JEUYbWC0dvtCeMyBon2QiI+qKGh8mHWY
66jsXWgFAtfML7it7658IFVUYEz4BSdeCD7ubJoX4MbX6n4VEz4EdWLP+2fyhN54a1lBm4Ya6pXp
Ey9j1zb3TOJ04h8MKTwF2kbDQNgWhzKZtpAuXuhhBmRqR79/JLMPDjbupOIHxKrQt/jRPKkCuQdX
jfohOXsNady6Sss4NGsHDpD3HmkZ9lJhCTGpI7o/guuYobA2zQbKkBhfhM33M7X5fjsMMOtEj1gj
CsDuY/yMcusJ+VdgcaW6ibS5dMMm8lbsR0R8iPy/N+NOXfLnWShHyYpZaqvAfRlHMIcYwXnVVL22
lJiRmC7jkHvONZLd5kHxvjMofUzr1eN09gDBSyAUzIymW7SMDI7Z++YP1bERJL2cJOJqAxPhudBG
OMjNV8kOaSzfj8up0PI3AqqwECZTv+nNQ9tqptn5tdbiqGWjUKM4eNcCdxkVTTIzg8jY4VyRgg/7
7QWINDpafyr2u6MqasSoWD0Jmd/fyiGj1Dl+gI7pdpB45Ipt/tCMIiPL+n8Ge6KQ/24X7+5BSTPp
eh3sfnKznRIoU+3toctHlfgGVMLqmClcahZei2FDbHjAuzfHS/cYgk190THiUBDdcIlFaug1awJ7
Y/udR1dVYHlUgBeyOiSCmt9VDiUx0BCmfTy75SrfX0AgGBE2NEMGspnn/3BloQ3YwhO0IbDLAIIW
bOsiBXNHdcUoF3LOv9H49nv9rmNdv7U8IIu6jVHDC3BEFLS0lRilRYqzsfxASZ5YgW6WWuqCyTJ5
yh7hGo2V9f+OGhzaUKZiDpVbe41ssOGtVEXarmSSYzk8hOgT0z+8Vk7j4DX2dTTUXVhS6/1PBIPj
jQd0Q2cA8hCz8X0C6cboVbC7WXWcTyl3E/PIvD4M+y0xaxZWecjbEZgaazrsGmPZ1BR5c13VLBMS
4PCLnRTsoENr6cM4/9QojiARaXA1/XOnz6YJwz99rn8+SSIPYILQoHQmB0j+hE7y7ll47XyRG0s1
Vmm4+j2g1QCuJWE2ZNTcCfqBTiBltyt1pVANPubgN8yfG9uqbd2mriLJZuGAQxIVdHxHZhwWVuGw
ug8Fh7f1wS9E4iyMhk2ZyEJ0OqrcWSUTeebTzrjzTkCgUJVtCI2j4p3aUTd775zrMOAJFyk2lfhH
gBgc88/rmWnkD5epNJn4Dq53ZYZOCUvTaRYx2uIQnI6C4kaaaAwSE72F41nNaM12ocauU0Z6Xke0
v5nkFhTkDFLwxoZjCrQzlEXrcbIO/g2Je8z/DcigmRGZJZlMizL1XvYzO+XySgBBMD3O5WYoYSyZ
inpscjWEZAxu4U2II0/Yz+G+pO0x1PgxTK7Vl1bhZNwDqXPiVNrxWYyEiP1VvRFZ7H3jUEufIUGj
zYi6kGDn3/DDbZ2bB8fj+T8DEQ1AF4vs5HL8wDu0d0IfYoJMkhZPzqXB15qsxRQE7JceKsI7pZy6
uJniIWi7PH+sm6kERQrmLO5h76weyuyHiyrOmbF/aaipbpC+LmSJkOCDXvsFqcH0XxzrcIY/qJWE
sMahB/Ls+fUm17YFDgHXPFSSUnU9gzARYMut8p/gGh5uQJ1MvWKMpJ2MWm2w9BPIWzJZmz+XuoLG
+Uf0LFZjZ/jL9+v7GlI2/A0gyMR/hdKjqcNRSx7xaIgtqQu2pk8UB1zFmrAsWdMeduz57RO1MoIZ
gvQWHOivcJD+VY0vfr5Zm33Go4Ou/TTXAyxXaTn3rdefBAWtn3YakDYI9jRSxnfHIevZ2tcHBR+H
jfB3xi5p8g/7mCOmXipEt5Ad1ecJnBbo8TQFd+muM1OMkoDjdo5ceyVHZftRP5r5A/fHXf5pVfF7
cNDvjl9h9K9C47985tvzTWuWTHvUeJEOmPkrqcGECqBUMRF0gX6kpp+iFDchKIx+a7hfBcNDeF8l
dvq2njqJWY+23IK0wDbHo4+UI6jNjAkk29W+IwHfU+mLgdA7HRdzYvSPAwoBBJClbp83+CNTK1Do
ZEYyiw7uw5st5Jj60DysQlWT0chfnxJSpwggKUgQLc280A1+N7fBU7zTFA65a09mkmykYc0+BRVw
0rHFlLY/mwhIUkUSD64o1pYNWFoQjH80Dlu24oGsjmNZCuMzT05nJ9+QK9Jq57cpr7cQTsO/32Me
gT4Gm13mNh6FUWp8kK+jHBYsHIZTBR6wowlRSJEQZvUCCP9++2rt09n3THNzac5r6AV456kxu5CT
U6u+P6FGi4/0ACa2pshOS8BsopO+Q6uRsW6leZemC6DB9TGbIyBTCk6gckQiYkHi9vGbKJMwT/FP
7uMb1YwfBbpcyx+DqmTzlz+4taUWIlmMhWkCf2BdeFf2nYminyrOjbyAflF9JgTsMywO+s+1MDPH
ruVnyrbthcQO/EV48IGJIw5zWpK6rM3eeE+MK2WQQ+Xn57WlFfHVAD2U6UH4gZtQ95O39NNGciBP
TLYbDnKXXptof21hmbYp5pR+/BhqvHfsU/ZDy/Nryh88feei+da6DfQeAEsYmCOhl1lgCt8m1OyR
hyV7x6zLaHXMPa2MZrKpO/j/wXvXFo0eMeBng0bizgBYCkJ+tgDd3UN9DjxMQe/4jEIro7PYbWrM
XCjpSSUWkGegORJxSQ4WU0/6Oaz567wzowBgM64XbwJDq/I7NUiOeVa0vXqpvkJ7nCqw4A2QxkWw
7t9Tw+XvZTDZxTow2WEgIO1/KgSFlyJLkMGCPgRuW1YykFxfXiKzbHco8zg87r6zXHTw+KDxgHWI
n0zIgX/kMa/T9wQngHa0VSCgqXCrNxTGmoDO9Z7pTxub+tm9738WLwrq/yFNkFQEO+Ff2vaeakvr
OiIS298gH4iv6T7C87NWYT1k+yDtfQK0SjA42QXjhQIgsf6OWGbhnu+50+ZPrDlHNLoeHOWzQw3H
Q8BejWrvI6MRaNqeap00vzoqlZ2ApUYonh2gbhOz2+aL9w5q3gYjwS2Ed7rpkBhEFggRGdz/B6oM
Lxhe6pUCu40gT9AvSy4/kk0S/tClERSsNZwozEH+Apn6lYpch+pv3O0JQdE=
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
