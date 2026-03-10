// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Mar  9 23:24:58 2026
// Host        : ecelvd711.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim
//               /dfs/usrhome/twipaa/Documents/big_ram/ZW02a-25_FYP_repo/FPGA/FPGA.gen/sources_1/ip/fpga_mem_wrapper/fpga_mem_wrapper_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52592)
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
