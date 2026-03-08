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
faRGqbLxXIlywZR5lSmRNpkulYWtsOrs4wElvHTaJef4mmzltb1aOc+Gy+gpmtkibuyJ2TZnrO9i
hZUi30wzpMkHZr192TBbg3K9zC/210NNBNmXp7JRqpjk+I+K1ORVi7zFDBL05SwtCVu+SRv3XDRW
rngE4+3w6q3dhF9b/eIvXGQ7NpUB87ITBiAWQNQZJvRdpA8TE6z9Y+1PL1G+WcK4bNHGyxcylzEp
1IkanTCa0u34rpntZKbj9xqYg236uIs+SSd3A8GYLjJIA2aVLxEl+b7b8iZUuEh0o4msXeRXKU2W
OUaQ0bPpcMld0zbCSBmpay84Igc/X67VXpMWwpfa8SLTNehPrASFpg9vYl7zSiOjmnzBuq/3MFDc
8d2o7At0J1KzN6DKMxbG1nwdkdj9jZMp+ioaCJmbJtdH4hqJhvEKY29ms566KjD6iT1uENlWGnbB
NJpN/63IteLnd7/s/2VB3YbRp+A3hK8GNVFvrV64PHG1TVHe9hVeUT6YCULJY+nVWDBHjxOyQrWo
5aCIot4l1HN8YwrTL8rk3cuLJPFz6EXhtYHU2dvRj6VTdWVHs6KIwpD7aTrMGSH/FH7FUuRZ6uf7
3yVK0ET9ZBeqtfVpnjjFTKY9EfRZFKyf4YqaSmqeBYpIrraseAN6aTcrAw35M21w7CthmQnY7PfV
l6yJoqDbff5dqv8p7aAMU8byn5MOIkkzCb4GJ+AnCj4N7OirJZmMpo5DFxMSwldrto9wV1WwhDjY
uKp6EZ9VSWI4vrKki4HO4V3eGauMkDTzeKEL6JoJN00InrLaMvSPhhUKk1Oe68dApWVcTMt9kC9d
i4sN5WefyxYP9w7yU4heP9T0hdwwOEFIOIBGMsMW0RfD2ljBhcou4cqQtkbvuSJt7fCU9TiMuWTt
19cfb6q+uHDNeq3JT5KoAZd0xk+hhSEKUHToYZRyRKuH1H9l3cfChh8y6q6Vs9y1hrlMcf+bZN26
ex6RaG0RXCq78jZtkoQ+bp8kDRHCCnlk+RNa7nfL9GbpUtuWTu0vnhFQO6SSgQI7SvvLL7Hz2VV3
hOe9o892iU5LILNuJhRREjX4c/yHzdL7JBKa3j8ZGkXmzyg/ThZymZGTLvHPc5sShOxTlHwi8KLe
nUY7JJnxL2phEemyIjMn0y9M8DjtaCfYHts9sJMPoKIk9NF3jyjaC+CpVrfDkCYkeyOoNZnAbDnO
0UhPYtWV/dbR697tm/9XU3SOmc0an8Np8jk5KmwX0PvwJwra0Q/kKs0mAu6DsMchz2ZjziFvv72P
a5Dl3d7AuEsnUWIlsmIv35raLcNOfD6/OA55RE/C6yldXtFx6zTZE6RTdzRjwWgXKHdXjsi2Jim8
3dcVTemPhRX6ZKNNnYymdTg4bX6Gm7zgJzasS/3moENdfyjgEzpPud3fkGP8dIdj/0ajSL6qrSUU
k0PdlQk+pFAHkZjx3awv0k6/S1U03ZmJxr2DWZnMCkICljijvHki6mdk6i/r53zcpDx2gNZYzYXC
FSdMkT/0lLC8fl8V1UP0iTXreNJi4Ll6Cm/pUQUr2rSgEjd/qmUrimB8LYEzrPkSBXDgYM4GI8PE
lNlb0uqUopoBiSFbGTDudcxWa6upBSjvaqetFeCgSzaUWEaWRR6L4BpIf2DFI9xE33e0HckKWH3m
/mC6q8dCGbTd1SogkPyJGLPKyrub8E2Ah12MZZQnfHaEHO0s5cT36D2PPQyMMYrdLVEVzEapsOEj
/30PznVP+L+N4H9kRsMQfPdawyAsaguk/cdAmoTQvpEy3rujtTSMve85sn+FfnC/m3w6MGhU3z21
5GF44VFhbClLW8aK7ULYXcmPYFrYLWZ5UJB3N8314QH1SYM02wT8bLf/+drBabsMONqEY1fxnw3z
1Oum+KpkCJw5Tbg1WGJIEmSQtpg8pr0CXdsOiTZdqj0xZNH1ypY1egFnHrQAeKhCKTXCsKxt3WGh
d33xYgKXisR3NE62ZqEnvSWMpYBFnz4DF1eU44arCEEXqtmcy29JowHZVW9orW+7hFtWdJP0w3Yl
S91FwDaMzuai9iZjOkCBcZPk3RqP1VU7kEleyIzUKkej87THIhCtLfCqmcr411I3kd2jnbV2MU3X
T4zfC/KzmDa4R7aq6oEz3ukC4VKP6uywrnNbQUGLgzlVdrdm4Sainsepkv9lGKKH+rEnsnrqW/WG
TJBRMbj5Z7a7Bzq7mBZ5o+VLjRlcX1Jr0SCvDQd1SE7IdmXX/rFswPVq4ylRMnOu4g1mKrXVewCQ
oxVK62OkLcqwqpbRj6/6s7fG/3sIlblx0h4FCA6J4VjzmH4TT0dCTlvLtZP7COnWnn4Ei3AA4kVo
NWM2f+97mEYC+YX0vTQpUM1ugVLrNZddeZNMt8oqiLz0uMKYBeADBNfzO+ypLgpbvRWi/Vy81nnP
Un4RW0ccM/Z2fN2gvRouDOHMNJ697Z0+XbCgAh9UvFBMDFIBezpHYkXPq0lKHw4E8tn3xKKrl48u
NDLIMlFKyp0mGGeOL3sr79fMG9lOa/M/3IKoVmFmZnB+FxZ6xOr986fSECWlyPw5VQ/lcGpQh/An
5UyDPmKVTNuO9aJoT7bIiKsKqua7GXzi3p4uNNkXkqzDrlMkHt/h1fcZJHCxyfKRQ+AJ377UyvbB
aZtogIDCO5+UAmTQBySAv4jhDlpjrNNEASCBWmTBQ5PoUyc6qZ91XHuoanxuRHFkOUYwuB839g71
ZIy46me+03cojpYhJp8Zkt6WCeRUWSrSNgSUwfp0o1SDJjG265q9TvHifMkHESzS/2VzNKGzCcev
VorCcTuHZEnOuuwP0K9K0e+nbt5V60cpzYNr2uAigJLKd9OYk0EjZ5miayNjytvwLB6XIQlDzaA7
2ta5Vna2s16IPHLfgBYPbLEcbEKglptPM5V+sHgNKhMUTMNlq9ZQiCeFnIltTOMcnkWbu9xDYAw+
7TLEBwTVkzpNSiV8sExiB/JYZ/ltUJNFk4qTO9b+p7dXhR9ivFU0nq3p4jhDwCOuTJf443EufcuT
0NGkZByXr8DYtM9Qst49SdrLCAf3K5KF+fhTid1vAeRoRbxHljxYsFp9G0rKMd1o2dsDKW7BuMSC
dVH4aCE6oKOsd2yHzH2nroLtcjwcwvgZov3EFDDr0rQRXcLGEu3PKrGN3sBcRYPF5VwZIfrC7tvk
pGKZrNDiozUGo95xjA/tXIW15mpvJbpBAnS4GQuQZOb7bfh9+yxBFF+uwOLf6WSGKZBelnkuDti2
G2wat4LL1qGcUIPT2MdX1+DZrcAe/259/C696xNUHhEnSm5H3OOAaKdnY3Yfzojsf9qacgJW2aHu
HDrHOejqiy4JuDUM1EPSejHhGmubX9JWISJ1Tvo7i3EMaBala93kOkEIkD5Jg1RV2+ZcgJqH4rQd
AN+R1KqPCF0XO/H8Lw+bFxJfppaewEjTLsWZoWEvQp9t1d5NWs/qGaFP9ATR3KxRZYYAli89jzoD
5ZCNUeIkK26ufh7ZsH7pC5x6RNdHAPqrppOaLfcCJZvGr87SW64E/iAT0orA+/+fCBhbykUmkiX/
I7Cezj5gNzVD4n/86pHAbbW5vzX6R/IU3/hqtqXGWlLiZFBOXOxIUjwFlySKUQr07a0fgFTXsYC6
AG+09zcm/I/c84ohCdwla3XZEwBY7Fe3Vhz5nyAQwMIxUhJD4TenjWQHxlqgWMBK0dMmXMeZO9Vz
Ggm3Bh3rxKRIGWSWlYA0yTgYtjumi4dJ1p53AAa2o2dmixIg4QznfwRCKx8YE7TV1wU+YPRhdf/U
bInYc2kDuaWX/KhUllD+a/BnIJE6hHllbczvwMoDnYNwBQpFqtzIU8YTag7luGRTcMBcXBLFJfnT
/kj764Od0EXwfu+VHv/eTQVjlT5opV4bNEaFnnyC3jsUK1oADh2ip3GLk5XDK8FwuAYseXPXzijH
Wi0eDKMwOi3RAFqhnyV70TJ2a96bWrS3qVK+0De/v4URSIcgj/RC4EF/J/jAVONVqQHvTftG7umT
SeJQfRvmSFPiOyuBz+mH1mVIqC1WXAh2m3zEEFTBi4OzfYCPVGqZ+TU8IGfvC2yHJcpYTxKcvQh7
Qryod9wYyq0UW3Du+oHGN5bQw67kP4HYpNV/l24QivOaDpUGUnQasn7Ibw2q05tVd6XqjG//tFHF
GL7W9ghU/SCgVImn1pBT0RMBoXxBRu0wARo+ULLRklUocUJi3eijQ3jDYIZEga8GvA1cFcBKekY3
vJvIViRi6JldPQYJmmFucZ2VTHtps/dYXpqoW2MetiN3icUC4Am/w9Ht9DMKcKk9fmsztWcpW1gW
jBaVTy5wpCBCcPEpJEsO7z4MxI/I4yRKY6uYhjyVbA5ZTgSKr1pDYILT6Qijm52BeJme0lyiXaz0
prTHhbtO+AJerU1PuDCbptQFOcTGVNUmKnAIPjafVkGDJcCxi8drfThuTAaARlPxjQWFmW+esqSJ
fJFOE68Ljnyg+SqYb1kzmBo4gLMLPva2NRJ/cuXh8D5WjXcuDj3PgBKlErzeXKFcM8e0GMseIksE
0R8gmg6LdgorvLK8UNSScJB9v9Q73VMuZ7uQjWcJHo9JWTFO7L4mieyd+laa7G00V7MDyRPCLYw3
Dn55Yd8WmdK3iR/wCsB3U6ITPorTkXxzhQagj6FdQ5BXrSfWHyLDSJJEYjNRA7tJNMh8dyDE8bBd
5fASfmzrtKGAq4iygBzSGR+muz8ctwVZVg7kFn6xwKhb36HfflkbtCQTzDtP88fOkzTiaETx80mM
qj2tMeENQet+ySxdTgqUDF95rct7S6rL5IUSlAlFTfDR+O7xYGnAtfAT19hoZrWJrGKZ7jiZaZcj
h3xF4IVRk9fKP/gG9eTl9BkQ3t54CYOx7qDyJC8ASLnEkOLP1pCio/SMoAqkl6l2ngxL88Q434kJ
fNLl8fNd/PbcxM5lncY6891p34nN0xUuAFE0kLFfUMJ1ToeH/8MLv+jFxfRPYZzN06gUjmDggToz
/9AbV5t0HJqBkHJctGjN2pbNuM49o9osqg4F5+TFdL+up7QqL3Eoust0kKgrleZfWdEwj9ezxt6F
rMdH9dbDbyy1BRz/QNyULJ07GsmP++Es1S+mvrVmT0H1nSncBbwiNDEkjXGI40GsqY0dh0SuYlmw
eHjHZEeoDgiB7VREGinKsJpDcJrR4cjwE5fVmOza1EKTOv5IUDfVqDcZo9PcDRPSDRdE36ylGw4q
Zkusf9J63024e5D+lpDFiujNH89Fs1rgLEOeick/l8kF8A/RYHUuzjZ4flCqbFkDqMtfhkUqrhlw
zXSto2OFfKajlCg3sPZVLeIhGFr1O1GAhIbXfqBETTu8MYP3t1Ne8kgkS2CTYHyyRPyrLZndyaTC
1R9KkWCWnJRumPyS9kKuPaoHemK/qKL5RDF5+oBiPEuEXQpzs5PGsK+X887vLx2ZyHV0yVz/rHDu
NyY+iMG1xsi7Vkqcns2YQONARBURcjTAseghLCLpuFyymnPasx6FH0HoVXiULCbe4nLjqca4e/el
nsbGEyJlSkjIKYx5TMH4FnT0DzlrUjN4ezSGi76jtd8a69zTbjjMvBLPxFuLbhiOapSSltpJmtD2
scWIJlf6j1cBjk0JGSl3IjQaU8e94I+O6ou1UY2u9sMUv8CmRSS8hA7VCTB9Oy0d0Z1+yRmTXOpM
9vxH81t3/sDaBfAvUopngQVj15vThwUzF7VsLndZXDTlF6YWBmE8UggEwbnp18wqrjDg+4ktLIcd
ZvaECzKm4rlsn0ZVTLH7J8qgtyfH4EAIye9osrZliNlp8I3+9U2E3IOT/xQhfp89xSgqSw8TsGrI
MVkIAVEw/QpvzLATc8EfJZ0FQ8zJGhGtODZYe6Yr4nlYUmIn/lkEUpLqs//NlJT3nOsSsPDRpqHP
AicxXCeRN3RhfNgnv4xuP41Kk3614qek4innplOQQa16pjeHdzAPwYibe8Bc6TuukDl7p8mROBVx
/NW3SPCmRm6EHS9z0L0Vrh1WJMsNVbQeafymvtzPlUVA6qoX4IQOSPCoVLVaJb17lfphLovR1ONV
o7c5uKrXvN9YtKl2tC54n2jdxnmvkgNaZYlWcAasayba9k+pGlrUtCCWbNUX3Puo7WrarumrU0NW
jb6GqPbd3XTUR+lVv+E1t64SJJFx3W4HRDSiBQth0Je53na2P7XpkNt11ghp0qPaYC/Xrd8R6VqL
cr3pbyYhJeRyvdfIPis2MFQ5xJaFYsGxOS9BAK1RhD8RMaceSooCbNqwgPlMyJraX3YfR/SzNoiV
18FHP3IAYkK3mCRCbOHsg/M3+Vm5EJTP7iwX8gxXZYs+2pjdlKRouD5em6oQobgsgZGgPwZZLbMi
67rJ0s+wy0+ggJvE0l4MbRTRCaoT11nP8/zteY7AAUVa1V0EhQe/7DAPeGEgAUEKEfkBGd6uu66m
6U1rb+ZanStqyzWHHuJL9HRejnrcr1XWpx2yVH1n7I0fX3UefrjXXOat6jtacjmSpcxk+7Xkder/
OiRTAUcgHHy41yGAjuheccoL4nPArIsX1GCISV838fHyz9jzNkaIoObFhV5C2s+QwkZpwGyRDaOW
snQTwuTNMRuIWwH4Bwy7uNLjY+p6fL3xdj9KdFDxBDSeEcO77b9Q72elQ/6PtaSimagIPPOTi3E5
oEZnoJ1PoOV3qZoCsB2TtopMf5RsbK7T6PgFxVNFI/a4ynyGAMIuRnScbw6+FM2UODcsXocjRrYp
LwizssKKxanrDQRh9ABVKY4ee4kPfXzvKd0GfbpVpDDwJOejvndQvJIz9XevviuGKW0Ed8lZaK44
PVsbyVPhTidXLrNl0qi7oFx/hDpsSeQI5wcsFtUHF3z4cguzzxKLufAAeUuxuT/sCWBbfH9PbDyx
w2i9HeW/8d1K58xYc36+vghrue+Sr4ItoXazFZmXlxtB1n6b8uH7gGQYkQ/iJE4L/PWt47FmeKOw
W+5S4HRSgZsl7ERuWX8h+IvttfUBGCyNnsNaAiPs4MEb7p8DdVox8zizZY1cH4rdlnKgy+U0C9xp
JnNQdXTNDO0MqlmJ2Jv4ixix5eVb5kZFT5Sd+dOZwXUbcM5JRq5iEw1EvZNhwGWpdifmzXvsV+zP
euf7IGK4A8C0fe83huxx+pLTwzdcwkw5JvYowqhhjKZN+AOPn0j1ERhHrB231Emgd5ASoRarp8x5
b45NuTpEA9bHEhGl84R/SiTe+bk93w6UjigVUBmSZa1RKeo7OfepIgS2bUqAnDdAuP0iK6CUf2Z2
OP+qqt7u68byYeIMIAAT/OgHM29yeavikA1T9rMLyLMIBwvN1AC1GVJsU6mYq4kGYt/nnkCzOUCY
1VROXjfJMKh8yTmB3YqxtNB7xPy5/KwDI3KeFVR2uqJCs4OyaYHwMOHVaZjFJrLJ+eDrP5aLOQXN
+NbVD9tfT56o6ILCQl6M43sb3QxStdscoL0pm3LZNQOkrlCyONofN57GAmfE2kgMv3CYFK4aGsiL
iYMWH049SdCgYaFIHXpsW6brzrJIpJG5f3CSu6tIh9oJPjCBdpEMJYk3PNOKPleUzmWO3eqgBtqb
FSEvmIWwK9sZHxx5nDyc6yF1BGOnTB+95EQkdCqHuf3FlfuERTdOTn+CvDby/59aGKkqXa2yyxE0
9dcsbEgbwtMzJjND3eZ94vlWej4ivg+zr01GZUe/iGoVDzGWihEFdODWijeNV2ack/ll3HDf4qdO
nhiYwQLn9YKQx8iWUuVii4xf9CiQut84Ur9QelKuZxROX5q1UBZZKNkboxJcgTGMdxl+x9u8CTIq
CXD8+iDH0E6BOpmvxjuU2qfdVDv96shaHuJdg2aq18FuyyfJE2VBPNpRcGTyisuwgJReyzziMQIG
vU+bR04z9i5A2CTqF/ey90j+4Uj9n+ccSG94uMdEo0CH/lLdmJD3BqHGfJielNpkaBzTpKIFHkhB
i8uyCIQxkDpnZKnHPyen3cH+LulZ0FSXlNlVIJbNYbwR+i5oAiz02PHD5XzpDT9+GpzjvD1lIQDJ
oR+Hi8hVJOCA1jhBSB0oOy7WBp39IY+8KLQAWs4wmXjnQXaf03mltCDUcAkx2A+kmvX19XbWrRJO
NvbYKmnVk9GjJmeUwfFhxJPCXH60vwVuho5vlYi1tj4pXTSPUTXx0A4kvi8zDBV3XWRZG7CvwgRH
/YOVqke8RZvjmVv0EX5KeOO/2CtwfnuW4wmuI6l1Dj4Szo3+0Ko3ZVDAHDBejAu4DewqO+DmA18v
bakCZOTUy2X+Pl4lqMc50T6lA52uY3bOa2AtSGtKokEBKDOtL67lOJ9gC1vZLHKUb5Vc4W2LeZcm
IbeYIOaRW4aSPiyB6UCG6c4J3AlCp1EUPU5mD0pVWc5ZoBoY3z+ZsiiKlO4WtgTz4YylLTUxQwqq
GJEfAwZ60MhdzhyJ9qR+3yoi16ty7iDAxPOReAR76rX1HpfeiwozPH7MFj68h6x9C1Uik+L3KFSk
S2qHE7S22sgkRoxGbLr+xboNSy281CCeVK7gcMBJPKl5SKuoxQewtkUg0J8iYwAcME3YfFVyxCFd
8Bv3kJCb0is7613ngkRNIFtfSGlavv0VOzF9kJ9jkzdCk0fJ01esyW5IOAJ8mVmTO+H9KlFrGLSH
4cAbMjqJpiWrIZaUhPdH9uxrpVZfGWARGgof/CIV6oa7UN4atyXz3GOYzH6nAcIMDsK+4QqUaM+R
iFHB8/Q+rgh3pP7XVEF8VVqTjsa7j8WdH1OmoKIq83hRt623ETKrdjKM+TvGvtD+RsbCNFkIPCeS
7edYCzjia+lEKw9Bl4Ej7nOz53T8CZmW+xqxRo8uQ9XdqhD4KqMruDPQ8q0wC8XFyS5t/jGxwDLh
VClKhJ6XfQz4FfZN5Rhs2pEXf6MdPP+0os7FMN5g1p7kyF4YjEv90brcFt6O2mYEbz5BtXxueh9O
AkBafHu4hI6+48pfuWJHwO68GJAmtPA99CBrQk1LFYuINw0razRt970EblpA4R8muSqj+hS+n9ya
0JVeH9wL+OhBP9JsPvJ8xwojf/IM5I2p9HRZAEjMOLT8AekhmLLUdXtxMS2eBSgyCh59bnXHAmYQ
jnJFd45bz+34JP7tZoPfrhddSZKK9FfkYcUGK6MG0hq0njsjTWkfkM9X79IsqOd42Yw6MCN1CXzF
TWr2lDD8egEWbO+qMcKw6XvQ56WrEfbN7VHtQEXzQey8rEg30aTdlRwT8SqQJAP+JLtrKrIxwov0
E/g9Qm9UigxMDG3PBsLqEIOKild04ZkutxNlmilGd8z8mBI/ryr9OomcY6FsKkP3dsnJiXug1Mfm
5hoJrpMq+QHdC3sc/zJ4hpiwURe0moVB20UkBHuenfJvQCKQFJc9mX8yreqY/Lz/rA7MMq4vax6L
C55EAmacgRoC/wQo21mgcyTbeOCGLiAUmEtZkgyBtdehLYzrb5k6+GVL3hKOI+BrENiaM0hP3L51
fkjKx5lue2h1aAr7GgRKPUzRFu+wiYs7wJFvgr+YZZxpZ7a1YNc4zZ+XRYXyPjFX654N0CupioY9
LphxB7vK0Y4KWTMJWsEuWxoKHlgRA8ECmX+9woLluQfLdhzgbxg/DbSswPGaBIah1GCDaqCgBtGZ
2IlwIlQt7wHciMsT4neTeHpjHScbQQqeeNaw29gRuxRx02URl5w5Q/jcPXlJDi9W+TodU0qQqwe8
IkXPayucnBnjA9lqjo+ElmGZghIIYF1IDwpAsATgLPQF8SjW8wzww8OhAK2rIaJ+Ae/5rykBJLRS
YJ/d2qi1ul4RUXH3l+m4lHGMRRSkCKmvEiZ7FKm4ed0dDw8yMJExWlDXsnXv42DpZMcBLZLaouKd
hkDNysVKI3nGArNT+67UE/ynn/m5sSHGr8KLSDSGv3P1sFgoKAGzfB73q3l1HiNXyN8weVWsBFN4
4159dPdZ8HPk8w1k1CxlPnmVLxHhw40aVVEBQtuibdgOqaizhDmzpzT8IjpWaw3VTDkB44z5eIAA
LxxWxvg8vTF8M6cJvLhMeTWe1eX1ZApR3ZbcrR2fS0TvruJRelOmkgkoDlK9PiD5a1bAqexLI5FH
igxk1jRzXRdEJBv1BzUV66CANfoyvyeX4MAtI5QNgOjk4bddvGwlV5HkWAHWQgPENnRRiQiG/VvC
aevjwT0S+rqRMN9xVVaNybN4McdRtpTfbfT3UibekoQzo2c5dXRIF3JF+f9Sm/8x1aT7c9GaaFu6
gknpKs1MbAN6A30WK1OYokGC5/eDaB/Cz+v4TOgcVd9dQ/pgsjvxGAg8GJMBeiB6X64pmVZuG2rw
tAWZ+ttU4OtN0zeUlWKjM8aZO3VHucBwAQKK3a5GVSAY7cCqetoAgQx9y1LCUGPeVqzrTs+CC6sN
Bcw5hlLl0imUD93juIGnVr+yNpq/YabhOnXZjSpQPtVEFUst16Gv0WWn8EagZWWdpTCvlocsqTzE
wC7e5N9y4kSuscII/yHAJCdHvlT1v4Y9YqGdl25KQnLQKoVdogo8G8jG2/m75rAPbeweZFlDL2rs
JPIEan1v66cuMo7Bqd3JlnckpdJ6uv2ycEBRCYzsYd7xmxH8h85Zy7k4IEJtA4VsNkvFnj+eL77e
rUgechNpcMP0XBKuy3Faew6EDKEqAW92i9MhZhxH72viVBb3TciTFt+2AYAXjK2dgkq7SmAu8ZB2
RCpPtd7V6F/+BXiSa+2Cgs7qhDplgA8RcQBeZUlm1EAia7cePbB/oIL7BZ/ErGZVO18SHnLWSrid
3XoCHzjWeiqo6uyuB3OaGiAF/yIMK86gAsYmbWS7XGXgei7FUxbnpYKlLBjMZPBVmDeP3NUDq68f
vCO8dGepeCkNjuSGMGiILE+4dl4u4Wvkc10G4+ML4lpLYS6JcBIeBnYuy8kkPL8HdEjmixZd+fff
TbG83iJZE2AeFnggTK7eO8urfUFaLjFppvkxh4dF2wxB5+PgH7Y8gbfbWT4JTLKHOm/OmiDPBx0q
gFK6xQOgE5sjPNotfai25spMJqBhphTwao6R1dsOIhQctL9rMEarXGv3reV3xRTLYsHW2n1PZbYL
secNKnFu9eGgL+7WCGXjYGmPM1VSMgm3KcApj+Psjcx1iFNVp/+U9fOQLFjMRNdKum/Qnry7JGrT
5fww9RwymHZkgL3Es03Ddlr+NARrtZMwrMwY6UUW+81Qy7Un1dZZ9E7GXtsUfE8fOQmaBr8NwK+O
0bD9gC7l/7lxmHVT1cKzhVDUMgSCxezxSRGrhTShLPRKOT0uaQn0wLdPOTZf2MVq3VFnYOSynh+S
6PPj64tMRSd6pklzavGQLmkla9X3cQf9eC7JR+yTiloXqKwdhZJSE7izVbyx5emOvi/7V91wPLva
2NHiQMzHx3/2z9ShZfiizGQjr7QgwwSQU53vq9sgZgya70GsGLa/yzpkEeMt9q+LBxDtsunHEjU3
rRKWyP5KHNrFRksmwIghBpX/mKurdzisnA2eRfzp5G6TsaJybu9YhXG9kBrsq9/zVpBJHfVjVfV3
P8IqxCAbjGyCR+RYM2pdzv7meSA+PxdpIc4/ZfN2gFkZjucEy4MY2ruGWgXzZERfYH17XbZB7XGm
TFPvNgrx09r00pU8e+iPFz3YZHvcJ/6vIs50yEpSOLqTNKUaPRVcSD90dJnkFTXUY9anAhJsSxf6
gsKEGp/JKaymifW98/fGzNOXzi+C3HaMLyW/x2I/wd24vEA/LBgmNY2310CzjYuDpNXxttwEMG1Y
dD0siYFcxGc2fiJbQh8Nb2MkLUA9xf2JVd6pEenRuaB65pJxogIz8T9GFSxYrv6x3GkH3qX5J4ER
e+A+w6o0XIOv6P+5ZMyfhHlvoy1isR8kGbYEedCbbf+X1RFtVQ7D8iTPuXQCHF6JCj314L8TvSjv
pBJHmta5ur7dyvQTLCTwVFstfI1vM7eGxYcfcOWU4sMH/y0yFNCeE04p9yOBQkorScqEKi3MkEOR
9HAkH/Ze2UW0+gOb9K/1Ak1uuCY4OZQ0AQsnL/Hx9J4Ndhi9mTiTsxTJI83uVe6PCRYxCceS5zFY
vgSsWWDfSPzzv4iwSZcLujKIgkk3EoxMmDdZoqExxMdpIriuI5IdmzhrQY/xo162i/bGDDf0OGZT
AzdoGC3k42efmUwVkVV/1EMO/9LHZQquItnf3Uzylj24Fb0mb9Gsp0iCksjZRL5SHPuV/g1dTrv+
gsGAWrwPTGkODlk5h7bojwhTwEzYRY4kkP5/122271+UI4QbYOts86PfE07rbBFMI0aVwQF1VxJS
rKo+QTVrACNosgP1Qe3dTQv79M3PKsTawDKnquA+PfmcUpEo1ctBFcmw2fFEjVSx/paQ3O7wp9t+
SnBqrNmkdtpMRqTqf7gYgUGE8APHMWeqObg6U5vPlmztfEMMh7ps9xnO5W3CN7cobGZqklCkHVZv
YIzP4iOXGCpJ4fvOB0ejBO7PLPA4l5KQ1CpGamAWwjnavFL0jsre+C89CmTLImth5nhpeRCgXu7K
dpsZsR1zHrlnZ/ZS74cj0yCEh5ZyLB7hJKvX7II8dT9kDFyuoxmwk5QtbJxCFooheKAbvQHCNnVc
cF9CcHxdSFWGd5UJhMXd7zLL1b4i0911n2R4RJtnSu04TNWxZba6gSTUPH9fseO0OxBn3EXP186t
yk36VPbHy+aUXeWjLetmH8OKzePP9K/KnjnC4svLk5TI1MY4wsPyDbeC5D0x/K0d+4zkYtW333cg
sxV80XFm8OtvlVG7AUn9zDv+B1dZf9ZP+XALFh+H0R2/o+jwh1rhGUi92Uw8wc6GI5Fb+IeYjAIW
5uuHPI8DsChYe4rnUMwVS+mSJWT60q6QqgTAh29+mIMwQtk9WRvxAhcmlkCx1+H3QKJ4wyZgab70
jcklHiaKt1qnRRo6OxcutaQA4dnAsxoZvsXkqYXyCybFN6DCm0diwXVGgaFQD60OwY9KPGHTyEq9
XgmujPC/BPuI/hgCtZSeJvaC/DZdvkErBnKKesRDc7USAx8he2rzlOxJ/cnvcR/E+k0lEejcQoMa
HuA5OqBUiR2fxcVfAQ5EfSMSebqeXBSEo5N0LWN+rn7/QW5wOkMxwxsY9IeNAYUwzEsGPkKuM5fD
7bFfRfdfPYpBj25aeSMgfo5xWj+ucmIgIuInL3vpfx6XM/hYTzxQ3UGvNsCFPjLFU2wcUC/ME7sf
prGosBSD+T9lMRnTKrbcEeSKY1CRXSZUE3JFPlPDVL0Ynv3h1HTn2NDBoF07V05GhKxMTgfROV2U
rWS1mTpqiAebMycc2SLqcF3ykWnPfB0Wn3Ujp033I69isiW9ych7/bW/AdAAA7QqBSEBE1ya5OHU
lHmLlIjgtExdRVeOEoPUx7/hUCksLhgZ9BSJm0VFnSl5GmkEeXEUOkI40Wr1z6MDmS4CTo+iGqm3
PCh7S3/+6GqW+LqOghkk4srMTIZFtyuwvTWs+2dr1qT5N7EIpzo4LxY01LSvwBJ9kkRjZ4RYMbvg
o6Sv6MdLozrodFd2waIELBYndN3Muzt+nGzFbPbyr6czbrH9TO61NoNv71Tct/s2jOCQajsNYoM2
gZPSlFOdZ2jugNuhLejlaj1MBYYo5kCo6j+ox1rO4liQdkksGHdZFFp8uzyB1P+J1/wda3TShMZr
Aholm0sz9h7rjy3+hriRxyR0iErFulNqkBp/PqGntMOyNzylP3TJK1TtwZJoR7Qv9S8JFlOkLj1j
UO/8kSvjsVgffdZEwLjlyTQA1LcpbP3eVDBec/zn3RR4wPVWZQgUA3FqDeoR5cCTi6ZZzAbUyIj7
7rWJKZFc1JKmFpZJenbP2kXLd0BzcTm4+5iefx6C8n+jrJDUqb3+/tqoaOSjdQ6WGbFCyMrrqJQF
tMWeuMilii1YGpM4jm1kja6CftRnoEN+4r6ob4BiBAilu+SAOY3PzcgH2ccqGoSoPmW2ssh4D4P9
Ne4hhHP6X94v7a20MXnfEoMZnnEXf23dMYEUx0qdCY6rzAizCg47o/NyfHOLcD133yX/1bBIpBFn
c5xSbquVtXIaUxGh0Iyaq7jER+E2EH8ks1LtyJF/NoySkEg+QVGbaOeRvcLTbZV8/kTeZYIU/9c4
nwbM/p+23XTnlIvDb9hblm26AA16AILv+2RE0mnWfARYqTkdhJl7jCAKwyhMxdJUtr1Jg+Nvzzl9
RBALBuhvsjX/B3CGH5QyWxTugOrgssk7IppqwVNQQIwB4/CKQkGJvXQaPS22BNFwntUSukOXYutP
jY2ifaZ3jcRLg2yrwFDrTCI1ML8c6FxBYAaS4QDV4HqZtMoKeijzEGY33NUUB3D1RLwnHsf9xeWZ
I3km3e1yma4UihPA9rbbWgQlE04Oy79WzhjOvAKOrOlLHfWkNrlofipN+WMw2mdWB0QY5s/Z+kks
nOFAnj4Xeu3aGu0Bkt8BU8rqbUcdflM1bCPqRFIVNGwZ4mklbiqWe26GCNwoi46QtJMpCSBTvADq
yqbbsXoTTyslrG4WAGUwdF5y7nV8ImZuq5pIIr1XHdP1n7v26twXcClDbY1j/9tpgYDQYwQXEcxl
NTl+qK7iV/9Tzkgjjm+s+pAEtFaxS7TZhyBJXlRRRg03D94qrqvsV1lnhkU+0l83llGapNC9Wp1p
B2FMnF6uYNvD5RcdfNv5wuioMJrpQ4Um/gerlT4KbcwxYZrS2e8C9BuXdCQ3s34w8/XVQRx6SBtl
0pUG8ydQm0ZhAAKq5VZw7+VQAmG7N7ZgVVzhSj/gFYQzC4c7G+OTMX5fQcj5t39FOJLRNAqtNDIR
bY2CY7qle9M4x5uWzAdmAhbHqvgx4exOoYR3ftJ1zOTR9ORz7MWAbrh1BAmO84NLeBYKradYV8Ks
uZ2fLR9H11l2kOR3j9sS3JWo5NCUz+Qq8Gv0bWsWqnFrQg7G0PToaT2NqNx5HKJBIN/PxfHuIxmx
5OiutSx4e+uiayPeoTqbsEfn3dGQixGKhU3j8K2XbvPbOtBXma24IMK2d8qaXFwsmTVq7ijVVDu+
/B+MCCjZKU8mg6Y/9b6WmtZe49+e+6zbNCe0yux3+ghrRWtcKjGNP4zGU7lufW1oaNXmNV5JWlKF
vsBYFQKHdZ+uni1RWiBJyJsQhP40uddKzzGV/HnffXw/79DJATx4uCoyBz7OOxJOzxdy4fXi9ksS
tm6mbIiIWqh08NK9ZGtdL2R2hj5GCgNj5kuNFDEDLQmRHDqDg9IOQEvS582a3XrbTcykmT9oEOCV
xWPRq15LqW/fsvoDrQRg68J90GWDZYGFcck8ZNwIJ1hn5IK3Vgn/mvem8N6J3bdoWlTWnVzwo/h6
6aM8OZLRI2tByxDI1l4E18K7E+hHwK8XLEbmjTwRFQkfSxCbjPGgRZRXh8FfLP05jVM5v+bbAuWw
KXL3BM/y6XOVz5FVrEwoNsh2tG05VfI0gW1FRUEow4/jmGjUx6e9zXjP/vL302bTumM30pajOkke
9YV1IkFiaQsvP4fX9T3gPuDRswGfc28LH/x5DBLZnFNBFtcA4o5/6523XMYS2uDPSIfe0KejmZiq
hFj1pU+J1rfiqBZzUnBlY/mlM7eVIGW2wlcuOZ5j8IeUIyOz+vn3zgjJjfU4sEtFaNwYVbbNSWUO
zZVpFFeaHmnq50d3IPIzx1cOMwemAJSCHccYHQSLOUzUxqSlsPjT5LqM7ccPsBopf0p4ytw4GdmD
bY0jLZtCajh48ZYwnKagJTQfyASOvydYmdshZE3i+W67LeOTKibxEcIMl0pIjLIeuHwpOEOVyqpz
bwafS/gpgIxQSon6c/nw84MwBJJGT80ldu2MHtZ38lgKgFTn48QrTwe35Kz6pulMWHhYexDkVDLK
ms/X2K3FASG+7nj0+lu6AUmXwGZNb6qJlyiO9N0Ktx5GJq+X6bqF8xA1vnJ/I5ys6NTnXjxvhlyx
a7O93VyRPi2EBnKUEpwqVIY50PLehAk1D64BDqtGUi53RLNdRhABS0KZj4WeW1nuB0koO9ouZ7pr
GNo6BWntvUByYls4CyIFrlb6tjdNzw8H1MtIxjU3Qvcb9FsUh7NqDLZGp6dYpJIODrczThhYSLIq
mXuXpojctrKE4IuF0JZhvMupwQUKX3ZRA0TewZYukzLgcY/lswUHOIUl4MqmRbWPQufle1+rLIcm
DHY8EAxLExfjF5drDlyKS/O6ydSxEG5YifFbyR2jkM9bhewhCriZ2xBENS9OcmW0olFcK/M0bGlP
vX2cJCL4qbcrrg7M4/aiodnfDygV34eoEXH7JWyXqTuYEBho4MvkJh7Osi0TTtomI6CPDdM7q1hR
ivZ2ivCQKkzF9MWLdchQzlopUqJ7vrtiQaVmASqUwzG/j86pxRWolED76P0pJvOBkrCcv0PZzYyT
5kXD19GwjsAVr0bspRqv+VE6GBxJ6yBi/wmatxHv4SNCtxNmvFzlI63kaNJD7rG1d0JgAm0Uq3Zc
r58uhzjP1KglrAwEeiY6aMqucTfk7XYCQXxWerR7d0TxnjWLeLEosdJPGWqf2k30YRS9aaTA/Lsi
DEe1SDUJ7wdDxAMD0DqcdzYjUTzzl7tdKyQAfBElwonsQ58IXmHDzw//pe08vtIVOOwypykdoz0Y
wIo+uypSapgIVYBSW0313+s5aVc+xqJek9OjfLSDX+S5Lkx/1XpUksvzdV6ZCh4p61V7OymhWTf8
/bN54HmS4TrizgS+Me0zRzXs7yiSRWUuFD6gNP7OTJRqRGKNM+schE3JTnjBLTyzw8bxTvzWgVCQ
5Vw47iuGhTJHtjxyUTwcfWWF/OHqC+aF5kR/oQyzobPzD+O6W1ehfGEXPaRXe11DYE+9RlB2TeSs
B47d43phGYzkuId8DNmKiD0mdJ7R4nzg7t2JJ4XU3qyUcKkycPDbDtcwOcE0CRRA3XgCKrSu75yG
oQFytF2P3TvdJy1Nxpp1dXMEgCTE0zKt+8KoadtxDSwdvfmv43LVeO1XDk0TciSxNJm4TwG0doki
OYPwHDxSOtpYuCRw52lt8dKZ2S5JuvL/tWJ9M8M4ARiTFf4GBe89+iwdRxcUWE6p0Cvpvavvo2G0
WegpkpUkwdTawjtrbVsDwqZQoRs3k7B2ax7SH7NtR3b69Vzjs6YEG6aeqx+eCL0/bkzfk5vwDVPx
IdwV3UWlLCxMwApEiWHr3FGKP0SnSn70+PcA8HC0ixx2vv6X7lyKiWl0oWZthEONGzwHbOtDchH/
PVoSFeSiJROGBs5q8rYThmvEWanet0+ZNtdF/I6adIQNFnrRfACW8SLNeVYBE/74RYsfX0BrJKY2
Eev0JQuIdOQjiAmXRB/GCPmiYOAfgWV0wGXZS2fCtoaXA2wiPIoIpFKEi3VyEWI1Hq11zxNGWeCd
O1WFWRn9mdZi4iJYV5/Nfkyoht57SVIl4Ol+9lzuhrvrWbbFyzwG5kE4BMX5t/K/Q7HH7SUbmlyU
DwMzTvItLEEY5SJAHHk0SidWZ2yCJElLSx2+m4qXFJJxEpafX+kN1NUP06eTzahC5lRk58E7uk4k
jOlc0N0mmP3U9NDE0xJLyEj48u0v49S0Ybba/ki71sO+gYUQ1XNrY/HL0LG7K4B7/fw4YLBpB06g
GnafJh5p6XlQAbBJZ2B6Z+anZGjLEMwWe3a0rrurct5LmHY/EKJO6eA3NN+mVy0xLco9rJ2arbUq
2qClOyarmITWW/wsoMTmvhXZUDgqVM1c4AwZa2m5umgwG2vXpsDPjLS2jZVkb8KRMnsqAuemMwFR
opRqnhOzBhjNAZ6vc9SY9pBglDd2wJOBthjN20ZzUiUmvDClJvm285s6fdO2cDKC6GvyGHXn1pmi
MphzCy2kZD5BXivmtYFwEWutONPgCk78vBG7RV5gFZ/U/pMKF4X3UCkUbkMFg/6EwO6HQnXt3+8E
wstBI//BVXEbrsmbOdX9H9vA39qf0MPObj7JMITp5uRA3NVyDffs5L1vrr5PNTLov+cv3koBRwlq
XdbkqXIqysxkZpm2+BN4x4MZl1x9HScymMXuNOymgxsZC7YC8o3hWu9t6OycrDfsprtlC6rBgDu2
4ZvryXl3zymsD8R6o0wYjSdRJCnmxYSTJKZxCT8sbxHG7bCeMopgTy54KEK3hjmrEt/Sbuitaggc
5KD03Uh5uGh+BiVRWbpqzS6NBYSTuQuHboZcGfBvpDEeHGrb+yzgEfiHtlq8hXgLDsbCKDkD3UXF
D3724hAdRonms/CmMLzzFJda2aSqQReVsYF3tjLsX6vkM0tINY3bfaUju56dJnCgPdpgeqO8pjq7
ReID1x6zU8N1QTdnjjR4LDoO/kjLI0uEpwnSCpq7MnaPbTQrreckakhHCtch1Vxeegydl8nhEeBa
ApmrfD8ApPpGHp3Eofogl9c/4zOtL47caHOxOSRC4nk1InVklfbxZjlc1ncSacrEOe54uGFO6632
3XmHutFXD7RPvVNQ0vCv+ms0arN7XJjzG+0TK0c4EfcPj+IER6cdKWqrAsvl/XxDIzeaQ4wLscXV
zq2t68d+6saP6Zm1GgVTLIQdGFwzGJ76hnmLM2vpwJ6wjqz9q86o8Bu+gB0nHGTaUSD9pDQjF0/L
iJUZYAYB3EKTaPTBRnst3FBNE9NXJoAdEInvuju4YTsdcKIZxzsvBrsxP2kfeHiRg44/waMKdyom
zvq4SROPQjUmVLM3BZTQGzTspTdSdKbh3RaAnjKX3kM1Sx/9X++1A/ha8MXmh5Xur0L0+FVEtOEq
GQGkUmXKpWF3y6QPcMcLFliPGbWtWSsTZKmz/wc3VQBJSsFLpfWUXN6mhWoNqRaDbTBUqwn4njgW
B5t72GeyborTm+TvZRYBX0AjpaneawI/0gvoGTiIJDAoDoQGvBMnixub75wp7X+P0OxcIog9M8+p
KNurChKHoraDVLl9LvhFXu9iPxn6QCzzdfdilhzLaG5XC9vh4fRf7cY4g/1vWUsyatO7rz12U3qN
5C/WcTGEiNqpC8RgJ/QZtbzgbuVmYYPA8e9ITSAB44fd4nBPGJpaNM2M/PXFaFPRefbacUCgcxUy
Qu5kEhRIl06pxI1cwfTkDbNwLZVK8nAsQOQIWXaPkhyWXJYBD7URIeGi7XPICj7WgGSUhz8seMA+
7SwuSrm/tadIDWJE4S9ml8zvQZepzG6vnKV0m5Bp/ULy6fSgQ4zhkUMof38KKb4ID3eFIBgA+pNw
x9BiumrCRF1wvT8O4hR/6HStprPP1vKdVUTTxWBOYyjgj8EcYBbebkeuyWHL/52C61jHEbMMae16
QMJjucE/Gv3hGuXj2owRLeyNM3eDgwQ7WsDOKIDcZ2kXf3lH8BwJb5+1lZHwbIrfK/p+Eh5PYJkl
kqy7fDF+rw6LbDA48QUSm1svw3twz7UOpQ5RA17Y3bOGXcCvktKgaDL9U/lRgJkIFt4FEkLtmD7z
hu+RQjnntsKXR3AXleRErQikgaguR1PSA2QveZTSZToWegXXetQKD0e6RyZWeABl+z27nWAd9NN4
du+VZbBhrYb52XVzH1clpqgmnEYnzzSD2qZuzj09VGNglIG7xhz95AqYCcHzAZrdnQ19EK9X0X/q
9490ds1ExcI4d7O01lCZlAUlp2gT3pWRR0RWYqKRrRQ3sIx4P79A5yphtCVhfV4KNg/quLwb8CM5
nFPbCN+Hcb/DRNGdMd17GYlerXHyoYtKRD+butDFfSTjzYvOS18dBJtCb2vQO4yJ6NBESvrDD9xE
x4CYd6SX1PVgUIPHpUxQVEHSoCtPMXGBWfTorlB+Q4kKMnTVhLUGWT2jeMRLz+jKyMECdDRgDbep
SzhhziX5FCMrX9gvR+6NK5RW22dJnL2BFdHYb+798kfBwbCve0Med7ifJwiHWd8a6ARiXSR5lJKk
UTNjlVPvRDj2vY4i7lv/i3VvrYuSZh/SL18IS/xo21Ah16+ujh5f8x+QKidzhctIw6tMCdrwjfba
xhV3p8UzP+4ErADKAZMXuzk9uWG3Jh/F0XOztpxyNP+rlaBTAmaiYHCmJ1uCqXzY+R2xI/MulsFP
gwZfLnHLIKlwFKsaSOCe8wDDI9ZYq36w068Oqjpi2xDUjgywma35qYyxiStYDoiNKqZSXSC6A0bC
jgz4xq7qKMj7RNlUeCY4TEfjjbnWdIxKw6Se7cElEExp5fbyPYSejueGgyz+MeDZt0GmPDd0/74q
T+4R7RHqYu2VazAzH7unU9ZAXqoXza0tT1Q783oF3ymWUjbsP2gJyEzpVTe9wY8darL2eiWXAxQ5
dy3k3vjpHy1jKhXuYrxEstK5OMJZ0MuiB+2o2ZnDjw6ix2AudMOTdkzdmAMhpIiNCpUgg4uiT3yr
36OA7CbBGsOd0GXC7kYHXYSnpza86K4H3HHBuFu0XZmUt7H3hqeWWgIaO7dX7W0Gye7z6+G/HD8P
cM2yUZUO5+fcR6zBD1QQrgLQUY2OZwVsKJkZcOTEtsXz2H71c8PXMRDb+feUIjwlRCmYX2fatawj
u0Fw4v4HpMeG/PGhh2+5iupSzeUuUkZyWB5s+31vTleVvhbJc9oDpXL9np94L+AWq//sMxO5H0PL
jHyQ0VpoLwD4OsQGMa7DAz2CSIuOdVIN6vX9QWVbnef8dwG6hLPJSwhQB3577HauvpXsEGKef+Po
vgNBGcdblpyQ5xLs/nqBmC0KwbWYOVPGy69fI5uM7YGsdKFO0awxKm49UQdEwNleJ5Vchw65eJmh
6B5SAz3lOhwwXAXRq0FAekjLCim4x5ROfi4TTreb8nxABKnbzrQLB0IdIdDgRrjqRRp6JJKUKztw
OFc2C/3bx8BpItOURtJ0MqQh/mXQFeJ/fgEe5XfpwMt0vOx8Q7ig9+LYwim3JB3Z33IZCGMckrK+
8M3pkPdsr+x3b3stHlHW2AFI2tpnxtS9RihbGXifqwNfa3XFQZtNf3LeaZnUoi1OvRDlAK61va+u
4UyWaB1LJkhiXb2K9vbpcayd/R1viPFpZrEzOXlHSWg3l4JRHuzeP1lWfLlTM1QllQqkOCvCUHWQ
G0bsN8fao+CXoC9AAK0eageR1+KVEREiqwsCiZalVeizZVGXmdyqyBpzJCcAnvzKEI3nusg9r8Xq
LLvTW8XmFg755vbvU8Q/LRBZ7k4j+gHpce82D4E3J0+Kp3hWF9kRXHyWX2zGtpqLCl2Q7oMmRFC3
L9b70d1osj1moDEgJNLUrOVhwM7GIruCQEKRMP++LsAwQungoKo7ISARAbJI+5o3o/N/e2RpU6w4
Cwt5U184/1yRuyRasso6ri6EQ2HbPnbMn3ZkI2QipbZdyqKEfCHn5ezSIeyniXjDNeiEX0bvEx4w
ybw1YA+Thmt9daEeaOH8+BZt/YD4kUO86OYc9r1nvbo6VxE3epS3lpSuN0xsVPj2FIyB+RfiDhCA
kR5PF/bOcLTZcnNJRevBz15+VEetQFp6pV1Bz7e8HU6IVLjlczBaDAO67vLnUerJRlFpEjjV3WNI
E3j0pZNvaqnMgsjxSYfPUdYKeDrLzuksN3vw5x6HYSCCBLMo0O98XWNy47mbDt3wQC7t22qqFXwB
Myn0mqsCUkqbMQKhQOux1QHgofPDFnmjrHTDxlc8AS5JfibXTvAtfHxI1dqfHIcwJ/M7Bt39c6at
8Y4YebNpzm7ieZ8C4RuUEDmE6yo3ZB0HWwQp4tpFAZ8ksJQ6ARCsvwc5k8H2zBdkelKL9NmaQVer
2mX52YAD9BdwJtrw+jq2ceXDe8qWX5dnPGOxgA9pPB+zFDJxfFGO5+CamcX1n5IfIEBT899oI0KK
E/qsuGcTpxdBo9rmK8jOGBuYBfV8NXwoIT3fQTNzF3wr3HjFa8/LGwmL6YCEPrVZy0zldeVPI+jE
9nh64PUHZCtJYxedjX8qGtuYWsAqabcwF4OmQroOw0/ZxqF3bMAiax8Fxm/t+lWiSbhC4qbMpthy
3T7j/Ut+gip6w2iG7NF7Bwl96oIP47lt/6ghVo913WO5eGL9zVb+SY4vrKOs7O6l8RBt4fjYBPNs
0ms4i9otVTrJzq+4caQqT7iOhghGvlSbLPEUKkGfZg1PaqsjD+AnfvvL7S/IH8W/2zq7AKpuID/P
r1F+rr7z/92gCML5lMWxLAK/wtX3gSGeSkqLPstZQ/boUfGQzc3f1h3F4dVCrY2OPITG71tr6TiJ
zTXKSsBooR2P0HHa0dlsdqRI2nyihGiJ27II5TL6lkSHwfXj5XCeZ5ZeLU9hL5vt1t01RxIWBXYx
bjiBM6Y3LHxCYrQSXtBQFnM3DspkUHlPWC64zVLzIHxhEk0c2pVCDKdUdhK4XV4CVMc8YdJmEezG
zyT+g/j8LCjz4vsb2T9R0hVQXW8bkCwOZBA4c+7rkPYk5mplpc6jW+izJvSkKHkVg3rdBMbYlOxC
hoF0TVCQ2+sgY0APRySr/z/dTOpAvI04Xju2JajJ4UEnXGGMORQb8yXDzThbJRd5q+q9yTNWaRjy
kSOH/hW8oaInEbZhn4cCGCyThKeR1OS38tGwm6zdiPKmYJcudKVBVDXYuTjsXjWR1gZvTTbwRUPG
mCtWQskbLSbDX6Aq61/UC66okXKl+pjZiwd5x1hcUXVKiVR/620eJ3bVc99E5nZSg27o2gZ4QYNj
j/vafcWXKrx6tKbuLEo1DeX2BO9GxMGp86aJqlGs296saYJ9rzzBO6FWzsZf48BKRrDh1ujFjrwl
Va6bkyLRt4SP1MNc90vMMAiTjCDHU/zyNvs37K3hlOB5d0jb1lDOiAIXe1tXQVAjeTvG8rp+IkBo
3IiJe26DOZ4/kzH0u0fR6RI0ji+JFA39BZseP6fzsjW9hAz3wDm66n8MMOx2reB/d/QGROTUqSwv
1hFhh22umlz89S0vatT25TZWvhCfSHQQw2TXJ6t1Pj6dQSyqy3iV8oWJbqwr+JWFgjL5iqGgdkkg
c195TsdREHFSNuKvaqWL4WPHbbMkqFPxqvH6a0ZfBtueGhqjSS0TmP55Hep1DI1G/W7BFXYuz1SL
3y18Tfs5ygV4uL2SA5OckUJSeLKIGbTS1WHxbbudeADh7Xv3R5utGKTRwt01Vrdk+debOCbO1cm9
Wlk6DSJYUb93/m3CYNJ2NHr2UQuCvxio/2CJDkqQpqDLnDnQBzxfzuS3djE4lsskUgF0FF4BmaeZ
DDPS2+qOCQNZZ712mgl7yplMeKlJAjtfexgxFTMDnCF3tCs8SkM802clkynxjqqkjVOwKJNG59pE
KS9zsRt3q0VpQquEZThJ7oOmgxHnlIEcpqJp9zG7QcJvLUheUaDUsMLZ7Jx/7XGFF39FOGweNIIW
VLSPfAS5Zrq5Uu2InKlN+oP+MHAr789rwOvrpQoeC9GEE0N1CV+JuS4sd6OJP6rPE02Q/12OJ7Yo
Il3s30iem2ID8GMEUI4BPd977KdlWRjqHYv6bX8mt8BvAHEPZZO49x2+zI+4UFw3wy+6/WP83kqn
pdt2o6qN/UuWpvaAHYVvBTkvFfLpi8yVHmHuJsjP+B3FA9bXSNZCpLFiy2l7ZJBui/cji6Bgmiln
TeQSMBM/UrPpGH6iGy+prkfjAQUmTqgDhUJtyXsgpKXoDaM6GA+hA19qUIekPY6SJ6cu1PCVt+rM
FuKasgEdR00bofOU/FmfEpPSyD4SAL/8MccPD5LfQjKHb/wqFEFVMo19mk2FAvOBbbNI5nol2mY1
ROgEP7nHVtCXOMoDxl8mY1w41pUwbUatDI7BTxgqE5fox+BsI3hj0aEzEZu76VT3tg1hRGsaiuiS
5F+XgAETwq6AJXVvPHgpdQ+/wKbczIxL9171Q5HgI1ydX33r5jLI2wk+psmSSSbBjVYgdkQxKgHV
GZ9b2XaY+B1Tz0CCMiG82CRZLMWydIXLHMs1SFPCtQuhd8wYGPvQoNyyAIsvtdRdNQxxqs3V0ESU
FObnXbQKb0U+xLhgB/MtvOxbSOrHdWrkct9iqS+OucFBkdN797ZTg3di6zdNFHlgg4VNfgL0obcl
ZShOhXC4x2Yv0VEgUhLgOlUBZaNciK0r82ujZmpNOhmClOclj38RVuopxEMN6gIlMVjbbaDWCbx8
IBrEU6gizmiAbf7lSWhFppRrdKsTxWNb8Iaw00l2p5bD1FPfCkjzqUUhVX9hfo6XozKLe2u54keJ
OSX+1xLP+7YPokrJ1WhzFSqP3qS/6xvAfX7EziO6rcCJ/20eolMeZX+yqA5hQEqSIzSEazDzLBVc
n98YN9qAoaMwwglhcPcUB0jFmdjibNtArjurmnT64H4s1NzjcnpaNGYUhEa0gzatqTl5Guvmzurb
T1Opkb159zujQICkUkZBdYgAj+4BkMNWRhmuxJFVYNljyhnMgQANJ+yeCFg1qSRa7G8LF3uuRdUz
gzsuZkS65UsXiRi5m3AvJB5IEudeuGIKvgTPbFdckUzZsgkkwIFVMTp8ZYzR7U2NL7Xfb15e/+34
ldQh3zKFL07k1nn2t075V26xXlL0ndQB50BggtuKascnXxtuibPOt9xBfo8EQOcF5IywmwpB5MNZ
K4xSGwvpwcSoSqwKIYUfWE2LV5XM1lsjh1dyF2eTBS5trP+5Bv6D8vImi1L/3rqvzstuZ01NRmWP
GHfDkA+5eerfOaUrhxYvVUMzDXvCpkI6J2TADZrnp2J+Brhx4YVpiJ0jCmQ8sGuVcBzwfX59GXv/
cE9Mj7Afluu9ku7ecfTLjf5GYAnZtx3UExta8d77UXQL1kuZwUX/Ky1XObbZJz+qJ96ab0TUx4dK
KgELXsXX4lmQoWwLZ1hI56iw0FQYqVW1UH671np1M0ZFfHu/cWByM8W6ugPO5dbyKX6OuXnu5V62
FL/ghTT27UCrg2vxg5PY+M79soz9BRtgSGRZhkoS92+IYVzC7mPEfQoVCD+TnBNEiEDBJ0NhsQUL
nXrbk0o0jxt6naGZehYs9/gP+DOVHZoy9Scy7XMa4YFl/Ew9FyB6VkoTCq71RjbTvLBioIzWNQo4
QpbjnVIQ76dwu3VBw77cFckhECM3MF3OYtd+F7FzV48h14rKVBIRd/LqWKU3Xsnd4TJ/wk9h8MtZ
LiqEI9ex7YjhMV/XjHIA59Gvc7efEgPploGrGJHRJPULaaTVVqBAsFRUICilVyLWgLk83zkPd3ab
Evv2kymcBMm4W6aCDpsUc6gfpFzkjjDN6xQ//xUGnwxmjSQIOUd4VKvVhEk53ADbXl0ioJ2eBKuv
1jjkBKvL+BzBFjHmzVhac/wxdFavdSpDuK4eWQzq1RnxEmgI5c4fsO+df6J/CUuyzg41nDvzbtia
MWnptDGtYh9tl5PuMCrok2il5RXzgAfVU4bKrLs6xRh2dFQS3A/wgn82SiITQkddjcug4hunduZa
j1kdEiozurY0PPmUla6+QpFs0wEeu8rZtmguXSXzWMO9kLKzUeytM4P1GAwe3MIkqOkE0UlwigiG
oNyuYRcDVWFG1P4/SA2aKaMURC7Q/Lf/w2L0oSjqdA9UYvkjHHJfZkoyHr//avD1Gh5gYiICrV7s
tvu80S//YJEYv6dzjste3lpP4qN1umHf32fPW/ADSNyC0odBiXkJJI9lHQi4H2eGFDyMFdrsS1/B
vyiB2VbZZCSoP6ViJ8kyATcIz4/mSHvClHCW0KVNY/GgaVFDHl8EYW3a3IANDdFus8UmSItjYxU1
LkF1U416VSH7OskbdLYPPO/8sZDAh8dW8nqx9LVJvPYFcnxNTlRgJcx2maSv1qOvYD/UtVY2ZjMg
v1iaEYfdW6FLy6W29DRJYDNXIYi/3TSVqIPLRb6wP/RCOY6dX/YN8DpnUnb/heuNe5rNLmr4gHhI
YRgdzRjA2dw8SuS2flBUo15yabIlA1uIsIrl2lelonFwcv9kUPkFvtv6WO/5Slw2p92tnDOQx0J/
DNoPGb3uIdEq5QE4xY0S7VNQOQ6ZVpa5J7+UDD84zApRpGe1dIJwCge0j15MBP8pZwGxpaNkoBIC
XupMQITflujAk9Fvt65MsgOTuIDADTsNxRNjXSCT3TpAWzZDbAP7qn2fAU0ZWmYNmcprzpJrV5QK
joldz+LL1eDyy5luhejcPNkdEGNnP92pa9cnFVMug1Gf5Nxol06mjI3Rqdh+QgWIKNxppbNu/RX4
aBCKIjiahnBEgbZDhdhGA+7z7ypj2ZzpyXsERLdeIFJ3+W2DP13m0zCsQjzJ98BNjOrndABijAhQ
ybJNkT8ngs+CJaceqXdicmEAFGwpnHH8km8k7wGxltdk6GH38iHq0L3rOy6R+8vwRFZ5oP8AJHL/
XRuLdUgMO2l5+8kwC7IWwnapk6RPiTVPLbVAUtt5Huh2yN6hftYW59Inzxu2sHncy2+VVRSmde91
H0dUMZ4dR+sdp9nMWd/Ub0z6z62rSPtKzKsAsygDRY3iW+D9cUzTH3r9S0vhzYgKGU+QWlTPSWfG
e7TpYwKrzMlELuc8ePsLXXAMQWEsBw/TgtaRDy4yd+LpHAxFaElZc+cjkeB7V36tWcc7oaAoAZji
ph/LAQAJA3T+qP/0yYuVdNswVf9PieX5EGmPjnmNHYYhvtDD1xPOvhh+pOHLGNmrdUr4l7Hh8o9S
OH94lEqh3xy5oDT0BEArR3+Vpw8azN9eSxOC2+1HrdsYFPtoQ1yvm+J3BnFsC9nzyt2GXDeEqtg4
iES8Ar8bVhBgIzlSIgeoly93h5kKSl+JjCaXdRPZ1WlSeRRh6xUO11V81rpibjUcHKrOHUnPATFS
K+3LUlhB8Tjcqgl8FJibao1guBJ7cuemM8qRGsYy5Q8Jo9Mlgohvmmp76vLpvQvmtA9vOv+c7rLS
1ELdK3MRcpLxJxojJuXKZlqRiF7AFsuooNLrv+maesrSIDTJWGOTmRKyO3l/U7UUT4HWJq4nA4C+
MMpDLQhMYuu0xRxKWuOphLr6dSU4Dbf3nE40qEYp8DIrvGD7VFExc41Y5ca5IYSudnNfdQkzBXT4
ChrbMM4wTRP3gVY7+SPDYiJuKExhcOZN3QoWlZO7SIKPpW+4Krtqa8WJL7vRfaajIc6Klpj46vdp
5NuABSjqDApydoEU//l5G8zibAqLpY8NHZc707ilsyeWEqCrpRE88xsjwxNhMePAL0afP3ce8aqD
Ullt2x/6vPR2oFPIGupEwcqCBXa30FTsiFz8ej53AfOGMkWm1v6dOoEQNddqiUuP1U4jU/qOSDmy
zHBjdkJfL/LEdsz9JuqJywa1JJ9/XXWCJScMI++zc5NJRkUxdP5ktt4WcA8zlEGZ9McNOYsml9tX
1ZAVQkuGnTWxCipVGtDe2lpFBVmRW3BvbBr4hbhZ/zN3bP4i4oPmTCY+aY/sMfiTOIDz5L8mY59a
EzcimOD9C7bPmftu6x4+od2WK8/02Lf6KMX6121Jyd7IGnW87DxNmuYHeS19csdoq7aw5x0bc50Q
jZVZMsNC76yJkW3SM9SkQkC9j0G6eGLKDGJWnn7+jhZQtiOjuaSHMgAraHUlmIMS49JdAatd4OxA
TC8kY9NgCpDGEadgLtxlTQ8ajsW4PP8XtV64fXVBhJz6vKa3jFUlygSejxObh0eRvaalb7hkjkYR
MlRmDCGQTlnXbvmcoLhEXmSpsxRuuXTiSuvjn6/fN4Ln1LmV3cqoObads+aVGi9vekq4F5rYU5DV
OIvjiD3hFPB18o/7yMRq+bONztCo+8fbqZn9LQvqoESD3G+ivRiT8EleM4VHFiQhxYT8Drnc6wWH
jw4esMXoENDDAWPtOh4lZ0nFNjh5snVK+F/gKPIqSIS1vFr0iY0jxSksmRKeWHYH+nC5iRo1nP+m
9xyZfrUwiOgq1HTcX+GWqGXJOW0VINu/wx8GOQmh3E296B/je1Ap2exfudXGD+fLYhWRVb+iwlPr
sc6ux+hsYJNN/nZiVqfEjcJypeixljV3CV2rzJZYzt1KstR7q4w7Rhap7174dXhAsMQsOZL3vCnh
2Y82odMLZhEA5nIIBX5baN89qVpxAxH8QHwveqFQ0xRGdRHr1qgHAILbUz5vRFZJ+sGuHyD4hd2m
F/Do20XWAN9J+e90liND7urVDXqIIz+XE+bVK3Jdjo1QZiKxPiLMRhK/4PYtX/m9Ka048kP5qZh0
g0owE63UwvDb9jsF4Q8OmrHnXeQPnasJeG687wvkBy871GP6+vpJCiHU12XQqVVYWkNQ5aXbn6PX
JUfrNmFaWTUcpGM1tisa664AEOZjyu1OKmCXYOHl99Per/gddNBePpK8gq5J57TuPVw4DKrBnBqW
n72Wvhofid3P66BE2lihGwGPpoJd7d0r8E8w08hR2ISz1ElYoZCn6guZvV931obUdPkUhYCZH6QM
GCY7Ys41j3ac8aNRGlTu2FbMOt/JTJo/W2lsJbAeIr/jyRBmM0R7G6OKcculJhpwWeIaok0uACsx
W5p4vXHI1VXHZYtBvG66Mp6WD3Tl47avFejBJrbEKnPTn6s+P5Z06oQcaAEvlL+chrpB0EzeR134
rjY9zENdi6x3Hmlv23p+HGJxWjGh4DaMjKLQyaiTz+Fouf1cJa+QVQ0EgUzuAV2iPDGe836LdBhl
9vXfvzH/ZpQNJINCFqVMd9pri0ptlJcJPwIH40JUs4ogERmr7d2rp6Ps2jn7RvhFXOZQ7LWzuWXz
GaWVNPm9eo/Ke9S3OqDPyRkFLHSnXFKt8RstnJr5Pw/x/3H8fW51jDykIyLZEIhrQt3oiYC2QHI4
o90/ZUIKdzDxnyJRauqEQLqgBaEr1roki4Oxf6AZvWa9nN/zAoW/yQ6TXPqDDoF+hG1feXPhH+Ck
BEFtp349DDaECVBgvNg9bzGN1Kg03Z1Cs5LanT7ewKzsGenu3eaP7g8PA3d5yUnEtOEeJ8sFOwuJ
FIXi0EAvzEfPBt6EAEYsmnal1HAsoMQ3JIPwfAboQscawyh0Bub0QjdywR7/BGdRuw7TAvWVEvZg
U45PdwZKdZ5sKBmSm7xwzoigrmElAh76JdrkymAuItzyiOi+AJJKafrzrBtLAQh6XB4lfZzZBR+h
1GkGYfLUf5fXnqGtmc6keM828ziuycXoDwrMWiqA/pzdnZkihz+6Rzh871G+bknMhMJ4fmoG4RoQ
g0TNJ8TcUvgpuxhC26f9HUG9C7tXK/y3IMEjGmqPalyzcSToiRJxK4ZFyMCx857cwTDt+9m8ZYco
93fp9IyELAKQX80AOhp8Gfv2AHWympecl3/spWPQchjuRC4cCE1aVgsMThoOVGqM39fgoVyicrYN
2UlSblNQyynwc4h5sbtL7lVIyBidk6j3QWBywW9omSWxQhQHlgf2CrRdoxuK07NumNP38Pby5Y3o
FRYS8AErphAHNH/0XscZp090fxjLqqDAw/1svE4yg3xTXWSDeciB9QRjMZhuX3Q4sss71D1Q2e7F
U44y1XeTvga3lfW6ZLcu3oF202DAx74OXOGhYapeuRWQzp5ZgbpGagtobYAQ8q3byPvlpGO78fsl
+/a4G1k4kEYJom6tar0phXltWwMpIu1HFyUyaa1sEWv/lUTWMrgL05B6WmhN64I2s3ioggX/646n
6DuqWq3WgHPUC6fogBhpzyFtWlJ51Y+f9H7YUnmN4MXrCyYhb+d6BE7EIj3QBG7bFbIk1ExJWx1/
DcvaaPpo+HchJnz9gJfco4MHykNwcEEaGWZbrXSAkQaHf7Un5tUUBmPBeZqllrOtNEv0zn/N9a1T
HLitqB65CxfudAdX8Ocbkqd+JHJJuduCc+VXeG3DHZ27kUbuQ/fA85JqPitsT1GP2PQ14HxwXVrX
bQc7rF0VeVNpYjnH/L2ox4ZpLaexG1Z50OqgIWQMhV0EXeu/uyOAn2oRTo5HCdn+mC1YelONR9HH
NXClwKnC3pVhGG2NWGJna/RY+LzwQ/g56sR/o7kCJ8kc1sLW3/Ka/w5WtHCBRghiX8y7U09K/tFe
nKMN/eQtDJ/u50LcaMsuU0BVneTZb9yr6T6/Q03P+ee4L998Vuk6/t89dSnJRxrdrbF7XCOXpT9w
FyAjg6vFCnU0JvMnRO/zJT/iFvm2cWCH7/gX5qTbR9xKNfZinrPVJOJ+RCVMNeU+TqhdoUG8HAis
rPurCIxusv/zm+ScU8ASoHxNQoZv3TlfrFaLtjZK9hIkYYYel9LSEbJd5duy3YY1Q1CLeWcNT/Ej
3awVL1+QezS5ZHaRzgXS+zmkD7VPogAcQJUlUjU97SAwkUvrqMzOaQ/X54E6JVqN9n1J13ER1K2A
Ncpjk9ylrJTLdj9gPHzS7ls9iN+Ycxr/9qPQz5lDMeyhl5Zlkrl/c0pSuE/V0xPipmioplrwUTrK
W3bjXZBw39+UOcmBalTxXG7sUyLLdaupk+BMvTx3jb46zQKhrC862wtSKh7/Bf2p1UOCcCV50bnM
GQujlryBSc4bd1U3zPDl3konw5MQxDCDOOyE0be8NayWZQuUC5Jhg8M/oy3d9bAwUKTthFeyp2In
xtbzMviuPMrJKwTTULSFZvHPZW09oNVBOHVLYV8syz/rLg1VYu5pxnMqz/1N/bwe5+q6vaexJPb7
EB0ql5BEdZChySkY36d515AVWm9LZf3+wvazWDbhUIjSHUKxxa76evut/ak/tLu/IQr8fqX4q+D4
4aC7pgdPXz8Jgwy8ZRKx9tTx5S50Shmm7NS25mmJwyDzzgY+82kodl7dzg8tiHLB1zwhJx3eniG8
5G31YnnDUNU2567BHfu7WbahNF6Ce746hqxAd6p9zN/iLeQwsDoPv1w+cPL8hFfd7xSRpqh5cJuT
ybtk5P0sOp7fsMDLS6liHA2uSYuXQJkaFpaNThXypUNkOHj4bD4K97zPrL6huYEYX9Oi9mv4oUcH
IbiRXFmi7M0emAA+aFTqAgozR0YQZ3w7FGLiVosBCOAHMF0d8v0X1j0ZHFPa22wqRNA4iUI34+zq
YpMxJx0tRuc4Ebz2sK5sfRMkYD2uT8CipOdjua0bg0vqSRC1n8AtfsXC2zhkrw1FwahQS2JXQTHG
hW9QiYSHMuinkXtcv6SDI9bhIFoj96aI0j8uVcZS4OAdM2bwdWogwHVDfXX4Uion0LVQwK7+3S3K
JJOuIX7LwH86I/wMryc8CGqF/L7trDp8vyZgTbEgyIBxU5TCqb48yWAkCbvfuUAWmEg/zB3n1bmU
WBauqoQukQ03HC+BWg8XUlfOGJ4j/xSO2QDK/NdhPkl3H5ny7vkIacJha9nk+tAO1lDZp6HY63Eu
pzZGNsn2jaAWE660ASJupDx7mfQSQ6vW9IdJ8bSCFp+7VODWvBn9QP0wG8PM32sTEZPI3JuOMS1R
GPUwD4/kFJUO21Efot4odJ0KySv2fxgvhAUZMHvyzyG+QZGae+TNIoQ3kQjjuJzxSqwSL6aBiDRl
4SmEF5RvmJHLjilzYwWlgpsSuREu9VHEgAqYtXfhYG+YJOBNIQnMqWoy+MAQYTXs08VMzKoM88uA
KdmL2Z44nRmWUMYQJIc3bhHZdYUoIqs3T6bGE2EQ/itf4OCGtoBECZWFUNvgYKW4pgD3fho4dsiB
UXeeni/jeaQ+x52nDJO0F6wFb+0TijIkn2C6kyvvscik6qv/in+Tq0nm1GO5Iw2PvzAtzhe158T4
Jt2kFEend10B0AF0yoYyrKHAIO0fTzlYNgnedYDwSef97DIGyNl5j9bCqcfXj08YaQFm7UNvBIbE
Maj5of7cpic7oJ14JJmnsMwxpY0S6WZ7hCuoWh/cMoTNLP38VlucRsZBDpWmgWPU0xWNxku4VlGw
12cgWvTRBmb6WompCJcRaXTXfxBUXh82h98nYtYkOqfVb9uJgN2sHqHoGZoB2fwT5VARNTTWFN42
uIIM39oMA0rmLzlnTq5XOfD6HADtJI0XN/aHhnKMng3vXUY5HFhbs4E4MGvcRo3RDb5g3IUyehxb
Ckf/MSr8GUfFq+wGVfQso1+ETFF/Sw+QjL46r6edNYbRvZPnd2vGiMVXwiNCP5o4CbmZfDyKZTZJ
NOQlItEy/TOAwMKFwejcU+iu/fqDFIZ3m6gPvtw57+o3c9pmT9qYtK+Gs6dGlKDgjawiSAKOb8qV
DtJJcopPIHb7WztxZpyW92PY393rHKiJIR8cXfFaA0wffeK5A11L3K+zhvTrc75t/RRC91lrJn8X
42BZFvM9YfheJjy4uLF8n6Ptot+yzhwPawPYMhGh5E6zSefqsDTObmJR4mXxNwqM0sDcuZbR6oK6
6T7E0eTYpt583hMamhPzg5VHil5U49DxnU4QOYNTDJFwZZTVn38PRCpeFRvQV7aQaeoHO+AJIKgT
Dn3fY/22qlpAYLQjYFR7G9sxsocLgCmK6lDYd/L5dnwRLd2w4sf73N4t8w+w3vp9VWoGbNmwzQi+
1VbE6nlkxS0V+6INVX26sy7OcOzvzKed5j7b1hK7qUcmxbx2vWNvawr4blc+hUlVJB4RC3PjFtjH
kMdogIB4swMZU9BFPjiIsLtRZlbBZPX68Ul3zJ4KzUfliini0tTfyyNDUAe1hQla7pibxlZfwjDf
6Qi5DSxGm7RxhfrkAOfwglY5scsB+iKVFvI/i41Sg/D1GriksE/2QZChgL78e2zV99oq8hExaGQh
3COadXTd+zy5bsCv3cO8vuK1TSilyO7mtYehIlJ7J5g45sAJ6r4GgMlh8PibEPsLnHmEPMSixKhG
wNrEQlHgswvm5XCP9j2S1ZQHs8opOGlwQVVSDbW9Z9Fe7Pr14zlqQiSmvr+AHIA2/xlMEmITTNcU
uPQz0qi6AEoEfRLv5qKLmWjA580mKv+3naAyCt/eyfBi078L4sAjF6EIwhrI9a2Bu21so4Zq0bHZ
2B8m1v9kQY71roCSSFy/SixYkSaM302aKDxoq+ljZ0678rgPCGRnqedn1zrmUIxWMe74C+VZCDi5
OG+bcf1MdxtNwVtODc+iTq0qjQJPkBtj5fDdPye+D94RZJFq8EPcUkz5THs0uEdQZ4p6UzbDK4PG
lM9Z6Qr/+aB8Kwb9TnZXQgNaFWvqyykPoPSZVF+EFpT+QkY68iCfWfs9bK9U/Nrhg9LogRYMru36
TyJLKi5/JGGkhOSej0HGN7XAosagHETZ4DaoFPGkMkGMLdLK+j+ZfTdEVCIp878QDxikoBaDNF10
WKlnqAbUO6UATzewDlISGCLj+xHnqQIv8t1Nt+nJFU+qg7vG93Q/P7w/qPowLmUpjKj5rkvXYqFl
tPwUgRjlKJ1gJBesuxgLDyG1EB6zswTg3wSF/zfn5+FYSl2P77BmiF9wuDmiAZd7pCWrGm8o9JFu
jEnbyAZiM+UttXLUfD3Rata79Z1tIHq2CHwo0KzHOcKDuP/S3FSG/+OyorQ/VCEEschFKHf3NQfd
RJyklDbv3O0RuQ90nuP43qExobUQDUXS3TexKjq+6yQTb+D9sfrTCsmoV302fepyT3zhSNxODSX0
eymvZ6EnMraZfzX+HK5u4gPOUHgvzhhdyMEHXp4r/asmNtec/o9HsrAeXyct25Ww7gO/ymVc7x4P
vQAfjNa7f61yy461b91pzFw15uA0ShTS49gnwLVPaUaGxEskulh/baoj9foTUAPWjK2RpAAvVfew
zwLmTGP/RBsLKAxzQ/8/GT6seivJhl4jjCo8WNI9+yuCnOg3eC6f6Xlj0CaISMlIuQaO3cx2/ZHp
565mdzOuqdVudQxVsvdZbESWnMOSPapdgI0Xd9vYF4FBn2A3v7co4dytYYfViNfx7OfaYU8Nl3ZP
Drp+gjb3fMeH3aXN+HndfWkxEVFVMAs+yXFMV974hV7qebScogChVRSkR9g0uhaU6M70BZ37tIaJ
+5WIENIyrcO5YoE+O9ZfNDMwrGpy2mbZ4rK+pnJ0M063M5g8qoZVnQPbeCebECSjLKgA4i2su+Nl
rgnoaD/Bm6x/W5AbF6cfxIMvs23BIxIt2fU9xEaDtZ78cYpbFczbNIlvnLI+66p019puyjLp4j2w
AwZ2LyY1W8tDF6V0x4pmszMyyPzunMv/QHFtBDkMpvODHgWS6bxaFw7Lq2o+iQcKGoGm9d6jWXAs
wVvdyO1U2cSZQulCeK/Z9KQ02nMPQaZnmXu1su6w50AyqrSt7DqD5j8iKLNL9R+9/Q758voojQnW
iPEpvCwwe5L4tSxlgrveushTuPQRMyhlLIMC373jRGHyHZhtz132/MlK4Lyu2OZH/xTVsvqRCed9
IqR5hCXB0LVEQg4vZx7MYVS/dvPhRrPnflp9j2RHdSHuCToCFLm6uJHKfZGmtqJ+BRj6fVfXQa/7
ZMD7/XJqb8TIWzHWQc3n/xvyzLPe4mUX7bhaaw8zS9yUxtP6gpNE0gOAeber8Y943rvxR5oOyf8B
qrfVriz8ZqpeVkUygjxq5V0C5xYuGnVeq/J/2vAROlRh8FRCwL5IkZbCrfML2vqbB/erP13KIwdy
7uLwt6/7owZpu317nZWGi3efwmeC0mbdURTC/Y9I1WDEqe0yuY9RajLDVU70H7LmXrb646xR3z8g
ZoUwSBJOc4fNiL3UJu4bczGiSywrpeyFTefnjh3l/qCOKYl3ZgytSr97iTyITW5sbXUGSJFIkoOE
Fj2+um/KWR6Zd3rPxx55RDWX/qznfy33vW8FvZePl24ofBo+55Mc2dCaXFWK6zRZVghd1ayF+EUr
xEiQEomVSSP8rwjWyzxz3x/TwF22l7/QoGx/UwktHEOjBVqbtu53U1LD0LRJTI/STNf3hQCfJNp2
joduYzMgXqH5azZEXInUPveg145cE6R01JptaOV4h6NX1mNBE8zPbNsWPt7E0J0IgemDsxiqzcx9
KQIVQWksg0ztqgIiSTYcGz6wOwJFVV2E91YO3QribuHnUc5sPUKVWz5EajoWmwS8pjS7sZPre3/m
o71+UfceuwTjv7QZkHYafsP8iz0j6nUtob3AK1MlrXY6mu6LuI6pkp/KYd2+h41Ukr/lQDI6iwLH
gmhprYcvRsVR1KY2A29q1fsoGeYTHd613zm1fPbllSpQ0lfFiAylpC9JuofDRDsY9GKZY+FCuDkT
UxeTj01sXw81BkStlBe/b0bLlpwmDsYaHghSbp+/dvod2uLi3ZAcOR4mHxM1xaFwBcCPwwvtFnUc
Ff5ATWfDx517lNpl5eCUmN5VvSfpZcO44i9DHXw60pxomjHjO0n+nlSFLRw2mdsEzpOpZFXt5Jjg
N/bSMcTjhNzq1mMHlzxEfL8b56v0h562HMCrL9gG3o00/4FWtQC90qZUOff/AVC5XFJ3cBaM6UNm
zBCfe4Snq6J4t8dbzeUb7YbDAz+/6m/VtIeJ3J1TzTgssmeTSXU793JmzqT8+ETtc3JP0amn2rym
NCVChAK/je8Uh2pi5duIPZ/K8DdCRYEc0ZlXRIcgEw7+7N8h/4PKdh3gKvfU4tbgsFKFIPNn0cc+
bMGNF/Wlti3VIxaZ+Ttkv+PaYnEgMCc0TdbzJ6ZA4Z9XajshH31HbS4cSBgHMqCFPaM7DXtVAWng
+x0RiLrG8tQ6nt8im3daQ/sQ3D2uBT72xy63DjU27XIxVDxQYiCcfwr93EQR+mVQv2NKSmnZTwkv
7cBMRmNCgZm8BZUvkpXxmi/tcH6fd4Ory2Gx/p/j1Gs6YTk/Q4ppFwHpWDd3zJWvhDWHUNMVvRV/
vGXIwMkFP913IixN21YQuzI+XGzAVhnDH4MWQumn6edP3wagzhmcfpD8fBRI+AH8Iu4mto1bGdBm
mr3DodtoTu5c7o/PiGbKL6CB9CL9Ux/80QcZs1CWKxgbtcmidi6/PjdbiQCgAKPZla9RvZx5LObA
35CMcBvOnR+0dEIoGxqHAcjWs7Hj+gelQK4jOyc+TFJcRzKefCBhtlHk3V3TUbqfTkCpAGpff4JO
FHId6GS4zqMdP5CemdQ+OeCZIdcDP2ycIk5M5LhjftlukkqBYOxmFE8zy0s10FXz/w9qQVrm2nJl
HiBu48c9Izg+4Al3q4itKHAW3uXnckq0dPacJVVLlcJtwMD3ikLEjdh1lhu5Mxa6nxm7oCr8sF/a
X7wN6cJ2bh7GS4ap3gAwo6Ah7AIJSrJeTh+peOO05pSsBNy2wXnn72wLKpJ7a8feXBcopl3pbYhy
iPvJT6IMZCiYFrzoOeJRUVm335leqbdlmtjASzD5nU6vMkzEJO3M2n82O5vgV2mmHvlO74YpWDRw
aATdtw3cC86s6jcSndtT1ycNUzJftMM+n8NLhyie59poLYQJoWxBvDe3tsFQ3ViXRVwmQjVBTcbQ
FC45xDDfc+3ipMcC9kK8xv0ZRI7pmoZM4mpEYoLBAtb3Wpp5sDMhQGUdxIyvMzxOMuwc5wXzyVOM
rYMszsCpWJdnfe8tAH3CVWg6CSjKyX+ySFbBkiQ1aiAhDqhFR6WzDCz3sKRiwg7+RC3BXuo0v7be
+bw03ZN7s/iLJ+Ot4f8dRcZNBeGd9FId/i/zzLsaI2sOk6JnLivt1cN7BcYb4RHWIT9aXhMSjWGi
PzOS/pzERzOJirPyoWhQv+euL5rDKVaTRl/SAYc2cuj2j9cfwATehQcmpcC7EEd9VjRVgQ435DkD
uEAsj0RgFThLbkNyr54irT8Sfw3S2gb1PauDfa6BiQtnQh4J1hCCHOnFtTmuseFy4Ql1FabIFdYM
TZnFcfyj4ogGjNBH5yiRqHPaF3cOxI3M1NULXQIrvaBeLrKlgBYRdCOEJIxWkV33RIjnYLTN7nzl
6LBBmhv9LaodIOLwpF6fphzGR5KoCO+7HhbUohJXlHjH0oC1AlnZR4Nz16XNxi7K8dT6m6j4S+ze
48VFTNdlQ9uBdHXc5fsLvrKdZ17If/KCQMp12eXNDHXlltQ/Sy7N7qSc/JhPNTe9VqHHfhArcIHP
Fff6/DIdj47jPd+9dxnD0NuWnvNqLdWcpfxEptfWBzvXBQezWVXRqjb18jqRPAxMTG4GMeyRKBqr
ZZnuGzuN2L/7u5azp54gExOHzBPuK15D7KUvMAOxI2R+wk2aXCTfIzq3q49CSzdm1D3O/jxt1zIJ
UrRS1mPnZuD1iYJavWwnMlZFmrQN8Bj5YyFsUA3Ce+VKB2Y4ME/eMXyLpujFM0D844NbO5bXzPRX
1zBSdhbHBB9QKZIWQS/VYmpSY6OkrTqTDrLjtYuBD0epTcomM+SsDHxqMVzLxwoS9zNkuMY1pXLE
hgSah1pxXnb2z1j9JpAF8FT3lWY5dXtXzZnrbukXzX0U1R46G8UiEQIRYFGUpQSOpjRkinmTVaMm
faM8K3Iz3Fq9b6oSjPuysCisNE80+5toPqQzhJSJ6dOAqut2f4ktAhtSbLcP49Sthwt4mwKVOl6J
1fJ9dQqXByO8x2cRNnrCb8A2KieWz/xsisCeNtnj5hhLe5tX0iLHwPSaqAAkaChzVDQXd3aPybU0
u+uSPwAy0QesP5baYqx7K+Le5PQolNT8VR3BhyxRPJSqrkx7wNzM9p4ys2jAb5nOvadjFlaJMmIy
ELMQDfdqcoNGoquXq2/L/u6JamGk/10dytkAUvCpY1TGUTe4Yo/eJB/BtvCO5CxdL0V+lQfg/RXV
RPDrLXgOkSSQgKdj1kpdBywzkk1VdZQ1GoxgIDTZFCJaOTee+I2TCWXUG4xwtQp9rLc5lPorV7cn
Kz4+OYsRlzBgDZJ+HcYvEUkbE4v6znkj2IyJHQdvca5y/yyWIY4l9TSRNNDu0vtLaN+gAEdOdRVM
s2bhZCU4aGmCn1s5mlqL6/MavGxI0C5/YD+IQCdxW1kfodgBnw7u7Ve9VYL1V3KvI+RQcgnnZbHJ
HoertslUV46W9kanRc9j6E54KblXulijzP1EDtC1WyxMEwm+6c02phkZ2TVClS9WajrtQxVmmA30
UMg46NFXIfjCMVyJsjk7+PbzbsaYJkwvD51u2THMKMKl2Ou372gYknE3JJ/wwii5cQXh3QQdppOH
7dgK2LZiDRq/atvQzLaCnWHBEOD3PcOhrZiWk1xDidzA+IZx9XhrDSl5ZNG2Ps9PcjeePCOnQAvc
KJEcQgiCo77dAiCkAkESZSKnvWhaT/4Gdj/KM/5LbrwCKECAg8KMlvP21gYZoexioWK2pRYOvU45
iY5ykO9v0qJrNtTU9vobucIzLz2ZjUCAurDF2Am3EFniC7o3UHz0LETAANaPFrCNytr2WkkoVYa9
nyi2r09E5480V+gRPG3Rv0GLoDjaWUZDfaIpfe9XSa9zWDh5RaM59ODJQfe1ncmGKN5QD4ZVCJvn
CLVoWw7zptNZbiygv9NQL2UMZdh/QgiknbETd79U9l3DOYqJV8lgHNKRCa5PFqe65C0ZBl/vx8Mi
EcXyqiYhFA/vN2IfVESibyMH5hkAAIn73mlKGO+LOdaPMZ50r4svfgutGqDsgCUqKgf4e5eiFm7D
KW0R6gErwipPZM69cIHBc0Tmixy6/4pcr5xcaFEqk4x3PSS41bLifSBK0BbuOSZk+pkv5+YtOLj7
9KcnScrwWxCQQsFcM7K82xdULc7Q2Uvk8xuwod1UDPlDvE3Ls/P++9cZCumuBDchJ9Zjea2HqOFB
uCigC/DrXCTYGYK1mJnxxgcifahuw1PmkVoJmd9EHT6Os6+nyrGDqWY1ipL8l5zOXgihxghdlajX
a5of4eN1eMbc7sQJrc2C6qa0JtPxhw4u4HjCpBfoILdwGHpnvMqwIUzNmlxMytXQtFbcXYl/SzrK
B9UDQGSOiVLzoHWuZom+Ru1ax6rd0h8YiS4TZkorr1aLQMXhZ8kcF+3Q4VPeTjHoLX9YFbzwc56j
4q523N5jpSpRhNVYAj5BW6c0cmStJ/BaJKtGFu4R7wjlapdcpIoicFN5JSqOo0k1cMPRn7l5YSsI
Nd0d9XiwDkoF/CfpDHVRA1LsbUQJ0CzUj3RiI6wqMgxQiuw17yYSj2ggQeif9x2phaUWEM1d1iAM
NPGQlUBIHWkhsXgQ7sGzSyrYE9VSgxBWTC6ApgfP5E0nbiscZB5xwDn1tx8aW0RYhZBfR5j7RuUM
rLNEcriqvWOc4Ggh22oRdnhHFD6eNP+UJ6OEXEYKverHhnJgf1zK5jI9Lze+CsbbN30KmsZZaXFX
Ik8dXSKc2NrtkMegABTUJPRxAc2ujNJaKNbvSRPU6FFRz4PA6GPJKgaTgSl04KUuZItT7MQa91K6
HnXowhFVAGund0N8scx8N6dQCie+yrceNZpKqDi0IKs+UcplyeGMcJTgrEL+dE59VadaWHr2zsff
/lPU2pjPSFZvDmX0d/stZDVnf4GbqpsyP+QmX+F/eOAnhMDAcIsPoUUHYiPKQuhhaDI4ShBY4h4e
ue6nPj94HBvWgzLNHPGCjG4WexJi5ioHuYdzRdHX4oJ5DYUau/xSTv9CrQ+hFI/YPJlsqcH/chb4
0qAoLD3qeTEsLcWNUG2RjjkR+Y85/Ez2HG5crKUnML2RIEw7aYkf6bKYzDqXNuXRv30qhxx3s/4o
h7MpMOvIP/gxfw/SHupAZTN/HzL9j9TJ5JTbWgDbC4oExSNdG+pXRiVsR87Mr/JFKl5Jw3BHDNKl
7RLOPlIWFeLiIN2eLZNpzL7RbGxD/w2VxhERHM8r4F3TU3TVeQAeMBAuEptwuXr0sJg5Yo6u7thT
/ogDzHEga+aa1sB5/CV8bkX31P50uyKzV7UxMlC56KYoRf5aMBPbDTBoTuoG7j6Iau5AGBa39tPp
IGylMRkBF2qeGxENrtQ1hxAfpDneORkUSZ8IDuetPuMdJP5sAV4XlVX1uarLCHrFnYOLncf+992J
TPHOzdR1qvyh7t7LQKkWW/S1CNrMdwQJm3BY3IvvxBcFYLb3OuGjVqcu7a5RgYV7a+OqL31L6WK1
FxSPmpHY2VLXtS0mEw1SDxVW1tfYODpVxk4f+AR7gDWNH6JioWynq57LJcsCajaSJMZNuRoFo6t9
a5MN5Wm9OMBzFlsseVj1u4/rlX9PF7hi9ebDNCUbmSkDiE6N3awSyHLKkqZmpTwqhM0yusnw8C+l
Hv3Z0O6L7B9yI2iD9SnT8wOQB97SER9MtDUm3dIg8wdBrbT3YPEIbcHDMpbgjyRx0KpjJPQuc4Ny
h3h8FDVADdBGHRAYFPbS0r6X/7iuUBtA6ZUP1Px2JYRwkKhY0CIwEiZNRkn6KDBmJ2NQS9P/RYMy
EUxgrF+wQEgMyeT5v8vNCn/fyd2/oiUmseKV0W7wwixHzGAaVCvXzuBAbrawovgjgF+6UyZ6H/Gb
V05P4WnH8svnlsvDt6Qj8gp3ANIrUvrs9d7QpgcjvBzYaBGnl6U/43IKd3a+GxnLrW+xSk47fYAL
eNZwXUNLPKt7dsqtEI3yLdu+YXhN5pNNaQSQ7SzUhIOM3IGqc0qftcyiFnc4b710DaNuNVsuDkPH
5s7vZX6gkWakU4uCxO0dFrjm89A1xWFgQ/zAiEhbS9qvwnlB3N0cCLjrq3TXelGn+ys/64KEXb14
b/QMTPfRxpdoD16cyeQzk9IT/tnHNslDjhUm3gpsER2/18OJMA3q0M5xAAxZMOMXxe2med+Y/XIk
F6Sd55zHeWXe5bKJKkmm7IwUwLKCzEu5jYz1Fy3ySzDWtBlzgzUHC0HCBcZK93xojOi+LEcwXYfZ
SkdMxWDQubm/q06GYnyfqtdsLHyx4ybJCOPcm8QupFTXPtpN8RNfgJVzedJPLWDN5/i+UZjhfpJG
Qr8blJgQDm44eTTpXhgWr5vJOshfwSGBG1tlUWN8w6515+N50D19KPoBWcOXWxRQ3Wqz/grgD2Td
YyFndNwpVP+UKHfSHH6NQQFs+2VhNyryvs0V/I37wKyZsuCB1ftmLZUFNBaw8FAkxoKLtoZqM5Xw
t0+WYFVPEZydPJrXc0taIQnkZJeKym7xtjXIcLeC+f5JsxAjO2OdgaZiqKebBS96S9v8aBvLnBZn
cScRB1fJvlAnuF3N5YdOL5NXpY/jP8WS4+w5dt16lUG9NxQO6M8Otb8pPuMTQTIRY3yahJD3DNo6
E32x3tbW6+9rGzrIOsLcVDDX+HUWz+FLdc6MBg0RVdQ1VngqlCw/QnKTIdbRK5Q0vrqqE0W6acVx
IK25RaaG3lmVsnaDPLhgEZ+277GqyWSrYfixoKPwJ6SXbyOYOVZnVsaiizZ3McS+lWRg3YAUsaLO
pO4Cc4Ac4XAJ0EBFQpAbFRLC4pEE1uxgsQZMxEK8itjKKypqAkgTxDWAT9Om4SyE2jflj6tiazKB
Y3jLH23FCRpFLu4j/sr06OBzBqgn7cxG7nGPMnEJsqWX4nlq0LOPOqjrqZWQ7Eqa/nXoZt6i1ZvI
hkcnh4XB1zJYlFYL/wyXYLGWR6J2saBz8WeXS3/4Xr54VKzBr3m/R8DarZ52INX4tbshhTuW9I+h
OSbf5S9XsV53sqsvy9113hXn9D3e95uC8XbDfwL/0cKNpLSB407M03kMlSabSEhMiKb6peajnoh2
qHF8eCdCVBdmMgWq8zk07EAueWSaqhRllIheWlt2vl7s+DBDw8ZUihY2StBBiJB6shSwwuyz8Alv
myp6zCXWTBPDdKxLHwQPfLo1ceZd+QK3cisP8BcHbqYUZG7+tfy6HrWzgiMxFZ382l3tgRugjsX8
luerGnoqZTP3aB5gfyyQdzf+aUL4f7Zjt/Lc6u/CpjoMbcItEBvxG2p6swzT4etEe2bTTRLHfnto
MXgsW5ppARoxMhlzHL2Lsjca6m/sZavVmC0bNhCn+zXCU8iZfEIvRCb4SndWslc/gI+9BMGGbu++
qMXKhV3rYQL9DS/s1uBzqExcsbsNaGp4Au3wWJ1XWv7pV9+VE9xq7rutiTQERzQGvksntq/fvUU1
4w/G8l617OiStcGVr1N7WFJcGeeAMWUuZiToVN6cBhgAyB55Jxi19mLnlzvmqINIT9XaFz7/mN60
OeZmCC7znxbahFyr8h9cyfQBKZYR8AAlJkM6oLYI6rHKzgZTB5K/K2hoEcsb5RIBnnmMv9as/FSL
REA0mfMriDAqDK9HeaSEj5Vv3poGeGchmuy5tawrWYsualR5mkwG6oLp3RLrlW4vc8hB63dQkubY
cYrVQOkQBf4KG0LSCtPReSkgAWANtVRNgS315uS/y7jSgC40sb/e+Q45dKzcH9XkQ3lOkf6c2cRl
2Wwuk/Y3XiwpMBje1jVuGkuKBZKGi50uommNMh4keq4E5k4bRoW5S/6Bc5H9Kfqoruk+13RGfaFe
a7j+IK4odCYXLaQbX837vAIdKmTzzNmj2bq6tjnOC5n58utSohrCt8i5H9LuO89SGwonmev3Xoit
zk2KH5Pe6pDN4bXp1opnKG4xttl0Er3oeWdTi3nN91e4SM0ia1YwIsNLPACrnjwh6UV90KNvdFJX
EXdYH3BjNi3v24ms+ySRm2mKR1OTZFnBkouHeIP05mNyhIgb21wwJrTRxtMm6/m0m68KZBIsP+et
puxLw0/hlWoJCxMAAiruix8sufNadMQfizircQd7hTrN+w9L0392kFonESdAv5nb8ANZ3u3Whlwa
vDzfRJzbM7CUMJQ6rxhlo5Cb5XRwQzQ7dO2sS0JHHDCrEDwyZbGZy6poC5Z8qxWD9nLmqPGLm9/c
+6kHNd3VVHP35SJ/hPgKfO97+qa5kRDtvMG8n3z/fq+gjUq0g2WrKJDzP0x1GGhYhyXfw7TM0jzP
zmdhJ+SWqmmpXlPb2vJNP1az+Inf0dsPZG5TB50rZSYvzPRkH816IrvEV4F7A1Lv+3BOoKc+sWXJ
z9GgUUBAi0AgorzHAO1/yeKrsrXLuoVQ6AZSBlh8RPU0OAS0MoPM4Qzg7uE0Dv8vAdCrCU667NZW
NvaZdrWawp0pQroka1X2calyigRhXvDEZy3qHFhyQ/jm7pvlHz5meBuEOwuDBJCosfrZ8CjYdP3T
1nKivR7ClIboJ9oOr5D8Z70FvwW8I5bsGjUbF9AJ2OvNIYCHhyNvQ8CtZWiQ8AEnMNDXIXj8mJeE
V6D9sAnKTyaugthe4QNnalF/taTb37vHgAJoETbutcPJ4OaKhVaXCPvbbrAKYKnpgzlWZzNsQ89I
9LBZmOg9YPCS9gGmd8VwYmWt+1t6yvepT/wuv8Uyfq2+5Sjjn9GNr/2aSgZMeqQBBM9y2v2f+UWR
lyJvF+/Cylmz4uF9K4etCi2DmMXQZrpPQeW08OzIV7++u463N9kUC8itLJMksAxPVJiaV7G/eOpq
4ACNEeNG5+tjRYoCLp/eaYZ7tfgQtpu/yXnnxsJp2LZa4KDdW9rgDzwcpPk03MaNzVT7wwViziOo
ueObhe3B+masgPFFaW+YVlYO/A3QxBqz1oCw1laCcjAJguY4z026PT9NObWGu+wVuC1qPX3n80T8
V4or1xKbX39TMh6Vnvdm0SlIkJ4U5EqyP/LxUz8sdGv8vy1OffP3G1Zez4gNhDWgpRsh2msTUA9g
9fKOpfUlWgmmmHZBP4mKMvmxjvsi8NxV2ot54dS5KhaMO8T00JqgfpvtB0/Ms46TQnvr/pAmHaGK
HWPeroALhfYJSk9Dk2EYrmHsBkdwgr3byTRnZ0gA8QG7h4BEX27dWd/PK6ojj+QzUasEacWdyWOX
nctDvE0tMu7EmykTygwihl5DRsZHKHgOtNTUQtRpzeTgDWYpl6kdtn+oOiXF/2+JC359HejrtDlM
lv7JBCAej/nPaOBQ6UULliONxW6coW+Eakp1BLTCWlSxDiIq8Kq2JxXLUojVIFdoibxet1OvPMii
AB0K+CHigtsu+NOsZ8S3YQTZdpslcmeRR5jdzJ8+S5lgJOqSW7fsix7no8ZbmqKM1ol42931qhQk
ceF9mnkY6mVwMkEVv7YHz/piYw2QibqlxmRrOn/hzo9m3qu0HFpEG/cArCVcL31ZBrTm70nJ0APb
k51rPftY8mLNPR4OS41knQ2e3faFjR+SNXh5z0Lm4RFkS3HIs6QLhyrOZe0eAv0/gY3NGehBfuSc
1iZAnWY11JyFe2U0sDqq6YYs4TY59OyJ0J5LeTVEybqD99DFWYTcv6SYOLnb/+Cs4HTLo5OFeuQX
GDmgH1eHGSalnmXYwl/AiVLp/wUr7i2/cv7NwJ3k6nNR0diGSt5/gSEIkUnLJzgZT3/1mXeZzTrp
3TR93jLeQk+j1xjyH8bRn7CLxsLuVPomGeYkt2ckr+7PP2+MyNYXRLYjT6lyKN/fjdNef06kfR55
1bbZt81QJCCePjVUQprwSeVtCPNE6r/QxgPJdSxRrPkd5vHzhr0AW4VsNJ5bCS10I9nCYGaA+csx
nwcB+1XWOq0UBgWkVWBOjrwgP9Clr0tU2wDllTquwzpS+TvCbax2xp/F5LEIa5BA7i2e1byVtoqH
7XvBYS9AgKJ0wsWxrCoovRl3Gj1raASlkYa1eRLYV9Bc6+XZ29rt8ko17HGgS6tM4ir0+IGq1z9O
QoBZhOwKNJDX/98lPDS2cWkPlVTuW+jwssYOOpf51/lAaahFeFUwOU+2cG943uugrENRgwOxoi38
yrPL95j1WPrFFq2WsMWuDrpTlpf0lLxGtBA3rya1uf7HconlhcQq3Xwgcvvrm7sqZSmOcgMuKHlb
8E2Zwpx9oO2R1lyDlB05dzoSGZQzXHJ8QLJp7HSfsb8CP+XJKwJgVjKtRmEOvr67UZuPSHRDf2Km
9c1Bl57C/sLHu/MDRFg0TQ4rYe+BfW91mydT+zHjdbNqwtx3msGIEJJv+kizd1JkvSLUs9P5syAB
p5WYiiR7i0075qHZBBnQ2JF+hV3pBm5N8BGyNQQuXUvxOgG/ObSS0V1P1MslJT0v52fkyFTrvfOb
tYGd38Pn2rk+LmaXRVai0GBubh+mJIIT9bz3BZdv9z043Mzpvs572+tqwCVLbQ3EIV/L313tqCUj
+DvXqFYa6ER+89IdIdMpVDb8Mhwk5kEvQOT0lt9DpxAwHIvM7vWRraA8xOvv0TM0tRLC4dGgIHQc
UiwNbJ0mGj0yr88fioNhQgNHRd1i22KgYXuQfcFroHApwWU/8IidQQY4B8YxKem5ayMm3zsUFbRE
q1THmsJIoIE29SxpGD/MfpeZyh7HhsxrkchJADAy/Ck3GN+pNLY3xin8HiHxzSQ0ErChiFXi0G/z
LK8JJSiMDtvklY7O9h8UlFXV89XYymisgG16IGqZt1q+D8XtUCOEvSE7G9wfWjDPyvyS/K57oc+Y
knBTlYtL5iI+oHc/HJ+OfwsvGxHlW6dDBhThXBM2g7qR1LAPLZDrJZvVavIX3R02ldjGUXfGsTp7
sBBzONiT9PS7pcruc6wWegJ55kNmEOo9tv/Qd/+aCwaIKKx39zVIX/6bowynjMJmgeyDM71U+OIC
0OQxwGBIYYW3sYDssaDUvUSWDchOd66JfqFzjjPXvgSgCaJTwh8pgSl8SMtGIIE4sRX9marSbmvl
YKiSeIKbdOCO9vkXKri9eTFl2eby3q0quDyquYcz0O85LD4e+4pyaSOYHt4IHSM9jeM0sPngCl+u
karjgJ9YT0pkNb3/OAVobiRzR+mNJ/Qp7wKYWRzW2y7jDMB9SuWOjAe1GFBAorBwrXWygIKH3Y5X
qiI1oWJAW9a7SHXmM+UNVY4Z8SrXT8X2mXGL0xoNAMpupqHLEuxztEvzk9l66aV7xSz4WN7fbH23
7vWmou4d7lE5ovlRZ4AqIJa+Ehi6UhE4yjDR6OdU5I74ddvFnLsCbWJ4LhsV+I2+j1uAv668/Iqz
EKX/YY7WGuFnP+G7EZefMMrTEfBOVqtVhUaXiNFbF3zYgFLf3RWEt1MORFaEra4PXckXLAE0xxFE
xTOTMjySCVcrq19KtaTLsLTrPkI+VrUwm1fVEToLrkd9m5W5iPAQO8njixdmqU3fXVZDGw8sKToR
lo5V8igw4lEAG3tZobMQLby3dBn9nn20jzfTRjGy1FvveQyFuijY608YJDANU2vjYcKZIMOI/dIE
GkScTyyIJnyBtOzZrksE/HWPqkxPPucpHiEA+2M5G9CduzhqRDeC1sk1tsXpD2GvT7NDd8MGb/wZ
xX2bVntVFkLXwtEFpRuHcWijXppf7Eim9WmO2DgbtbxeTk1EzFfhHD+Lxtfh22AQrU59J/UeYeq6
NZrfbW60FGRNyIN+noBRL8GnCMwZ1eXL1rvRWPcF4STbpiLSIwuJulpaerkaHFF2jfp9eeAE+Io5
Z0pUlJoOq/tUxFxpOxHTq7IAw0l4rptptjdLtz7PnJpG7RWVDzDHS8Z/yzEhLmJ890HtplHB+CAH
CUsUJoUL12zuDETuSDGi4wwPF763NrPFFkEaOArltcRoaIOvtkV7f8bOIvN9ZvDJ0zDnykDg5KNV
N6rExvvS3jhhoLJdqCkNzCwRsWPJ9ZW7gmUW+XBzhdvf8YaQsIUF+wUJLuWo/z7ASiO8030qBQCI
55UPG6tNh9CEJB1RPSJNj1cLlFSZjktIuqj+DaI46q+GJO2lLQtHHXSV5mF3frY0tpzj/xT38Rp4
yTAmN1VBnVVPZselO1VPK5eJNyEH9OZDclyxM44Fm4a76bkyPQ7GsRVOg1WxXrFoZGS0zquwogqz
imxm5xHZU9iHaZn6njJ3SisG0XVX5kpj3J228805BtD83FfxQ35RfdkDGVqrWQmzOg71+svBSNDF
+mpOMKvm2582wAAy5sitAQWfIbHviEePWvXo3eNSTbQIyzNGQ9oRisld5yzBHdBn13EzyfpUKzTT
OhLCaZJBB9KQr/5QTNdYtKgUf7KnPqpC3K6ur8gtZ9sMu/nLyQoHwXTvaDCK1aJgRLTAgvdqduDK
otHhDJCcpn0TPKYm3eavGt7OboRZet+LEzdHNJAFPuhAw0rdRa5fzEG6rLTPUxrXriW2s19QtCtH
EzfgnxvEqoW+cYyxCHWAd+BrXq+3q+DmR2or6D06mxvxcyyB+E6tZWXye3bRmuaDSodHWm3dr4/Y
acTL3KvEx3aQq7UZb1Y2a8RD2mKcK7yyRVhuwqQORo5+w7eQH5D0U5IOFTqZ6+vMeleTuzBlV1Jt
cZzSawbUSv7Z6JCD3Jkcv+6UgwjHBECAwaqcjEstij4ksZtYkQBmfK1N90yb7dgCb72iY+9c1Q3N
Y1j+IyKrAkqLy9T3yJAN+EFKp/7VDni+FEQbGyoVfrBaQmvIMkywTtHTrDkEg8E2citK0JpBt/Nd
S4LPikq10Sx+gA5XSZ5v1a+eD6nXcEtHHG1nlm9hkuanAUmjnYXkISf/LZhxSRYdZDPf9wRmGbtk
keJTzLkFjeDojLgvTifDixfOsprlcDxcMKp5dsu12EH8lrIaqC6peK9prNi1fls/l6IXDLiiQh+5
yH5WXsR3Qku7tp+OcPydItcvspdpmpMPOn2PGJgyvw4TEp5aMumJoOia5H4zRxeSLYVyg3ryiMnH
30ILT0co77v0fJM0jGm47ItoTNvpd6YjS5wEmK+SELbms30dDtcWu93jB0ODQFUTa+54gAf2/ls5
8Nzp+4K5V6rPgA2z+Zw+mstY5KDWsnWXvbSNs39AuZ5Y1fsicoiULljendoda4pCfHa7ppwAWeHl
kywgtS4fNKbvBTR0Ds9tG9W+UIzQwa+sI43OK5PW2Jx+AuwLGrlvopwaSPGFSYZt1vZgfeV2aszn
2yqWMmMukgjU2HcHy7Ir0TSJWmfEbVS3UPGlFL4K7yqzoiyZrSm9flaYnugUppt2SeVPn8nsGRAU
3/XLevcWNtenTRPHx8tFEYVUaOiv2lnqhPFUcD64wJYw0cxW5hM5Oy7Q9g6eld0NmXnlyU79iCbS
Xid32iQy6gFPX1GkiBm0DYZfputrGR6hYPaLuWaqTG7ua597KflWDSUYulDXqIyRNPFDIUAtingP
VDjWyMcpJ1BuRTgn70uWMYhlxJrwDEUnY5Jvsevw2jKfbMS9QhTV2mI5bhgbrXgxGndV6Qamxpnq
JV+cNyKcc2xCS3/+eetBQGC/zom8wlVx6tp9oS6dNkx+QRy2O5GUfiNYdzpLKz9cNwXjrOXzQs0C
xQqgPme+ZTLQRVnt1BliJxagF8YqhMy2JIo9188u//aHuY0RwNYeB3cSWBSZebVC0n4vw3+iwzjc
dnWICr44fGPkysmqrc1S94Za64EvvPgZFmO9tS6Br73EwaHvCrbdYzUm/UN+BlR2m7waFuLhO7gH
zyhpZwcAfkthvFP1Ua5uqfB2qNkmCjcuBWTBixiNzuZgyBNurMRNsZ9lL+LxSfHD/4fFOJGfiVKD
U2c23Y016aV2IBLSrNjFQMKqU9+E3iQK9ZueLfuFWfSiQ7EbpSKfCyjBIaUw3/iYEaPaNhANugQR
pxUbqI7emcp1btQdV+B2qeauBJnhqcMN+Q3cytbt5fBIBJYQN7KCSWtC38kFj7Pb5Vx2u7f1ve8L
g5F9FwqzLMEOKRFAT0tjYbF773FRbdj7WvSXm5avzWTw2JlUP+tTfGnEabkrd2ME+OrfjnP3fGsT
+yw3/BKXj4KKH6BqmvEFP34h7QPQQTswIOdZ7Vo7ogc2nc72zKNwaY4/2QzVptNU4FmxowuBStD6
WEXgStEqvQ2JeO8Au4iZ4OfnjI42wPTy7WEHqWUJnmXkd7sYzUIj2rrWuChGmRbga+3JGEGNgzML
wqMEw1MiebCW4NLjYm603kGJU50KjNjYb8S0pglijVzgKW+rvfLjeus9h2g0n6vbnfu5liOgl0Bh
dsly5Btk70RTyARa8nCo4hxBw2Ejy9AOqYlh8D73oHkEGLWimjh4/mxZbaPvyHRFJAqer0PPhTv6
P+cI/42FmjEqLhLjKvbYwNRnco6WiQPsFJkM1z+Xq7f2SljXQx5VlZ2Aew0ObP76/C6eAPXomKNS
sE0h9j4WpFUsXvMsmaRWRMu+QArCbtF+6vBEhgqMlDn087WQ9tbuVMlYFQy3qfAKEjLytBNS0Fdb
qNFZ+geA8CZJoVyju1qEaJzLqTmA2/hrlQpqByMimbP29mSSiK4qZWroZGxyIdNXn+ClQscNMO8W
xrjhKlWhOA3y57nfQEuavozK9wiEpCQU6zmD2GbxfG37RQqqry2JiMJRt+ry4DUXDnxyyR+GDzc4
LB6+YDrpVXUZIWU39m3opqYaFOQI43AwFe/jz2/8V0Eqk3j3T85VnuLIioXYF1jQk7MhrTBakfBE
VKv3pSEUcJ3Hku8SESo+L2K7SAyVuN0z6yFmOkGtB3aqJXZ0kuDeCb0QCZmoxHoAyY/itf2IA+3l
VBSNan6c/9WDo80JqpV8iBSLMHIGdFCzFN3dZuwuTzrNNxSe51n626DCwKZUBqM//L85Qiw2noJB
zuJfRGSTjZAtep/k2EcJ9cpFYB6knqdtWo4lElDgNqp4wLZ0NJ77mRGA8aLOMT4IJIKpF0YIRNn0
GCKIfdV17cVUfYChu6UL/J05Z/Avg1JuD06Lm9q5em9+pShGYAv+dhKE59coKVZkfnFmq6zdg7Au
zipnkdPVcBLJJwJyacUU9rGPRqJwGQj9MTDQZx35Gl2xKTJE/2Y3lV9ZNAHByymM5G9yLApAWgvk
sCvIURmvFQFybmRR5LLxHw57mk0CvImzJFgKlJ+AXgq3xVsjDWORZYexqfWR3Vd48puRlPh+bKps
W+GcLMBGXKiq+0FCQcq/4ahOp4iwA+lI5216RvYJb3rmmMmSZEmJGpdBuT6I6Li2BFYnMq6cXr/V
Cg1INv7NIacq+HZA3bIT7XVpGXkWXylMByIjwMVyaqAD3nknsyT5FcVAVen2RmSaYcgYc9IFlU6h
qEx6poFiesmhPwDWF9Rh+sNelIILuYQzHQHj1tCgj2SXiX8NOkPhKhtY7oCDhN39dJETZ4vukAam
PRRhUAXG+7tNGoH7fyEKB7yXzxBQ85knvRMpiX94MKYnB2dTMatwudWSfudidthMPx2Kw1q4w1/L
glyF6uPsdqqXdvUKcUVRXBRB1lRhE6HsAIB7xUHZUHH1FdRZ9frIGcAwu4pEImTpTxajuYYAg+0r
cihO+lBgIhi4qzvEtSz0TLHKX4jx1pvzthO2AVnTuWV7qg0lknGDoq36keLQR5HJTK6kcAiZlSGW
3y1DdWztrfm6wAKWj7yyh3nycbuKWr3Cjcu9qCAdCbT6SSvKP8NsHjr7wM6A/uSo2sCbBKH98nB2
XVAG36RPEJtH9GiYR54EiZsN12eswYUS+Bw8M96K/Ej5B3012eY38RZDWNhWCPHUXClRr0R39Bgm
uOC1R6wWZry5YuNicEjKDnxv+KOv+Wlc7qrckWpLYn72PhmIvkePgLLUTuzBiELIyu/5dI4u+EjK
ifrokBYVZQ8gA/QSP7wgQ/3KD+x+AKJxhOYPv/tpvOQJv4pCNvdyVCHl87zwugVLE/oczBLC/hpg
s+KsY//s/1UMtx9U+86oX2OEWsjtiF9sM7uDr1aA768EBQkWjk80zX1S4gcPexIMlTaWTRoyp/Uo
wMuLOhQLolJel9Rj6QrKSQparqqw6MYBy2rPbiSmsYJVgUNVxU9hgXtI3LMTR+8tDZA+RICNmPSA
D0f9NgAPdxEurwDKY+yXL5g6jPVmLSyCaTnpyZiTU3OLUKMa/57PChb98aaSbdpoe9oCmJ6lvSHg
o8LY/J08gVstx6gitbBaJE0u/64PxwnhlUQGuhkH+ZJEtS+KqkhZDwYRRFxqoZzcL43gHnx+gmhc
FjQzrJRm+GaJ+PIINovi5GpsuTga2u1u/0CpdKa9hWHEb2pHkqMwGcaK8ahMQlGhqJUUsNqwR1Gk
NSxSOgUcblm/KU/DWnVjdGNilc7Av74j3AXXsosBqClJGF+9f4Mi2CirKupBKLIuOQL20V845CRK
DgNaY2LX3Uq0F1RZg3WyEtpZD5rMxr9JatyL3w76eM1PhUx2F3W/4KXThjCuimSkA+3ZWQYqaz5A
r63V/2MQbV5zwVTJaQEDW7LO06le7a0Cd+DjXY1heCET+SchZ3lm3fxbLm0/IOGGOzjZOid1Zjmz
ddsbIgHS6Xt2T/X2IIJE+eTXeSSaH94DZZsoDO0JZ0/C8iQp9lssEw8ZF0e1uGQjr+qfKqZVHV06
l2PUXV1NWhnfNYb9dIKhbUhalSoy1auDWO9VGYPf+Ha3A68zbSqADyONoDjXBPFz39oCTFHINgBI
ZhBrlxD1lAzQfOjPBm0HGXLLmWttZ3cO45dV1UgmYqVlU1q3rL3gWqpPv4I8/3Y1YlOwXpE5DLQc
GZqdTmy2A1xPTAcl7nr5L04Yo8zKEYvilm0fvCys2u/YCS+LBOOw0EoGorLXrHLEhgvgBZwM+tjY
NSW0XyuVo0HsT6H+FQwhzH8lfaxqvtHgWMKWFDIAQfTcR9iJs0KI705xm8WUFSr4mttPokiIOC19
Lw8FnGzqSV1of+BVLl9HERwwf8OkGdX+UQJ0XFt5lL1REj1XLTmIple6h2HhC2hMWRkaCeavF7lz
LiEEcIFBqC7u5RYUEjKZC6BX3vKHUsUvuLPIyB4jDZBlSx+hSXJSB/CBX8Hvwb5Ariaz+GE3lAFP
mkh/hgJNyDT+1RkXBavMbj12FyNhqcGemNYgn7ncfF+bnOcUkP9OLj6Rhp1q330ZJAUzlq6j004s
V+OKz/HYRazxdG1uqvIJRYXb7K9n4y1mKpds+KOJeTr4mXW2LptlVhs+2kXKWG5fu6eykqoFXarv
UhomoGfkFWc4/82cKQs2sqQO91knr5JjmWnFyTnjXFvkZWznJSOGZiRrAIovGsGvHbbGycP6ecnn
3hlVmxq9pNY+ENqBH37vkwb1F4n0F96JNFqKFqXIWj7OlHUc7jVHkTGQf6UYd8HCQm+zhckfCA/y
bBgnM98U175lLDIZUQ5iB9FpfISUSUoffB0jWc7PkP6F6rGI0iC4E/xZGD9C4Hpi9TpWwRonqePD
5RvNLxrG+bju8ObDFUm+4jztwP/Adtf/3LyKEuBnVDgXY8KR1xb6ta8Ap6vt8BNpqfikgLTSP56r
rIL6mgd5RWfPksDBBS7fW98XZkme69UFsBZjgBBJ3yFsqSW4FAm/hcq4js5fNKPSGJUbqQGP9dhd
Jlak0oPGl/icGSVBtBPaAPhBbaFNm7eBdhpBl07R8RPdIeNqIkJhIWvVfMBtFRmWYfsky6+5xoqh
wkcqebRJYFCwEvuwUZH6qFkGxzYKT/F5eyo0Y4WMsTaE0kaZGLxocIE6aWcLVhzzESTvPgoLnOuH
qwLcvH8tfXhp2gXRYx/mvA1On63sKYCpR5Q4z+JQZPYBFqa+H4WsA3/wOdjrQhecp+QFt8QWaAqb
FIzoYFGao+VrmdrwOpXkrfM0Xa2SbLdsjsZ8TQTGDj9uHSFg9olfgSxcLNrRA7+VMvp82fJcQjFf
Ls5VCDKCIrytFIUFllavVeIfyYBEbYSEYZnRtgqX2v6tfK2ztgJ0yFHxspTupHOls0he1J0pJy75
BqskSN44jNYDL9UFZIpYPmMoYb4jNur9caSw5HWIZk682FnYzIcoFKEGrP5jtpXnrrQLhkRXOCkE
N7cobI+/KmbzJRL45pRgnH3iNcUDZHcspjB+uhAHjEonfzEBuTNAoA3q+GV1YtPpc76jK/RJmxi7
8Np1KXfEGGLguoQVE45qVptgOGRo6efgjtFfqbfGpeiCvAdMVJNf7AS0Y45p8lnzTRw0stJ8m5gr
J3Asnsae/7+1Hag0zDD/+O2XSDocMvqLAvCRJVxkBFpp/9oKxUrLcGh7hm/Y3OIaHF19UvWzRyRM
jkbUzavNDFCIPCiEUwVy33NV5Y8mHjWI6jvY7sKg5pEAxG6i2rDE/fwROZbC6p2FW+IPpcnsE4gl
30SBenpVe0qFjCuX1+mbGS/4Vnu9cuSFmr5OkJXIGTgsXDDsi9mX64rhaiSMbjni6nl9cN/AHqgo
8JTaZ4smQE7N3IdmOp3YwFPviUwRqpfg/alHWnNjaZHQGFPEs1GPGqySh+DDV0pyIj/Gs7Mrzdkw
KZLFDb5BRc4TBPvyLahsNe4IkLsY3UUS7KA9KIhsPWWRkNIYGQ88+9EYAkiLiYuN6AqF99BKGxnj
8kFMVvfrd+dm875OlHulLfINhyuQCjZp61zOMCr/0tdS0xtJg+qHs+BL/g5QHEsihn9NLsWe9ezU
kxyeBPNNLoV023dBAC5MqcWXQk77q2DMDw5DsBQ5oTR/ABeLh2ZFZ8mgbHV1m4t9s3RbCKa9zwrm
uOeN0VLy4JK8NDoEyugRD0lnYyyPTzmoYTN4jKPnotLLoah/feZp5Fv+c5h7Nvrw8jdhkSTEJBkI
k3BTM+wWUD85RqkwFnwoanpbdMRvYKPwyxGYVYra9NkpXOwhRcpBQXOP07lRNVDSKTbhq8Ms62nh
5lQNc/eta/F14kPGI1EQhvlVyvvs46b+lQ5Km/Te8XKNh7XE4QnhzoBJ/srMQaRW8gBl8vZikH6u
Li0p+o0QxZby9Fd9E1o+2B2j+t2MBvd5ZJih9iYEAgiXJcVpg2c0o1XvgSx5f2vaDTcLV0Z0Jrb2
fG3+fpbcLI0xJGgXLkqXYNUsPmBkUNS1sWJdHoeRzgsD64iQXa8trz2xcrT4nMyNR0sG2/0I9+LL
JS9HCDSmvToeQ2F1O+WNCYZ1sC+I5SYxmKZ9+SBzh61+Qn/dQ1sE41LDnrs9smYV0UGoF0JxvH82
/I4RYqcFNdYuuAQS0VJwrFnk5Knd5Lojv2o2jbVXybL0IjjIuVFQ/sgy5EBEGRhdzRWeQdQdoYc7
0Vq2T+TPyHVzAplgjRAhcQMzHogJWOKVV2RJq3Wk9c3b0C+Zo3ge9cRJ8lW4HPZrlq7J/6663XIi
BTCsyRzJQOgUJMzK27ov8tvAzwJfJjcDh2iOTJ+1lTvvxAPbEH5IFNTg7Amc8MDn7sVfW/YrjsmG
gN9ErA5IC9X5ODgdASkNuRtSPf9bS/NopEZdAsqDUzRcXkcvTdw7UctO8MQXlApKva7iwkEHBe6H
4hZR3B/GS6rt3agBo80RXQijVHSIzjLw50f0QYTGcR3FTDue4iifQPe2gj4cVjwNCAQz1xG5iIw+
fbNlAU42pq+gXybcu2nXcg6Fuh6f65ZZsWy/aMYAt3bYaKW13cebVPeAMCjxH2/qgUx5Dd4LBWm8
hZjabXGwXckDy7XMS0OawIXXeqhq3NCT5gfA5enHDWsQgkisk1hE6HlpLUeWeRpb9jOOsXYA/QRJ
h1vovx+2ew0hVHkfo8Q8Uca42KFZ77pFThiXSyl3dj5eHc8wpMXcmPBg0IvQWedftvqtXIe2wyz2
3oDqrgLLNYg8z0iDd5IK4tsgk2IpBhXb+aTdHFmPgeuL9/kKJ3Cj9buL/56fvHfEFkbQHgsOlxXq
YsUZGTlNUY0s/kr7Oew4LklUCx9ZPX/6hWysPJIMHVBgSJwodXL9C1XoA9dWEUt0uE6TminXbsPs
L40hD9spGJBVV8nfOYSNmUsZ8uCcDOESf54X1/K8oASp6hhYaPgbHRSi1V6+D4Fdi0Q0tSYtersJ
E8M3v2Hc/J1lvcn+/5jWz//3FdYb1gYdwsTcEqTBnEg9fs8avchCymNsl46GSr93JAwj2UbigCYK
PyGd+pWlMPjW/xj9eU/fN5/1CQbQNq47KqAJPaeWTJqszl9JfJAlDfdLJ3KmFsz5wK17isOnos7K
XmsU/ZAhuiI5BmessGYLnCcT7kWSFkRojbpbMeOI59OIAwy6JzcM2IH/IJF/MdIuBcO2GC1/VPBg
O8CCu4LIf2wS6TBpxtlCZ4kzzYKi/v9yy7MPWNzBfUEKnREKNmbQT2a6xVJ/8M5ZCk4YV+Ifi94D
dMTKf7nPLW3RqUxh5SPKIt1hQ26rawm1TZedK5h44ZdPtVrsUqefKaQYRReNwFZzuOONaYKH4x35
x2GNgWWYz6N4MjmPXmqddSs6NpjtVpY/quXORahHbN4k1E+a+YPAAvz1W+1no5mnpx9XivIIe+R9
YNNdVIpcE/7MRuJOBjNg2iHJZtHfT42wgcK3TXTgMUQ+SIrXJTBu74lbl3gRbkPLTdFKMRw+m2Uj
E2AU+vThifu/Ut/RYeKmXb/LYwZbk/Io+tkQG6Kpp3quaDLPSa3MecqOGQXYTQ8gx5wQ0B4sSXoU
CeJRmGB8lH5pjcamfVFu+ZO59Nab2s7Mw5J0UMqjbneOnrF/ZFhBoxG9ALoCjOY71l1hAV3f6cWg
l9bAzHEASJC3cYX6D0sDZboZU4gUSMXaQLyNUThR2AjZjj/FoAQn6GRHRY5OGm0h7JROj+mY8e8m
VOYIMr6UzAFmIoQ95BjUajBlMqQIskSAOKgsPP9brvNdr0tQ/Mg9coWieU0h5a9joBvtzqRq97Yv
H0YFeIp2iUJVCOJOpQ55rPWXZAshVfkgwXvLhaeP2igQMRp6hascRfF5SVUQ6O6/u0f9MdkVtOCe
Tg8sWgyVTOhVfHaDQR0ZkeaNfq5LoJp6Q1pWCbYLlu2sGQSRB7eIggK5SsivcEqHxFZV5RJ7M8Gx
DtNEFT6HNV9VIK6UVtfHF88XQRX3nXfsMIUkk9Zoc0lrjL/fyiirqQWjvVrxRGXVWoJdr55ZpXzX
3WxV42nxLoBOnBuusP5hM3oXsN4btSG+nCy3S8479EoZgTKD77JTnFW2lek6EkDNOPGo7CZB0sO9
OfdJzrx82bRGrMmJkPakQTKknKviQ1YHx9cpUai+xQYXIcZf75aAwGBjJhXXvDgjxSs+xo2fGn8f
spLWs7ymCInr8FhgWvyVPZMf9CUXcZK3JE1VFc4mU1I1JlNGZNd1slvBlfPcout1BrmYNGWKaE+m
+f7Q4PAQdrgb+q7sGfbXm1NPJwRg8P466kuPM/P0XiHe47znuwLcqCPaTwfaBr4zAedovYElXlF6
YjOzRPl7Kqou0GSHbjTtb/Veg9Jb/FqJmbFboRYnRz1u4r3jxqJB0ElrSXxIIQuB7BP73gk2iYSZ
myxgrX1gDK27D7PaCdvc7KcsEiSZg9wlNwepHVA+AcZDHQ5050yZZSghCyPIoOrxt2QZBqICjxEa
yWXiFAGG2jKJbYwM3RgDvruglMLIx8KmpcPZhVTb6gmrDEM0DBZaomwUm2bvxffJ9dED/6VT9rw4
Cnzz1BieDLVoxkmjPUKoZCHi0SssjyCvXGfyJh0Vh9AMZy3Lh1DTlQVsJnvtAFJJFLEoFZ8pF/QZ
c6KoUeS8m+yWAoiDZtBjOESRBpt7c7jFecekuRB/kWOimvH5tUCFeoRinM+07ip5wygWTGXyqqxq
aYfBzjUayJk1egz0Kwdtn6ZNVv5MNcPB2SBJiWjow+uF1HkbgaiTniozeGqVlT2rhGkMn9/l4seq
3fEqwW6XV/ejcFjqHwU74ES7UCvuIAGVegn6G2n5p/Ydy8HR5HDYscgIPlfyTs0PCt99Am2RwIMW
EyACz52sjqJEErUg1owb/3WTIxvPmGIxvC1nMJH9td/TU+Tr4BoXAGty5qJu4LLjI15yoMJQ9VIA
KGUEt4yLShH0SAzq0cJJq+fuitpXev8F1DlsDIOJzQuKjtpEG8eNzZ7ZMcucd8TUjpVd+9cl3PCG
WGlT7ajUYyR/RbpuogtbzwRQ1GaCSiNzVtSnfeUm210xdyVIbPe/Vvu1ggYd16OEQ4vrLL3fKbmK
d6cdmc11yJcRj51UeUPFCQWUYhPxhhnd1BPBRALTJmptId4NagNTG8dEt+6AU8g1hDL/Kseio2Lh
KzwV8HaRxTWjn544ojQg5TNvYRivgbfdrmsLYxPYPFK8t44iZi7AduIXq6kJmLb9yIpPVpzq3eQi
kCatYOQi3CSbYYA/g6iUYdD0DBWbbIc4UMd+Ns/Avyq3bm5E8rOIjL3ApYDSZZEYN6M1LtZK56Vk
PzNqhLHGG+aQPj+Fid/q4RkvCXYEdLWi1cRfO1K5dUo1DAyyyC3UwnxCn+v1PqwX8evE2uWw60yt
M0tWJcjgiXfGTElcfMX2JIB25cDnloaF7fBA/wqIIgnAKLNMw+UzLqvkvco9edXVLVMSWQZ5xgpn
CXme8nmimtViJzxDiTzAAl1ajOJHRxwWLNMF8C+bTXwxfx9RhkIqYNRIzrAVeq9gk3GtXlMRdu5n
Abbvq/TkvrElAjmMLC4q21UqHML0g+11g8N2+JCin3btzjaCoTwLI5T8MTD3Pbb9GCCqdQzTpjRo
zPC1aZPDBVMWjQs4Mg1AcZopWgyJQZvjhkuw+R1CT2HbcXY7z8iWtMyIuDtfSJAjs772IAdDijWu
HADZpBPcfli4qwYwsLHu7HzFwgpaJfP+AGCVAiC4mFd5CuDBZYrLWmVf5C8YXzr/4LoPWDMgt6Jn
joXRg+mUwYiDVwEg8Bswc+s8EJJNsC3ycoMbw05Lqbr9cL16e+CTshAAe3Ip4zRU00JL1VfyRr+L
zUPCpxwB5XV35i1hDbp/ho8m8ZidsWAUT5Zvl9CV2iyPN7EVPS/BMY8cqaPWZzgR6R+e7VG6vfbw
o0/TZLEAYzVEtiolKsK8QxKhLySgj8hlMch2FtNY2RzrT9/fXk0sLGan2Sli6iR5N4md1P5+LUgq
LN+j1ENwkcQn6PMP84ibyQ/MiSxbNruwCmQO1JQQLUxqYudxjId9gXY+t0R+4vm5ceXUaXXuhifi
pWIFXyL5zTbP8A67B097EF0prUHAJSksO52gTrP0onY6lizWqpAEopfJif2iVXqpTG1QMMR+HCIc
9PVXvAmZOiS0ujeTJTGj6gUMFYdRpUnBsTzM98x+Z91R8Jh+QNrHG7uF4BwWXRfZOgUJwoMdNQPn
32ibuTt4I6jt4O+qESPTZOmdDEbSngDs4eDQQLOaMCiVoFDGg+mr6CsSJssrOxOIxCJMx1SACt8h
sbYZkKzcq92K4zI5IJjYQOECFuoC1TiixO0RQlj5YrADlkenuT7kSUkVV1BTimxNV59GkTYNet8y
zjYVA3KjzNSrShDI/YuT7U4RKiWMr1EcSzUE2CLbsGWo8u/en52x1fpU6jVJjKt2sbIMj4LVX25t
BLhKwp8GOHMBVkT3sgTEaSnzohgGjCqfuEcNcBgfbJjiIHHc2gMuRUgPO6BdzRkKcRoh+hZHmAIw
d9MmZq8H0m89m89B2oOGtMt2IzPMTWfw4e+TjccA4m0XEuOBP7qX/UjR7hmlKJ7GMuJQjoU3Md93
RkIC5V0H8mc7fT/YWvzk9sym9wYbHzTcYl7pTdo3YAwcfB6PMhRunYzVLFCUXSQjvwJk/RU5YK6g
q4siVh0MHHTSj7rJRyh4zg2b046uQBwWmNOpPvFU3RfwLJMuf4takTQwpzofi6hYW4Lv2F171p6M
slCzvdwkFM3j19LYnE6FoIkhV+JLUqAFZrCXq9v4YYxHh/Kf3SlXUYBogezm8cMNvjMOcp0ksVIG
bbGrCP0kK2svUTcvdeq8PqddNRlFV6/1+iDFDI4K1abjN9xCH7o5LM8pWwYqj3gik/oa5HLFvd6b
S7oOu3sWtri+9g/1iW3RgDkv/CemvWi3j3fb+5Sn59xKK1ce5Oap4AKJg4WSvyws/+oj8SSCgU6a
eWvJ2cF6nD6068ZsyHOy0BP119DYjm40dwagxIO6NLng8negt9PQD8j9gRIxap48UgfPrMI0DiKS
gyMWu0dBQzIXMY3yo+eimt7ZSijEwaWGuNDwWn0UVPmD91ixfbnWvSJ6mj2adZNhlSRdoxZHONZ+
Vhco7OHX7hLDljs6v/o/hZUwk+FzMd7X5SNH20T+NqinXFKolgw173GfKgOCu/HN3tUAvcudc/xy
ylPOKU2ssl0/2DtWL+W5ffLy4aAumRUVC7G6eRMJjJ1D/TKkJUb4ERkzTt9hME+UweUrq0CJ+Fbh
vzVa7ok1mC4mEUPx7xHFgCt9C9534u4gmehv7BIktkGLYNMN136pDJRXyp0eHITK/puonW5HlI59
KGyiy2zNoMxwAUmaxIE8PpLRHOWc2QiBmH7GCAcsjHdX8LOXEDK731bbRaKWHHDdn5lUT4vdaefi
/E+5sRUWlTVofsD1fKc26QBfmWhahTL00kOLyZBZhVZkS3iz1lvQbn1iJUZ8yltcoTxV2lR5MbZi
Voq3D9YcbZsNQKC4Hb7Bo7DbD7tJtnzsQ224mGFdqYS/JbEbPDe1ZH2u/4T3YuUbchTRcIS0rxnV
g/CYJbVwis2A2R9Gk2G+pxynm1OpJOoszHCBZ1zondx/kntPSHilgac28PL0sVDgY4hVL5Rh4G1N
60HcbMwkzauks/vdQRfNumQZCNt3X2Dc76uu+A03HDXXDze1UDR83hlRii6oLrt32gKiwHBVdGzI
6pE56DAdNZc3i4RYB3YD/SOo18fBAspEmVDm+N2RAz9sdfTEMy2+kJMdq7bTi5wr8QBEAo6nCcwP
3mmgRAlH2+sjWJ8aCwBszV9wpqqyEe6UNy4Pujm6VubD4lKQO+1S5XLy7ZQBRwK7CjwFmn7wz0FG
dZY3XcbMU7b1+MpyIXI+ZOp1ScRyupHcp0dQjDIenjw531iC1Pxm1HMIFtTrqZImnDcMc/A5Fzzg
KBqFGnMoWINN5SGEaiqv2TxjDVnPca8934+4LLsTzExTqAvy1jkTj++VhwBPACV5Gmnp07yBskGF
c4T2utL3E63TLNiK5V0QeLs6Fi/VQB3GklVkXgfDYm3ImobDlgZyz3AEnAbnGPFBd87MOpe0gHw6
oujAYGBGICkFRnIp/dv9B3UgUd0U4VPCS8BFstojwQOUhepCoIi9HVKXrltpJb4SLXP2jlHmd84h
mz+KwrmtwP/HPBbDFIy6Wn59F7bIdjUReS0V7yn70KxZtY9XMGTKhMn8js7nwEyVmiodfyNV045c
wPollmQBeuR2tDyqje6rDclqMcvxeA5dQi/ihPyN4upEvg+a4Am1UeDFDxSdC+t/u0/XMETNRkAC
GU5Rvgpdo5lDB9FZq8XAMXmIxpjZyQkoUvg6ssNbMFerNzG6GKmA18D90M9saghUouxpuj/lkspB
krfujqKcfjz02erYp/0EGBoVETkW/xlD7qxFajPyTg5WpCtttXVnz2GfFPCY5lAsW/wOVY4DU9C5
gZjjEoeVAwBQ36hp1pIHsOaaKGwfFEOvwLa5UbxTzqqwO0VZIUq/ADXlGual7tXrGnrvbDSQ0pNK
20+vWUfVNUJ9TaUq74qWhicX51zM5F5lncezooC/ggKWlMwrFZDpFetd8EBmEIuWBXxO+kSM8VrQ
pXXSTj2W/Xv9WCo5Odmz87e4hnEyd9n3g2zGnYHPRBzOdJYs6Wp8RJklSiVkQHO6PoxelXnFlVy+
U7TwsHxIFtkZoMFVrVGjQFnU/xWxJt8VDv/yZz7MziAwL0Lhn1JCz+xPq6LRjAcPw0ALs+J1cPrT
iCA/dI7ZKQpPeZ9D2Zp1oPkCPR+dHCwW7rTVQ7yBPj6271ingPyfT/y6LgKfa3WRrnmcM6poJHSn
64vGu4GgUhXm7xENOTQIBiO1NVegEuGHNqTTS0yAKwKF49wHjiQpRiFGOjjmPb9+zOlX8XEeHnkr
Tuemmrc2ODJkj2JBibrlxzhd62fzVUxHZfgJNT8YsLln6/WnW0u8Mr5beIA5B0gYg/gC8Y7mVPNO
bYu/LrZ8t/BhVeQKHUSceND8tG2y4YSYs5ECbK0+2N6wdSaFg7rCAVVqqmr2nmco2nK1qRpzcdKf
letkrHmiKj/dxYM68Q9+CWmEqucC0QK4yNLW0vzKf73s8ITGPLz2W6Wcep4X7TBQa+ZGJZSW2Ayj
+kk7g7MEbYrmskONmeEUu0ORi42gUbjjjPgvI+Qa8OJ38V04qD+DWWfFZI82ni4+eLpuehfN4Pzg
MrMhvFNlLSC/JUnsDlWbMGRVMLWbwJ+bcOIWPnGagTXxPL9I4k4Pxf6sqHcMEQAlgHrwGGf5lKcU
w77QWc5qawMeNpNEmpg9IZldV6aeSEAm8/ebdtKa/mUMEfG6Wv4hUS/KtUgaO765VCd+Nj1iLoDd
K0Yjs1QsM146bgtI52OR/SlsLsPPRl6fnrKTfKg5B6Pws0sNDOYFof7JOwJsb6AKDjGFINJnMIkv
NyWAkgjgHlaEghGjoTUtHR6ZXnV/bR2myw+QPr4LkNO1DOnQIqA9WyFvg5ayXV09mbPBdGK94xcm
JC9xEOW4NROzKX9KzeMO/3dqQAYjKPDQvqrQLW4KWhOVB3UbBFaPyAZz5YEhGnnI7tLFtv3n790J
2gehiYSg55phGLLqEGxtPVdRha3Cr+h3vJ6Ys7DhEOIsQibaqlElZnNwP6j7nuQRBwZpiRC1FR4F
Ymo+EvuExnwMpWpLXBmy8yWs3MIxcHhgpoARj1JqIM4yaBfrDAtP3uW7VIpN2kxFzeCcvsbzWt9+
exwHlZUQe49KALxmp5+hn1V996CxQwspmb7WoEq2UQdjDvNinsZ0gonn+2jvV3hkaOLZx0AYT+pg
dQcA+9jv9OrncFk9oL0DBrxc2hZ65OI3FRH8+qg0a1BjVKc8sZl9eY61wXSCGEComzmqYpIrZwMw
ezR6siFPlKyeTSlqzNCuKo0tBk/Tm1loARAb5U2XHibZ61Bw6NQRNiK7rrSPoW5/Zp+3tN6xnim1
lRpobxPcKMV8X0F+ALEPElNGOs8OWJzH3HUEDMySGPUc8kGayBaJdDTW9EL2XpuAHsYt8q7tgNCK
I2/3yqSzsC/8IuBTgEixoPGZHe+gwax1AyuMMOtCq4d6IQ3YxGEdpo2PKPZoEjMj1GRPOD1y3pWQ
p3ZHkfnzXCwr/MhpIT3Ws9qHgJNfn1g9fcBRERupAXX9YDlbnNPBjTC1ulcHEuvBlQbaotJuuWhT
GStYJLGdJKe9rz3B2Sjzg+sHFpGVmPwcdcYeL+ohwTBgrl5InZK4QoP9J5nQf3t8c4fgnQUZL/vR
SFwHP71ZlvRmECYKf5rDUWmc9Wya249EVxbsyVkFITrbG2bZXKF5UT40IAp/FXTYQcthydbot9Wq
K13pkc3Sa/Te6yelfZ193oJzzmSvGJwKCcTTiY+TBKwB8iXeSazG1cq/fnXdv7qU0Nw+Ukdv+azJ
A0Tswj5+JKDoQ5eZ6euGrr/9tBehZy8eNKPxubQNSh7Z0gOF9nCNxfEDr5g03bX3FO5qIcr8TsXh
lOW16//+FfN31f9lMH/Ov8v/p/H60ma9m5BuEbgBMfxBquCrxDMqFHUf/D4bkkcgbCYiFUdI96ZH
433h1LC61KEUwD7nbPRd5SGsi2qP3uAqZS0YFnqzIyNLhfI7/sLMfaxK5+1Sy1/2pX4lQgu8boiL
dLCCIvGFI4xswU5z7bU6oPcyI4tg+DUNekVnmjMmmTVv/1417aC/BqFLEM1b+kA1vhk5Mu5yDP4g
WMfkYEGkVkRgkADVfBsMUAHDZAvybrN8Bb8tLeGTi+DSdWGia+uUKRt+m9wpZCLCizGWhOknjPE1
Cev21377HbxXehoXUZBXq+UFnL+U65qDB6ALjylmEey7n0TEuAf39XsK8Q4dsOIZe2TU/PR88sSx
4+lcoTV1Os0x/eFgFxU1liSUEzD74rKC2X3Ro34MbWmMG5uYLdeqArHAZ7Ej0F4NcHMcE22pePg+
TSZOYp0DwhcnRPHbEYfMbcwipLDqubFy27jZRbiNo9Tg3+WmOoUiJNgAzGQTlfojaKETlWVu7Y2M
rqI7kQA9rdR6PWuQll9qN6M1JShIGKZxXqpbaqbl/GgbtPThgL1YQ5xLS+2AEeSrZNJ7kt61xd/3
3y9csTnWbCayWKn2Ww8Zuy6rUADvfR+nDtGIFbfEgi4m1yr2oLri818ztVdlCshAHtNN/cKOqIOV
DT/h6e5D1zDcSq5Aa73RaAp0aNcqNn2QTF4XCZF6cvQVGsGL2fNEEDYNoydWCYy9gsCiet4UNjf1
+/nAtuB1VH8EWVs9XvCVM1qWoeQ9hWgjKDHBwtaJsl5CQDJcETM0xg7S4Z5rzwFS2mrrUvmZZGSx
bwQh9PP3/uEszmeXm059Sjuf4/MjJ/XnIVYoOSjB/o0Gz7wJbWIwTkX/vQvHSCS2Y0c5Mf7uRC8x
8W8rERX0B6I0MWREMzdt9/6Z7mu9ZwZeZT9Bjdpp923BzemzaCPDKE6t39X8R6FT7ivvrOZQWxYK
4MVRAiJ+DQvSWbps8dhfUkL+E3xpieZ+qJDW5gFsE1WQlPJoTZHtnJc2MyIdDWjq3NvVIEwm3xyC
7xU3g8UO9d0RPH0eVlIQowWoK4Z+2dqgEyskc0/Gsk17s6ppgNXfFIGJ6v/Lm/RqSfvx2Dk5fmJZ
4/VMLDBL+Cz4D6LLyxZeFzUmF+hThKUEwK1u515e5fLhMC6+hq3KsThjf61NV54YAI3UE65maoPO
z50wyVzYGtnrRKg77Z6GsfZw1hnlmXJTHTaCZzMV/oGHUm+PEG+abq7vga1IBRLhvcIDS9VVCEo6
WHvJeq9iTL+V5BNj71KZ6stv9YkmRMwr4qo/C8hoE+SjA3YPjup3SPTF8j0tpr1TIWA4aTZpgMlh
j9sWJtxrLKJzBxV61XVLxyqWmFc8f6GOuctlgjba+5MOWwUEJfPJEoHu3Knz2b6MCdkHND8AfvNV
XWQyrJeTcqdpaROjZjfJU8sbOjWqKOpm96Bs4RiRsEdGvaZUIn7deIvjRs5ocuAIaOBjIH9LxLnX
9whWuNvb0g21+HoXsebANWQaSHetH3rJEQBBVEfHFsCfCUe6zNUEg1vaIQtKj2oXoJfvUKLBpuaS
z6mAfipVxuwLeC3SrZvDiqdxZ+YIaMRovbSyAd1q0JtwLZxq8Ulfqj4FJpeeMI+nYTgwgl2ZZ2y7
KLIhhM1hzzUP889aQLZNcNI71i9g2f1lzkMTDL3U1mw84VK2vLcOVMpi9j2h8YoiwX6EbsSICiId
ZRnvZI0RvtiIGCg0YEc47HGsqqGpGqSV1YTdSfngvklMK2vrMImMTjOIuJCGlJEu+mSc6VVlH+8l
MvFUPw0soHLtwKKlX7RyJDmjd13bsEna0YyaOv3EilQWWcVVXIxNgaT3OoPn7oJrcHIc+AZ0r+Ty
vvnINtTLCBnLHodVF3ZIE8tVrHKCC9y1X1oNijVxE6DY5Ry8UscsoGyOl7NKh7haM12OeJ+LDVBI
AZ9SBOK3iIfUXR3nUHfjY6kwbwho+TjcZzMzivg9+N6LfhnzQNojwsBS9oczOiYAiNf11q3xAcfX
RKVRBLly+1J2CkpxehiinPXH3KImW3KNW0ztjIb0wQqagYfRa+y5WHhyQKxLu9MiPEp6GGr716q1
qmZ9571aTNK91L26CKObw/lHhF7LVlzAz32jsOEE56zQUdlg8y6ReBZY0BsnWOaK8UJCxpE4UicS
LKNZOuqSjDxk2cO3Gf8q959EFu121edHs43DbITr80qWQIwPYgzekaJyQK+rqKT4RNRL6z9/Lqq0
g6chxRVQzXk4PiBAeZAoA9eO+3zhPELrNOO9APHlBpmJQsir0FzguLBIrN09Jzb4MPF2Koh7MTgZ
RsfWiH9HW/nkPpgb+ovusBoL2zEHKOAlr57XSU7UAmNh6GUb0oAX9Mc1nnAQuN2VT9hGyFHtVwBC
hKpHSzfGOERgyty3n2pwfrd1QeJJA5/OVVZJCfPpnUqoOjQ+OUGNPSvaohng+pkBKgDeoijXbyLg
54eXchR76B4bKLTFOnTHc+oeX7F3aruVwCH9QCITPPeOqCCtao9g7/6Ps8ytK+K/D8TJ9t19LQYK
1OOdvUCZcW7u4E9i8exrvBFuGPDBqAPZbWi/7uhE/YfAUE+zWHLBVHxWYDxT3v6O+ni7O8MVk0cd
5tJ90zSjbAC6K/NSCJvZbfvnOONCh56y9fMZLOhi2mjXvoRc1wyJvWbI8rKi/9hD6vdhszODs2ts
wEEAizoDm1tGujPN2QpTbGtCMCrxc0qlcERStZV/Cka3k+2goDLZakZTQivAkwva1waKNltwuz3Q
JfY6eiRP3SDfGr3auT9r+KV/aqrC+ASiS9uve3kTSvHHPw7x7LH95AGGt7QQ70f3xi0Na3I8y4OO
Gu4fGb1W6Y3+CX2wOtua5GreZJjunXk6l1KnYCiCxwIh6FQxa4TxdNsJP5pieUjCUMAZJ1xBv4dI
gVvIHSWYDnZur6hNuZ3B06LtWHocDHqO2b1GoWCt+Wxtn8s0cmmneMmZxglACoizd2WGYaXcOOSs
QFKSTuDiSdQbfZvdqyE79TkCZAmupA/4Z5wo0PXpjPlWim5aMrMpC7o2vVTT515+txINLDMKXi44
7K9PcWUaZP7NTLOudkY99LSZMVoAKqtOKRVV+6sugulMUWkuTmJIK7R8vMZrmwrNmAx3BUChmiuT
MgSdYHQ4QvgeD+XXBhgYxog6aLIvkJhfY9LTyBYPMMf8yzPLIEDWIEp0iuZnrS/1sgRisxxig5lE
P7sNXbMAataXWMqJlHuwZ9+LV4PhHAp++Q5coztRWOKIqHq20nGOXKuBBIbmLSlKFJwZR37OUSOX
GmLepGTCLgNjh4iNMOCrIzsY1nBFKWkyv6Y9zOv3Wg1vGQNyDII0EgvmwATm+yYXUvSVLLe4pxTD
95b7qQHFw+xuiLMpBgDXxikfPFC7wpVhHvHA3H+98BBejAz7u3PNhJ+HZbHjtzHaRLAIpUhBAZqn
lmpsBwohXmHpmKBI4C78433Nixwjma02BVtaYRiox6UogZ7ze97NrGeHvFdcm2nKippIKPJTWr7h
ZJlFJpHcyylfZOK7PtQn2+2hNWR5oPCfygOHYweojHlKaoUDVfhH0nMKaCGpbKPyo7EKsncGIf7v
DDPoEN97sHrs7NijoCCIbrCnfAp5kZjmp6BTeRxSUbPk7D0PZgNaFQf1nEX92S0jbWUWp/IJxz+0
U4NYAxHg3KqstSBmX1oZXTzLF/0fK/rUjy1Az7o7yGXh9k/azXGMEae9msmKqMNS+yfw/Xrs3K/b
OstYp+bxH/vsqymUcMrEjkSIvZD3SwRwcnWDYycaAHmsDIfTZkh/okZeKOv+7cdxuU4rZlHFAs0u
ju0V6mk00Jz7leOOC9be7srlLYgHPAXsviWpMYktSt0nkIXQF6EqfvfUsbMCkEjB5BppbUtxpYeh
uphWdfftU0FGWVeUEtJWOJOVfdEKjOxMhBMZfNzSxrLeA8zXIVEydM9l7DzlpDJt1f3svyP4mKCr
u4Gflj6hjFzZe+05PBUTLfigDz1ZvRyC5Cb2etVIVzSiQ4g4GTS0H4qOedTTx4fFNiMV+PIbEkZb
ONFOOWbeYtI8gj+oDCfmKTlHJ9DOGy+VVTJBZ1rM+ciBuYEiZGi7LWAQ9zzzwRI8cmchuuxuLUaV
nW0LkHooBHwzVa7SNf/7w1G0fHxQhjh6hU9W6BeEJNgLtOWRgClsElXU5GZ/kTpItr3C8BvpsYW4
lbSw8lmVa3FZ2bICfRB0nksOvIu6SU1I5l4yOrUXe0NK5GjSS6jVWtU1xQIN7N74+Nd1QeJwCWK4
ZYJoQC4YDeWMfhheRaJcCOr+j1thaO00hVvubeJbsFWVhQ5hleTedrxuJKKCWkmkWkUPKcIYPLA9
DyIac9ax0Uk3X0NvU6rcD8LXa45CaDK+79icciR+bWaGDgWZE+Fxp76RTXOih/S181nIVrPcfTIF
LLkGCQXHwe6IXagTDZ2DJz8X/gSbFYpNjHmjDhI2oEaf2U78EaIK1L3V/crWuSC3o0XPO6J9i0Fl
Cw5sB2qCybtCLR/ajk12HR5udarX7h5pp+ja35Z8LFICxaW45496EyaV58Abi2mOzd3Yxu0ObIST
kmovIaSPcNhCVTlW8Z7DT5JtYL5c/vuUAaU4UTRrjWXIWzZTimyAhwnw7OJwrC+4XtGpPGHOaEbZ
cCCvMreKX6+p6nL7rr86AWjmzq7Pevmikf0hYmtPcDaNX7KP9kZcCEpNUAT8Y8+ro41hVeVH7Tl5
BJOzAmqDnP89olDs35aG8mPSc3U4AUqvGnIwfKTaYAcD8BHo/varSP6jpdQuR5ijmA30pCasB6+o
QdvBYcWrKpb0E5Gifx58tMQCPwQp8hV01m6iD08ekfoxdZLy9D8bN48PBeXgxrXj9+A3erLB3dXC
rSihFmR81VgQpjsbS6orl6SBH6zT6aTyFvj+4PLU4mnz8+/P7odm0+8IFCJl6RnSlddCZToc0IAv
B9ZKk16PPuGDv74KHJBwejN63BaHQzrwZWdLGyxXW9VMQFk2F8pYbjhiEU2ssjyAqUK5XXp/dU6E
Vz2o2Wzkm//FI9ZNJhj0YEU8v70KaHjgcfhADeIBiT0u4ru43fRyoaLU3X7i7oHWJX5aW8KVCh62
76s/xhmjn0nkxhXXFkFdzsSGxYQdA1gureNZJALYj9n2zoLTYTJ84lfIirnEAMdP58WWNK9CeRua
0hL+j/ZhTvBaf1DrJJFm6pUEQKigHj7YawdZdaGj8rYkgMTPtEPE6/GvT4spg6R8pSR9pzgUzVFo
RJ2NzCHnLoinqlSte90laRVhfPJTbVebmlmNH61AEvUl+mXZt/Zr7cR1S2vcJ/CSzsu4k4SUaL27
cyLg1lhJEzfglOnpzY07rFHzgYIcaaN/0Ge0TLepbhhdupJNYGb1yIcHfAFo64ffAyL9wRnD8qp2
QWd+j0h0dijF0HW1x0CtQ+Sg09hBP7kr+kHBoOMMGx6TXxDfCuuvcwHwV7LaYbgB0hVAvFsDjBB0
BAH9lF9j7xByky0aPhxqfwB5R23GHy/ife/itFYOuxCDE3mkxShLLIzJe7VhkD2Fj/CEagubf7sq
wWFTNJmbrn314dZjjePAY2lIGbYe1LZ1WqBXLe5Pwitgtc8nx8OG8sCLsv8t4SwTnRFRYzdihxLi
v+l6ddUeKE5VeiQOA77phMpKsfjUWKmaTQQAY3U2iqtYYkksBkocjkrwMFVtWz1HKA2D4EUU6qbx
9K93FOCFbd4ReonOH+fEoks5KnGzgaDMnxfLk6WYsZ6YgnRTVAUm9OH/YPepWq/bPM3wmQmmIPEL
mEl4qqm0gAjtVFzxQ8IdHeyGKAsQzblQebWVQghAqoKqqEFbvyxOi0Z6ohAe+6s6lIft6Zqe2Qn7
ho3yrInZwEPqEuqDtLL3VUP6BbqSC4TO/GUWOkz7NbTHdxRMmYJ4Qs/S9Z91XimdojtZtDwQP7qy
i7Ota8CdVQyDdXUacG0XnCHAQtz5V1SeM7OpOEcdFk3PH+osw84q22wmwhDzQRpX9pp5fziLfBFp
EF40n8Q1n/4kSdyXQUey+UBdV0rB0bjOdYNE8qfFlWEWFTLLHqB34zarz/DB+FGYEWKgcQO75Gq/
8KGp2Rw/S04lfDsP3/lglC3M901PGkZ33OSlBod3dFJwu/Ac37VW9Okh6byKlji/dRsgLscHaPqb
buXKKjf+/YM3ecDLlUKPGSbLY3zU/DiYZdp5puNLT0W5YlGW7u3SDRP9LpMcuA7Vzyk4C7sv/qgQ
nipDXfYyaZKXSIP8FTQtkf47guclneVvLXl/TzA6hwfwvJWSxxx8Rcn2QWiDxeoPx0QvtQ2DZBpE
Ls8r7HivZrhF+AmlszLyeZxYXGB7gyukLv6UQeRdota7GqMIEdOW60rWjAOx9gzs6Z0+rod0oJz7
NT97nwj5BG/i5O5/NC+7KOEuft/Anjh+56SrT8U3gmhBfRAAgiggUNQKrwZlVw7r2xoqHTWlkY8c
3DMyShc0Gh8OGgarOg5QDfSsCQYFlNKj4qUHID4GdBe6NfIiBd/xzhSSIEfEyhfPFOcK9wJyfi1v
v1gpP3U301PANAAlMAUMeK4xRexhg9pcyDCcG5qbXJ//OlLlLiX2cnb68GF9bZMM4v9KwO6HSalf
M+aNlsR2Mdl54v7K/B52eDYyQ7XlqqMwTP2qdbjQtqphf4+NrFM/AoJD9Af5+SWW8JkZlArP7bes
8NV8i49f/0ql+9kyqMRrrqBLkYRjkrRBIN+9EWgrXJdL5Mg/KGoe7m09Z5JPDgipbPhkHUq9UYDx
rIhdQmHJwq47iJcecftSpLGxB/MsKYJQynHJfuCtDhqZOxdtn98Aj5PGA8iSCrM3KryJfHMOyhmO
kEvwbIGq+DkWie+wwQx0KYfPZPE0jowviD0jtZ9eOhFrNUnNUObLAoTd4GClTF3Fmc/HSKPXspoI
MEyReaWAh9n/mAqXhOjkVAlipYK9y2U4VtkVjp8/K7jwUYD+rYyLruakE2Iy7XLNHLmBa/y7y1Xe
C7hgftfOmpnSCmybcdn54cGGrYzSuF2THJVaU9aJi6/zJeh4FCNcWl+cBm/Jo7rFxYBy4oNg74Kn
LR19/cg7lthMv92yn2V9rGr08bY9peG6grIV40IqZkWa7oj7Z8phGLjbInAzdwOs4+SdH7QSklgV
igCiz1noleaFjjKmcjGvNF8dhJGRYUl0zR4ADHVcy4NGhqbzDY222mrBLEdDwxTscoblP1UkXGRw
78Xa3k153gqchm8KXYNdqoOJYvWpFoR6BfI537pN5Yo3IEaPq9JvefvrWSpEn25+j9Q3csEvT6jd
HLG1xp0YRP7fjHyZfNWhn8cX/zreuEwxaZmciRgIGDOZl1AD9PLau10z3517LgjAnmsdExINfK12
TdyelcoYw8dApqzCDhoSTFabw+1vDVPlEZ/b/cUAkGjtV4UjIhHep/e5CIj06Oj+4LA5y8y00yfU
dVUVTms0mQwyoLoe3lyaf5IutKswnBNDaXK43lFTRah/ZRGXG7whxCQ+HLK0FTH2N5USTE+Ewm+w
zfxgAQox830RmxdA
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
