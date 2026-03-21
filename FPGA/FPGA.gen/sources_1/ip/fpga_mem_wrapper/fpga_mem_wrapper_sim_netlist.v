// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Mar 21 16:34:21 2026
// Host        : ecelvd715.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
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
