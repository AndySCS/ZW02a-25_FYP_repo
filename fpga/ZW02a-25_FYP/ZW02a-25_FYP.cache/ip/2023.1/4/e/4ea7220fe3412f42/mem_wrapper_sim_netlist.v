// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Feb 28 22:08:29 2026
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
vCvA4g==
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
