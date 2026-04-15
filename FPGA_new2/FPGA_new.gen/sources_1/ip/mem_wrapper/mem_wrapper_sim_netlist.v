// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Apr 15 20:05:16 2026
// Host        : ecelvd714.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim
//               /dfs/usrhome/twipaa/Documents/new_big_ram/ZW02a-25_FYP_repo/FPGA_new/FPGA_new.gen/sources_1/ip/mem_wrapper/mem_wrapper_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52512)
`pragma protect data_block
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
MSM+/zluJc1FGyq7fwzY
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
