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
1QQ5myF1Av6y/oHA
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
