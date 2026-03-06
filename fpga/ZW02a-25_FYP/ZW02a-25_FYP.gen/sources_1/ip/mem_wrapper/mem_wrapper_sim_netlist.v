// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Feb 28 22:12:05 2026
// Host        : ecelvd711.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top mem_wrapper -prefix
//               mem_wrapper_ mem_wrapper_sim_netlist.v
// Design      : mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mem_wrapper,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module mem_wrapper
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
  mem_wrapper_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52224)
`pragma protect data_block
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
2DAT0YFetdluf6zn
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
