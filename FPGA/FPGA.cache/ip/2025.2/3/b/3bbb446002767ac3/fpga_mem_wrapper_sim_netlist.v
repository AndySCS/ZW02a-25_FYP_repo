// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr  9 20:21:41 2026
// Host        : CCVDIAISB0045 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fpga_mem_wrapper_sim_netlist.v
// Design      : fpga_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fpga_mem_wrapper,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52736)
`pragma protect data_block
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
K8T2qkgL3Cv9Itc=
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
