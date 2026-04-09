// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr  9 20:20:29 2026
// Host        : CCVDIAISB0045 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fpga_ram_mem_wrapper_sim_netlist.v
// Design      : fpga_ram_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fpga_ram_mem_wrapper,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
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
+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
QifI
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
