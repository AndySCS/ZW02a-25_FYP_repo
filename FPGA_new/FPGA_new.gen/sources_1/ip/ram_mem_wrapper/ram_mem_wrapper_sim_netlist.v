// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Apr 15 20:05:44 2026
// Host        : ecelvd714.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim
//               /dfs/usrhome/twipaa/Documents/new_big_ram/ZW02a-25_FYP_repo/FPGA_new/FPGA_new.gen/sources_1/ip/ram_mem_wrapper/ram_mem_wrapper_sim_netlist.v
// Design      : ram_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_mem_wrapper,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module ram_mem_wrapper
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [15:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [127:0]dina;
  wire [127:0]douta;
  wire ena;
  wire [15:0]wea;
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
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.401099 mW" *) 
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
  (* C_INIT_FILE = "ram_mem_wrapper.mem" *) 
  (* C_INIT_FILE_NAME = "ram_mem_wrapper.mif" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "16" *) 
  (* C_WEB_WIDTH = "16" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_mem_wrapper_blk_mem_gen_v8_4_6 U0
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52112)
`pragma protect data_block
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
DfYi2v8UCTnHV+upDyI=
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
