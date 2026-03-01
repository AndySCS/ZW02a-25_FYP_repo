// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Feb 28 21:58:08 2026
// Host        : ecelvd711.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19616)
`pragma protect data_block
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
53GSyaEIwas=
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
