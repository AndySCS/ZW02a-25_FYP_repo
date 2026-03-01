// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Feb 28 21:36:45 2026
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
  (* C_DEFAULT_DATA = "999" *) 
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
ghew6A==
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
