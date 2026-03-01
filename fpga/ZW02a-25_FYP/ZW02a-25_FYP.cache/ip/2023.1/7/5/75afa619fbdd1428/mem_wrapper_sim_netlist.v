// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Feb 28 22:12:05 2026
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
V9tZHg==
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
