// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Feb 28 21:34:57 2026
// Host        : ecelvd711.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mem_wrapper_sim_netlist.v
// Design      : mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mem_wrapper,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52672)
`pragma protect data_block
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
Y61XRA==
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
