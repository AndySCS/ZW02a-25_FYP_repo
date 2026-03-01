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
R2296KF8+0TU5Dso
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
