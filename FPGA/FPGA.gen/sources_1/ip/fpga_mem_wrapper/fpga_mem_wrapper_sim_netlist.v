// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Mar 21 16:34:21 2026
// Host        : ecelvd715.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top fpga_mem_wrapper -prefix
//               fpga_mem_wrapper_ fpga_mem_wrapper_sim_netlist.v
// Design      : fpga_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fpga_mem_wrapper,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module fpga_mem_wrapper
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
  (* C_INIT_FILE = "fpga_mem_wrapper.mem" *) 
  (* C_INIT_FILE_NAME = "fpga_mem_wrapper.mif" *) 
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
  fpga_mem_wrapper_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52304)
`pragma protect data_block
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
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
