// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Apr 14 00:40:21 2026
// Host        : CCVDIAISB0061 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_mem_wrapper_sim_netlist.v
// Design      : ram_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_mem_wrapper,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52272)
`pragma protect data_block
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
VFF6
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
