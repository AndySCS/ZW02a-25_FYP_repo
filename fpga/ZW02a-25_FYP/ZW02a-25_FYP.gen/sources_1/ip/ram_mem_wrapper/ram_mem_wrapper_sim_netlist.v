// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sun Mar  1 21:54:54 2026
// Host        : ecelvd711.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim
//               /dfs/usrhome/twipaa/Documents/fpga/ZW02a-25_FYP_repo/fpga/ZW02a-25_FYP/ZW02a-25_FYP.gen/sources_1/ip/ram_mem_wrapper/ram_mem_wrapper_sim_netlist.v
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
KVSEaawSIBikOF/qyHMGJm43wWAG1Dn230tGuTc7L2Dakx+gSXWWcjoM+oRJ1b6+b7WZ64glAgQw
oRhyHnetT5iERc/Ny9Yg0D6DGh2KIp/X73D1sgMMqaZLlv+1nUf6c0Bc6ksIIVXn4XkxmJ/Mqpjj
Dw6CNz/HKfg6CtjeypOXuD2uAxca08ucKbkZ6LOjk/JzxGNg2wVswIkU6XyZ4nS5+wj/sLtEhpvz
vU3yHkG3wejlqm+FiU+84e5Qt/PF0FlLDKGLekz9Sd0IPD6k26vQdyVgUVVg8vkz/MnRPw+dLlP3
feGNWiVBM4WfxIua4SXDBPH+RcOOquigeugktrduVpMIqpIJVzA4ugGU0pVdy4aP3c1BRWardtRU
Ispzj/uxqPtGKpofYMhCniMfR9gmpbKyGuQ9V77W/FRX2rFr1SDwxIMj0FGjT/k1N9wUxW8fKaWO
a5RBjI230CqKcYsy6i2nqwB1ssVa0AKfhhB+LdD3HKcFj22CUwr9ButV43yrzGX+W8URBbDk+XRh
RIYcrGUlZmnG+M3TQ4gg4mRiP6nHz6h0XPp4ZL4+CFQ7178z1uIdE9HopNJBO8dZozPHekjQxSbL
8CcUP9Zu2RNdousZo4OkyQywocTCZhsgsCLoO1TzzIwczB0se1us0niVcptFCyiKqPopQc5YnL52
HS2Rtf/j6LuKheDYQgHCfi4LyH9aOkDfV3wXXkiZYMT+bUGxK4GJzB8V1uGKP2pID7YV9K7NIhD1
EPAi//lqsprtCaGsMr5CvvqY/ZGrPP35u/TPB3Ex6dThWMX/MTYS1Jw2kYNa6iv3/6XqLJcd91Ae
b9KkkHQ+i/GoKBcVrX/XQnYCoiBD1nr9M0PD36nGOhMkvZDDSsWKgJexgnVzdsS98R5BJsQ4Dowa
irtTMQQOOwmgmHjqB4S220f/Dc8vSCwIEpDQE7Hl7VUPVOfvaWE0f5m5KiDFd4L/SxQ6HNef/gbA
Zxn52RQaEBp1d/e4JMAxsSUeVrg/QvOZ6Xybpd5vPTezTgQoYYPgxVN+tUkLcnhBZQxKznte1EZg
Qx0BcBph7FB7thm2XAUriJQrPdg3zQyqk07hn4J2s5urdt1dVg0lnRBjVhLp6TK0JfUNfsa7tOr0
YWMdol6HcnTLXFzgFhLGVOmfVpGbg/xd7nnZB5ZvfHBoyMHa7nqUN67Vm8X1VPUcvv6e9lMMs8ZS
Ld10CgSSd/lXVlTv87XJKqofr8VkndAEDsIhu3KfjEAODpdhSrRbz+w/3pruzQ5sDJe4x4S5FN/j
oP/Cdsj3WOIemG6MG6xt4p0suo3ZmFW/Z40nVOlR3AdNBjzZkGymnwRxqly0Le5CgS7ZthniRJqF
1h1uWDCErCBr7xcm0A23/EWZIm3lF+wlSmxW+EeL7fc+VgNVBbQFmgHsW2t+dvodp50Wo5XYTT70
CwnfNbNxDo7GucgEBOkMzTAefbF3c/X8PLcUvz3WDsAw4OaL4mCwxquIZQ4qGNutXuWngHKYI9YE
LBIyVdcXn0+jeXR0hpcILoHH6+SU8KAGhU30oHcP1CAFcCdXkvG0dZM2w+cJKbvHgX4vm5B4SeEz
iBsK8LxSMoA4Ui0KA4Q9k+EfS/8i8AqQzxf7TyEAlHi07UHrQ7O3UwuZwRU+8c4rjf1tB2xbPRG4
Z9id/5CLlfr+pE/KuCONyWqRK71oPXk+ymHPgcXh0RvE68dI6xGLz1umX+rILCyGWoSoe2i6KIbi
LsibpHt+lCcJjEU0yCEAJZmvHJvUgvrxQGQRFMt01tiYaXfsM2OciBn4dRPH1frqzdDEXmcG7A+N
IedivwOjDCoFFYrBkdL7XR3+Erj2tV1hh7vCkKTOndi6ie9zYDRWScnpClbi1My/5TfFWhrcKIb2
l7w8CWoZuujEL9O+NiEAT+E1VZxsApeRBkERdXQpDJWv7qmyhKtXGhKpDrtGkjsYLYRLFRZ82PF7
fIykHKmb8fvpE55et+BdDlefmzOuVp1nIX57lsl2DRganFs2CdICVkvapnqTl5R6cY0UxovaP2Lx
5WF3Y/emIhTXud45u19OUQbhiZd3mc5w9H7VGiieD7JZbClLdTOekOO1KAGcWE8OO2UbcgNSwDXP
DDaU17bfjryvLOem2mqy64fos9vtGWvD5cNTUUm5LquIYGXuX7R51uBkSP9NjeJ7tjlu7h91pGs4
ucaXdOp+xlzNtvx402vDJDRfrrk7qFwKymxEDUXmaBCNsH6k8ZMlAPnHhz6ENwQnddYN9oZY2VfV
wi9qeDOTQ44ERvK+y82z1qLAc+Nv3+8xkczEiMtRIC5K9y5CqFnDGTSIuPDgKjClWxqvxZdqIRxQ
yW9syHw9EFg6vFCfyuW8dQAzJpUxFru+wSTWJ3zyA07w49xZA62BazgZzWiKh2gsHMnt4aJTiH0h
bEPDDfCNpxBDGtiQX+/+tbED7lUeZAeb0GQWHjIhKX+6w8mJOGrNlcH8Os9i3T+63stvbKzi/wSu
XMVsG/EL4afx9KpgMstT5HXgQ6lOQzmgY0mJ7LYaeL9IjGgS1+YMVniypBEdrbOTSOUARYiZ4Vbj
PHk0Z1usR+ISLUwquTCLWLWQgR1Oi5fHC+CSuStnxCKyk2GR4rEZ2oG8sDNvVbxUfj9C3wogkZ1c
I1i+2h/tOpB70FTAB0Zxxc3sbPFD6ApubTJwt42Ow+zNURV11F85sEEChqOI6q8M8s/r78NbrPQC
UkyeyC4j6A+7i3/G+siygf2CQWrtTgoniE2tMvWV3f4NxYUsyyJ/KgQ5k3ShZyS1WkJQ5mp/ZKzf
YSty4QlrYZx8fe9nRcZOpx/G2KOyJFNknmfqwyZhfHz4q68R82eXm+XCVPcdu8UDYjrxT8Zcgbwt
gO6mLpoFks1ODpGOIRiLU47RxQUTr5U4UnNHzxXD4cCy5UWoSK/EK2ibMAysJ4Ivt4zhVyJB3kjk
zOj7mHA2InOEAt6KoxRi3kqUNC5zw5G0/DTx8eZz2M+ceZnh5YIi1UKzDJs03fAGS2u60AyfZ9Z8
8DSanJcZKgom9pZdWwfWeEObczYGZrUlvvfhAm6PYKN1wUiUi4PsAlUSvwqjfR0i/RKlqbGK54Dc
bWrcDoNI0PDM1g5AjTmkOc/QMGnyYdcINjCLj0MSgkV50NXlzuBI++wH9KSN/PZ6086gCIvwknUa
s1Duk6rxC6qdQ68ThCQEp6oFMMuUFcUL8/RxzblICMM5qDiOtRlcKfLiqk5QrN6MurS/2EeqdkuM
JR4WYvCfY+H6UwOgUSA6HCIpICNPJelHAp9pEzybmpVhwuezCEBsabh3lPjbPawjtcBkuTQcWfoF
+ck5s7jZL9jrrcw6m6uOniZ/y6DY/KoPz9wTB4LaSwkZCFUG7hwwo6Qpsr1DQzqviaW0n4jK94Bz
OZ7iuzavYrd0yoZfcJ60UQyD0FxFtFf3KElJ4PvvhjuJRgsrvX410+WUIJ2T9Wa9mZDwKDxQjau8
pdaQPa3esmzY2pIkwt3vh/nfAlL/GNwMYltcGxO1lXvJ2ko0LuWXd/DnhidXLSvPqqA0qp/V8Nxk
dbK0z0SglUIyOAyzL9lCvYiR/KtRZExnsij/5NClF98L9SDuICEgw8tQ8j0tJcPshxtDbZ5A0Vnr
jtcuhjE6Gj464Ozp8r7POdVWd0GfdUfcnPgUPdjDzJVu/Wq32fH4kTmI//CFoJfufnjlYL/Mku57
J4MfkgporgjpEqnj+mstu9gWK9WMgnzJsjwiOraFeeUnFmGHYq6c0fnYaHGSURgv5iSwWQ7VXuh4
4EXq0doVKswPcJPlO651SKZW5sHP4bl4mdA+aWwcrvVV3frbslUGA4/vULtJGTN36etj3V2bnjK9
Ev52VpvUHMNd09fgVgETnNv2XJUJvjpN9rJxSEyedK7W656yMdePFPlwvY1wsMdGTSoR0kH1zNsA
KZyUh6ZINXtu8NjMNHCECNQWvzOqFODpW34CXMqU4W+wC2OIc+ruVOCbp64S6PTNrLdS6FqM1OV6
sfC9tvliTjpR8r5Od1SALZ0tmjVlMmksW/cYDSCFm/LsrDAE+0g8eUj4tCUZZuS2e33KkDLDSs10
yautRmeIVREZJus7NTMTx1d8IpH04RUV8wA9h3C0Qq4ffRbq8UNS5OQ3Po7BGGFtaVbfTopo/yVh
hzE1T5BaUxwphOpvHqXJ+83U+Tuz5VFjfp1sXTHdcAELIFAxOsAhQ3AROTurSPNhNUHqE8SHeIQl
jG/2j7rp7batubzw6BqWFuxofrXxR7vO/qQMO5dAtoGFzUYS1PbxdETDW+plKPWe6tH20x9SJKo4
tQ3HPLDW7+7oKOJHvmBfULl0Q1hOycalrnIXEx63KYjQkZSGT4krP5uyZng/kVgpTWYMEsWwiTWq
v5Fm0mRcLmPUWtH2ukMIHcyG1nx4v1ju6Njlnts7JY6T77j3yi4od6VEyMuP3yqWXXqPE0xFOIRN
JmpHf4iIWUfMJIvMIVp2ZcQVrunet0lIFTnFC/+ipzWOf5ujQq9fhxw1EphLIV5NZsshlLz6u1MB
FB1tHPSfabQnXBIbXYD2uAHNHME2gUBrLyVIHQMDY8p/RKt3pNcfU8+eRycE9kFqKqTXYRsNMBll
oDtGD2swNeP2oL6vQP/70MZgIWROZoH5afuGow7JmxLQ8Sz7OZ4/rYfHDg1MSSeCnDJsQ9AhzlcY
1eR/yI3Dchu6qrv0s0E8JOmN14d2fRyIjA0j89UayvJnSeqv1zv/6S2xrI57Pstlfkg4ke3aTukH
/tojHlCYJa1aWKB6TUpwWku2tJ9x1PkW1Yk82hJoiFfPjkC4Y/81/wxyIwpJroPC0VHjS3R/Nopa
FW4mNZbWGSXAFgiGIeV4+moa42tP5BMljQu2smSjDK5J/3zmuGRhTWTCMjqXGd9ClcBkzDnKJ1CQ
PTXuwOcKlXEl3UBJZ15bjJ4zBxKcI4PamTJtnB6oChRza8e/eNDOJqyrDFf8Yu1wbjl0ZSJdMY1e
IR6TfNOBulP7VXZogCcdFDnOZ3+F0glVgM+/mR7y6nE9GhAP4TlqyNvNVbe4t2WRncy7j1vxwOKK
/HNv0qGo/qCVgAWtnvS0ErtqsRTHqCfkAJ5cYrouoWl1OoW9dy2AdIx4RUQqMzsve9Wtf+IE5IPW
IMZg2H0k9p5gHUuC+mR4zd5X2j9ABSZNfARY7OEFcU/7yMxKmCmLYaYGmfFep7l7dvWcIFehor9P
d3JILAAZDUL2gM79udgrHcRpAjGhZzmVX7NxWcUTgbqZzBckc4aVmR3H3IPl6zMiCkv7zWkkm5Pp
iD4yBpBzKhE/FClnEEEFpWXoZ1lf5kEEVnI2HvMxW4Pf+JE2DRX9+Epys9yThOhuiDs7aZgoPnNh
AtgWqD+DwZzgoRR27xXOZibbHvQNJ1JUhnDo74A1odIl1dnMtUbVPL1z9/63RoQ7gTeSlA8Z2zPQ
12b7SdzLSkQ5gRUA/+kWGHuwoyGMHro++KgchVFzd2b6MXZp1JFxRWffHH98KWpchd4CqH/pFecx
9+k2vyYtCC6KEfJ+vNbFHSE18tT0peHM5RL4stYiCGBCwAdS3gS/DOEgdMXWc2TC+qThTeHFQvQP
TbOLToTs8L5Is1Tin/EEFxnM4XQ8rC6u/JmpBsPKmUPOZzszjijM/KCuE/UUxSfglm1f6XcmjaOo
VVvVRnzKuNMqw/4bDN3wotQ0rN8quHgygkgYTTLv4pxnToy6hNDWt57S7NbdpNYqkYFx/W1rv0gD
/F7Z6eCffs4F7zhEk2suzHtRpRU+S0Q1LHAsoBzEMmtkWOBHxuIbk5HIvrpFhUfR53JjzBaQG+Rh
q3fAqJSe4guZphgpv9OJK3iutok4Ui6rYJTYNAMHtI3rGpFTwvLBVfjqh5aifcKMruZuKGZj/Nbz
2hZH8jIcm98zZVuxs7W1m5lyCKcyWcWFaQZ6MkCEhp7w+YeAvWjz4nu97ZcswTokAi0iceT/ay2T
YF9+s8GTa9CA6sczXejc/3RZBUxlq+WeJxMcmpe8af5JhiIYvVAWoW1jCA+YzGeyg8+o5hwJ09OK
AoqhH2pMz9+8zCW/XVXfexcGj2ecOmZkjf9seUWBA0ZBQjFyu4JdUsbfsOliDtitywACoB3NFWoU
gavRYYDBMjg7pJGMEX7E2oiR3Mr09yVQJy1MAcYbwWY+Rt/WEGoyOyhQBLVmKTT6xTKmIGdx4eg6
5Ky+9ZfyIA233v5O+ZsWkfIn5c4nQcmsz0qJTvsAM1ZOfLu2bl+/WR+HJJ8gLFc4ARBWy+tYwyuB
bZSYKHG2nSFBmW7q4uRwC27nH4eXR6ttRrM/MkKndHM2S/FTQYu3NBg/0pUt3U72wpHaBL3t4/mv
ZlDCCjHEq3YMey6Qu2W/gI2+3cTpkb0E3n0an5pTCoLW3K+qsY+VJHawI9YqGgEpbNUgHayJkpw2
tahRS5pfIHNOi/Ce9dusQY+dyrHoGMh+Ux/C0OJIS0z7PG7RqJ3xhddhEnKRMvw9GSYuyxtSovop
Z6YWjERAyzfcb1K+aWIXNd59+1Nx+1uJxiLjIgcpf5Q7v+UzhJWLkQbx0GrqWggHSJRLZH8mpLgR
rKuiQPioBH29MCst2wXX3XWHvtckQ4gx2KNN+9h/xtpO769vj/rVXCcXeZF5InCRLv1Z+F8/l/0b
k0vya+RU/7shOnI9RFMI5aE5wh+s+XvLd+3M0MdvNBTnnAwdmI1oIMq0tm2gN/yl5WrpGWWMN1a6
chCpcLa119GimWD4uGXuJecwdGI+kBTFmJsOd6P9dpLZXTEWaFkXOPzR4ZMze7hPe6fip1PG8tLj
U/emSdBSwJdlGOJ/HT0xYc4hcYl29FLNnvCjsoqka68yfaYIVfIWt/WsMZ+hf9DdMfOQJj33vKE0
McBgSbmzddOI2uO+Wde/Z3dLsMkn2dKlQV6b5xM8RDvQ2yuWo+IeODajvEVW6m9fjPhVnAiZt2ef
EvX77EBfq1jDh+jqcA5oPHppnWtqVtHThUO3vcNeo2k7aKKfW6+EMlXBPVhBw0wH7lRzXMSRhIX1
ctq8m6NSUVGfEAxxKSX+txP3d8s6+DO36g+eo5aNpKB1E137wGjjzJGPB0Mk3PHtfJcUVznEuRn3
tM8MSX2rhUg7uUbyMWFAiboL7f0os2EIMW79OO22yT1KJWGUmgvfo4MsDyck9emeZRO5fw5n19SP
RRR4kwdXoe/97rWxPpZ6SCipgD1ZGRs0D0Xmu6z1CBM6PpDDyArtiST5vDisMSk/T1zurnMwKV2O
ZB+7zNG+eyQWspMPlO5QBcGdf1lmchcaXcPReaxS2ZZMkJnIUlAFSWi24tTpIttzu5zRtwjEgFUn
ddGQoJXx7FJfVg2KJ9cSdwfYVCTbWCTB9KFCfaqKrLiLBrU+WqB/m633cN0aHSuWeZbXNfqHTy1M
q5vcSVx1QtZHyWAqisbNXRbou9uQQ3WfsseQlUOJH7zzYN0+Q/UHQhCF8Fs1XJgS7e+xAXyhDvp6
koZozIrNo4s0bl3FWX1XzAvzbV0FcQ/MX03zqmaaUeUt0ZaluNxKq8Rrpkt6hqsUfpy4RPYekyvX
OH2xuZ0q1qQ/ezTbYHXpTgPKzSuoRzCWstModIwdeEpaemdhgMqgc/wdqZ1CI4ZkmoYgY59MThv7
/HJCoLXMQuQ0shY54etcaLwltrT/IMUQT5Qq5lUWyj0i1oFwvDCFu6RAgxIL5uGWD+lxqddA0PGN
EE9DTPCef83Vpkm1oN+tr4ILXc/yWN15q6zrWFNH52Atp358+04n66/9ffqIJKlT8u3tgSmNrNcj
2Cldy70SIf5hgXi+oXWB7PjfxrMD3uGpCQQ0EOefsnejKGl3QUzMNzUFSNSMlkaMRkUVA0v2qrPE
jyQnXw23mcr4Me3Q+2lr/HuSmsXM718JxjnAJhSy12knTRc4JhLOvSPmvlbO7eYY+XmxtA/OPuVP
jVYG/D2ccKz6ZJPjqoR+vQbmJmt562ONgbyAtAp3p4pNIGH2y0ntaYyZgNsUXOgbMRjvPwzAJe5i
QHMh7XA3jeDNQlkehTWhyd3/A4221PbVxzDsI2/x2MTs1At5Kxc/HqwwGYiYFjID5ObsyHbUw9Sj
JxS5TrUiQPf+yTRTzr969G3TeZidLvS0hqEdR+FxTZw3UUt/EqVe63AxuzkJOUJhyMw3N8VjzIzk
uo1S59gaF6T1P2wLxiYPwejT7VwObAYwVU7Y6aliy1TMsMA1EpJZ5pAHiHWzITT/F4fYfOjg9RNg
dxIpkVsVEIoOFfIanmgMkzQYgxJJlBWyMHGuUrJP0+KE+b5zeHJrwxnNdGUbiA3eim6toJv5hICC
2ZY85E2QXNkww45H1QqAwSUTTso20tAXfMb5RWvVKJMwnhyjMGjA5qFgdcteEgMZQIGuaP3ZnFZZ
nT7o/i//zINb224crxl4nOglanscW50jOc3wMZpp6Kj2032M/Evxe91nlS6sNrdba41aQynOJOy1
8aeMkRlT6TuBF19IexQwZbXsihjVlu0OP3J09tf3mtba5b0kNL9xEeKSwMn0DAq+QT12lFobj+J1
i9cT7wGW+x21f0hEpmqvRKis/dLJlTpizzj5BtWFASrNHwkLwTRvpm1rbxi0bO0/nWFEFDantjfg
Z9ffE4HbIUFww/CQIhz47DWr+fvwVAabQI+j/qWOiXmKGlbPrFJ5I5gJA81NOb/9fArLtvQwUkh7
y3vLi6LzRXOpkrpPXpOOuVUt6jl86a4F+d6pXXjrdkRffsjUQuhaGE2qR7tWu8zPGRXZYYEpZK93
r5+j2WqJ3EO63VHO8NNs07PKGtylqQ6UTT/py8bmAQdyzem3SZEX76Whj8fSr3mtILME1zYE4iwm
9yQiIKDO6E1a4i2AmWbpZvjUS/i3AVrtgqpmCmAa+g9rUUFA0/4Qa6wlL8XL1OL95am3UggGpFHR
mNL76Wi6TwZyNM3Qr4PKR1lLRqhv4PaMlNy1EU1xpvzv/zrRBtmjUkebyTE3qur2EiyIWYm4jRYC
XB2u1nG7Z4mx1UzLuDPuyB+E6rhzBUVxSfFU3T/PRgvbR7OhVdgfpvYgXRl3Rvl1CL4lfShQcJxh
H8Ug8WhjHuB6cwW1DcWgVHTx2yyBDos719dy5IurWb69FqZLarrQwPBCzdYHK29Dy9K2PzbhqGi8
qk/n/7DADpXQ2xH84nxV548BA+YIdfJI7BNSTs6Dv1sgcoawxVhJyiW8aMOjS7fcNpGzUjWQz4aF
VHTkvlSsSyYQ1iPwz7zmCw64lx72KPILFbkVuMAzkCG00Hn0pPoFDs4+YSPiczXlRbn2NIn+12GU
PxQtAjMmXsZGZ3oVbsffbSSqvTiDkYXkZt3Ia7UrIs58Pj/2P8CCQjHeeg0Vks4l+zySqTqmT/j0
552ZOq0moz+r3qGKD4C9RoCo1Qx+bumZW97pQXrBapERNKVNIz+H5umdHpob+zndEBrf7bWDfm/F
1FKlwYN6HqlxdcSQL7QP7ZfwnqHBoFGwiZQt0D/vOvka7liwyvaGxH0Ed40niuqCjEmWqfdWuNam
rBsA9CF36yACCY4NXIFypHmZx+/Rn0zRzgjJ6t+g1Ppz+rR9Ijt+Po47Qb+HziV7/FFt/TZDkOOw
8lQ0Xr/D5KXrlFqTUMM6+DTM7Gh8p+uS6to7Bo4PYDTAJJ3k3mUHdwjzOaoOAw/hfwGIM3CPhdax
FfIIalPXa3trlDErXYNcDHoozMuSLk3Lx9lMAg45U2m0pnqZkvl/Lh/ve+rxCq+QbSpU+BBno2/N
yO5ngY8as2uuUHssAMXXLWuuNBeLn9IJbKsgIo6wn4oz7Q9pYzE9BJZHjETzvDjqa9o25uN2t6HV
Rd+edNvgMzHUH3psci6hwfABp3Xts/76m11sZE5fbD3ZYKBt2iVSQsZRxcU1xS09TjeL7C34leuX
hoAjlIQt737k/xAgLOH5xadSJ6b/OLcLtOzGYYsmVH9x2Fq7zztLPMp7OH57eSZMTXT8OupSOCS6
bNcaVL26D9lY0CgIICP1irzloHQv1uDPWiEzuNpQTBhn+EUtgOGVydqc8kqRnB/gxxuUXCmeKBmn
43eHVI2ONILfFIrl3kNlqniLJKE/eVUVvmTBwdSNjzBsC8WTANDSTJsT7odB71sMWf1QDxM978K1
7apVeaVWNTnT95aXlI4btUA9zrS5Zo9X10GhLDEZv/Vl9xOolx+dBCyu0aPOPfrVm1IVnc97aU3r
fQyYR8Zz8ewodRFB6D0WeMUwD5wC/mbAPH0lBVYBOXDNo81utfm2TWk8AM6MCHyTXqOaq9KeZMym
YdAi7YGGjVB4ftklfHD9JJIp+CYjfCSCt+C+Skn8hTK3F3muALzqd5ZazLEVBEUEA/gvcfep8Ey/
j3bsRgfMX6J9X8iTCofD6NoQqJhwtBq7kreWmtxp1Ew9U6+rnFuydy6rNy9HEqFMa/fjirUiAbmC
tC8fS17MnxQ48G5rk8ssaoDtv4Dxs2D8otcwqrloMsMQYB02dGHx4ZcSczrZet938MLB09VrrRq1
elo8PYJBNZO040XlP0ACF+L+PL8SRetFMitLSUFZ8c14Uuw29I0LWZzge3MW7nXywTO4/JUQDAWQ
hq+Rp09MmzZldkroG6Cjy8eWc89e39OuXatA54wnHs0lHh68X688KY69YmEAxKHrCrOnFDoEJGNi
HTuWnA8rvPmG0LnZZ32b5V2nQoKkZ20O6PETfIihED6aL3+ynI7J0L6e1aftWYo16ZGOlJT/plxm
xILwpDuTFggztIeBzoS59BBJgexrAJ+j04FMt8OXgKeV/ryMDZGNDN4EhOzwh3OVAc04r216EYJl
7F2kpBeA+H2OqHAVWkLAhClH1vYiHx8RjrJRWSBF8IJOHUX9YPFjBhgOGWh0lG3F6otsKYyQ0Ij2
VPLglPIvrnoi6i2iBJsG3YXomAsN1qOzTn1Lm7/8GZKTJGRzv1eUhPdZFQlYp4m6Vy3oXAXp3KJw
e2M5vHWMWlWDcgibfyrXu5Str6hlnGkhmkoqs/0ADzMXC3ZGJmKGgrSxu5K1khxnBVe6UxNXQz4u
TtYkfaJsFJpBEQTclR1F0XVYKIVLEgDr8WzgtsPVDtWmgphPDNKAUymetjZa7tWGfEZ+FmZeyVgG
FXnosPq5lAborFWttzHhWViDg6+Gtfs//WXbVJuLC/bS3nH0VTXJMgpnmxKHgx3ARq80VyIfZLCO
FruWMnnNcCsZBBUlD9vC4W6eKIk8Gbs2gTmI7NYHIWa6L1w8/34ln4Mw39caHVG2oCXdUVZ+gDy3
xs84Gut8eP/LmnSlgGQZ6hMJWhnJbwacXjYJj15d67zlaQ0z7k0TlGqLnLeZX65ZVNgZgz5r7u0S
4UVyFoi0m08Y14CwtAbqy4XbSE5iAO6Hzd4OSbr1j+h6XZTwsTabb+oZXexEKRgZstqldjop1nXV
OTUPoadcnaX+egfzKmmSCkIRX6L7LQTVFbypuVOMQkFm14xKXk+2mNUfm2A2A2yFlc1NgOX+FFxw
RQESS2jaeOrC3BwMt5itIN+EIFtMBJjnaBcgt9jL4TLaqd2qGAiub3JAbOQK7//oGYz1YBd8BiWg
33CXF4tgrhuaIz/g4FMhjWAh6sKJhefBLo0uHVVpu0YCGB7vgtuY0pugrwV5e8vi4clhofOf8VAP
5rpSOAPtdrqjbg3/hqbE2Ax6qTE7zELgCw9gTrE2h0L12qgR2B8kCstwqTJz6RXUJo3k5BGqyVJo
T6oDHk+i//hrJ8H1nT5IeJ69bOU5xjQGiXK5+gOecjBFldTdlvXpt1Sc5i2vlkjl+KXtl1KuAX+h
griprEY/IDBC/9wLjNjgmEYXsHqU5YYd4FFehK/w6MoU9ZzzAOMrcXVA+WeRpUHq9QtBkMx+QZrc
GOd0xADT6FiQ56wPgDzF0wBpkJxrrkwtUnOlsUb/Gd71qUEosouSGZ9NCYpFQ1W76Kp93/ubemtg
SBGrp4xVOXbNpj94QX2pyAxKU2DmbL8FtD0ELVKISzBWZJf423D/i2bkJozolTRQ1Or3+Y2yZoJ5
mJik6o0d42SzDRkgVNrWTAXJ/57Alc5brLnq5L6N9tznyZMiPyePNJikU/YmojistYCZlvQTMINR
9oy9Wgm2X6msn/ouCpq97BSNNkjdf0acSUncvEHUsMd7l7wawDj51wU/ta6i83m+21xw4offBztd
1n7fH4itI/4YHiCSTEg11ni6oklbvTKVVULU/6iTwxqmQzG3JjhA8NHU6wrt4ymlmRmd4sGPo2lF
7UNonZCml6Pa3QTskjE6NG/t5fUsyNYw/v3HWaqxq3mMaRHOoa5oqYfT9EgKAIB1+5pDDZ7XnMMB
qxczq9OIoy4UD74vtRThxvxv2TKLSENXNAqiY1GkzUim/+Rh2D6Lq+BoxTrjCPQJUmKIpNkF9sjz
/4oZ7Aui/FmvEg3ldjpJkT2CVP0ZsmKmNyeXQM+nCDFJYqVhRH+/TdFXDm88/DhJUu1mXWAHuej5
h4Q6xLxiNswxdxzXL0zeftS20rwitZwPpBPE4HAzQaEhRb/8CA/nfhAg3PxSv3LLbp9yVJq04GCQ
eijNNfLSVk1afUAB3diiXPB9RHi/4LDNhg4Lur3WKjn16IlX+318afHuSSny7fRtn6o2Aa6sKrjT
lVpvXswFkwDcRWmBCkqP4GWTJM57Eb8DPdo9S+rLwYWCyAPmkMdU3qc5bNf0Dy6V7ckHTPty4XhI
waDitVCFalR2gvHweJAgmVJizbsw1laewRVwTVpWcLxrmePFUp3pDQv+fwv09YVZYUmjwqol6rhV
uTJYXMcyzUqu5C1wi8MWBz2B8LQXB/9wcAMxbz8u2SdmfGaOcSXxVbJ0rdAgtoaG5JQxyFQpYyHK
Y90Ph1GT2Zaonvs1TbTZ85YHJTmQstIJS/Yps8+IsE6qOdVfrWxfoxvuiuu9mkFPlOMcsIXDHYQr
xrjKEznCcRfamXrHtX/cJufqYATcQ+6OhRS5XnH75U7Jyn4s8No/qM2mkSy0qA7qXhOn+WijHot2
xIBC7ZrBv5L3KMEOuYaqbG8oB/5/fRlMDDHp4rJo5lqyo+jusGp2f3wGNaPIjmEhEsSaXZN4piOT
BZpDaOQZqMPQnxAZdla/+G7ygvpyVhtc9ksK/9Ltd5W6cuxffItc6MPkjqmTRPF23Em97szogS46
uib+VJXozE0Y4lw5jF//7LnDO2MnUdxXstCPat0HBIuoduBQbeGsH5Jbx25H2bvbctGQS6xG5NsE
Je1+W6e59BvUXNV7LoPsOdNhcLyHk3wPQLba09qO6jnFs7YlWPmYtIG65Aym1WvOYrsqYIA3XRd7
64fOfpGIIgkbwnQhTimCTmag1pug7DH9PlW8zDTJAtSjlrkEP+BgwDZB14A1NlOUpqTXUAle3NIt
cXqx63EKxWKbJmMaFI1pbgsFL1JaPRF8Xa0oAe2P3qt354LvrHdqTQmURO5h2wo+bzUnXC3KoZBe
eCE1rFSn3Eisjg747SFE0tIQMGRsv11HSlbciUKWVf7F+ltbFtvF9EyVlI5Xi9bxb3gRA/zqMFjE
304ruAMsQph2UTa+CwDAuoieNKThaXHu9NAv/VSjvomi3CmmCV3c8TcKP1LbT2o9/b5kVLi/2ODW
2By1yTdMU/exhlKwPYyNH51GNXt0OaWLh6fNo10NSELapnOwzzSvwIVg+G8CcaQVYO/E6+YCJ7Wh
n7vhBdHAsuxxRkNpKItGxIlKQI8ehLjELJi8h/q92b8aDaR/tlt0bUe/ufG6Z/3lSkMpBfqPV3/p
g6RQku/dPDobzeJ3c3iazlDmYwOOd6BCkW8+YqlgOE+fBdAbWd4HCIvfzHllKgV5Y5EQkVNud7NK
XK5zxfsjpG4Me4JttjD9Q7LVrPNtztWj/ln68wZDHWBUt2dakjwsvyH58EQq/d+ODMIx0jFtjjkl
g5Z9UdpkUBdZwcXXp8uzrUuhu4HsWtPf8LzcC6AaKo6G1HmUek0qepB3AF/qxMqfO8tWG5ZYkUVy
LOZzVhcwbM7v2cGisSV/tsLaDc6cclaRI22ySLLyTay9xu0wkjmqmgY2bd+UKwD9at1o5DW+/QGY
blFxkSkl2lo561quXZwEVjm88c9NrPeIq3bJBBlIDBVNIHm9wxft2ktoYiC2XdDaT1UWlztvXQUk
/M9iJ1BvQYXkvc5nZ/82vZ74+/95QiK+exam+Ird2NmjR+LSjpArsvehubHYsgzIhp8FdthuCHTs
M8EacVXIt4yi6bw1G7JkShYWv0gQIQe//DZFHg2hSykA1IO9sNzUYff7YJUfYjcn4S+bn12ioXbG
XphWKAqcQNhk0qyCdkRv82JJrt5TBwirI01v9AVK9jjrlqmDdBb61ZoDNU4VwbI6olfAFDc/MA+V
Ur2yyB+PAELbVmgPtW2o4HcycYvZagMSWMWDs2rUbuz5ZV81QAz3fvHG9ofXLnCDzAlc1h89lxxM
vjCiQORlngxEFWKv4Nn24ZAS4wn8omLWfMLE1OyWuSnT7ZBCUDsXsqub+UXzglAZDGAXvBfG6ea4
OUZvU7YMrorAy5DcDcWxX5vK70+MwDjmM8Ys9hvLf8pyM2vPpg4+uBaXwcJLgy6X9rldcuiZD590
oN1HInADhz89ZDy53P8n52Ku50f+TmHrvjWUPF5cY7QDMrROsGwZkQRBlc5oRUkO042mzuK7zR1A
cfwpx3Ve04EvaEDiVWRv4vXs3QFr9urH9T02OlzCqM/dqH1qBvaOcIbY1hIdZsTUGisyh2fOzGjY
fdVUAV7wnz6+NwK2bJ3S0Hu7RePluRkwZ5Xc/T3iaUaneRmmu/PfvYIC4GbAt5pnsmVwv3vRFN3I
xRjT/JNKmiFTId5EjINjiwS6WCcWpDljTSxpXLGuxYzQIrOE3aZQl2K5WieFoRzvmhhdijUwHIpN
Wv5wgMqIUNcpr7tFiScSdPAWw3XboIWaQMu5YWBzW8VgdcXWkn7n1SkI0b9pN/jH6y7E+KxtFmKC
y11Hy0XO9W+LQy65ljjCmxDfN24ydBQdqlbttLB1MSzBzgp4qry9QTbRWs6icYhktW8m5NQm+laP
3xSlcRubUJ9FEEg63xoJLGxLNjQoFuzTsN3gko/yXi8pysAsILcC9SqHew/WWqrKQ3qNC46dEPev
PGA/5ppg19oo42NI0nxjhnhxT2E5nRASh0kWkIolXldlPW2VFO7dYdIydUr9rxLuB1mDmdN1Qacg
MxhYOaOGFgdSYLRqBMrB/h8FBMvSKQFSWl18Mhfs16zFcwU5YtguN9a6tS1yBHj1w6cjvy1lOj1N
0SsZErDMZ7ydBrfV1AHYNMns2rWPUgFjoUkI9niq471dqbc2kyNRsPJV/ekNabzlhfoZh1+XQvFU
PaeicTI384ekvqmcRRcMwu5V1PBSeg9M4gEEdtdis2mwP+qepm9mtLJ6Y2mXl1l90zGAdLr5Omo3
gvMquNrqgl83fehIJkan3SIKGY6KCLI28ckDJkaLCGqN7N351N79co1Jww02fJEWhmyQbx+VTi8n
HgV93Oior/ysgg76bgx5stIQ/ICjroONo9WQrxWFXHk3wTfwXTIiJ7Bd8jNnxAJTN7hwXcZ9DqaH
CyiPmdYEpjq8n4dah8r8PPGxFWvcQk/ScIeScTgI5Sx0X5bPaiDC4G41JZFG+p67Q/GcxF3bxSZ8
a1uj0LBTI2yjZ3BenSBn5X6Tt/N2n81/EAdKrn0CGYRvmp6aH4Ii13FE5egaGIlSUboynK8XMQaT
zuqp493V+JqXk1xAFB8lb2bDOB8IU1om1ABPWtjMS/TpsuqYrgD0bCo2vZpUB5s/aWzWGqGWLk/q
dmH0aApWFXge9SbwnwP/imW6mgKv0GkGsT7sPmkuBgMeV4miB/F1bEYXkIBSdUcqef4YCLG1D3n2
x8v3ANQmnn15renewnAPbEo8W5jvzW6J8aH/rOMO7i77J/QCffPQwyZIRcN151nl5uxXtFd6fR0i
VZspbLN2IKy3mzADed+wdQReLoGjfj16VO7VE53xZCb65D3BoYMbXU/XWTaEZ5WpRaDRudq0Br2l
ohVT1dK04/qPbwZLbL8zMsS14UTrrUu9zz0mzpuLn90uDJrwb6/mJ3n7PPYXThEVrkds7eQltv7E
q7XtQR686zdbIVmIEwXxvfLvD4gY1SFKL+UbPGjXPwJGBNlAgXD00hNmY1M0bvmysPUQ+ik6IMUn
raubTaIWXS1CzajPSdnoe+UVIQNKSq1XQHq8en6E8ez49oe8bL4KzF6/HzcnMsQyCdaMLr9k4+QG
hwmZlAcKrwuaCz3MmlVCIqTsbIVnrGC9e6NYA2tQ5UjbnrTlDV6LoH66b8xj766dXMX5HGBtDMwu
ADicTuPcDAdFs4GOHKE2v5EHodvbA/exIL9qx2QAbCDoJH+yzHiu5ZLi+x1pgXSNmX6b3EL6A9wu
qPfXC8CzGbYlK2ijj8UjeXtgOt0WYi5dReu1gJQMRA6yiCShvh2SR/LGkaAIMkBPxznl5GoQU4bL
g5hsiAURFec2cn00Gw6xxGnLDXhRpGNTMs/jLo3B9D2HYjkfSkYp1zohyYZ4Q0A73rg85dqq95xB
gnL+FxinGVtIDdp022p8lb2DNL3hAGBTvL4MNKvE+5epFf22+RV7UYzjWnzdWD8/Oj/sp8Zf04yV
MoeZoXeHDBhBce5lTsWCiKwwco+jZhaXYW0RaEfBIipJMivhaFv4yVjBFuhld3KNSQyRsE1UEooA
rYI4repVeWTL/b4Gg4AHgTTVz+LjuDp3/gvSmq5OuDsk9dhIHSR+SL08/NfgBBI7b3X2p5rbWUJG
M2EFuiMQKL2D4i06yC0PF+M5U4LAkvEwi1zJ24M8tVtUpOsL6ErJRvMw0Ihxn1e8UdgSMxvcrP2c
7caLh8JuZXlyUON5zFSkyPAwAn1QaYz/7WGT+kdFV96LIWBJh8FLeuwiQDE8wfQ8v5eKE1xjkVmE
zzGccTXdr6LmHPJ2yIp/UA8n7Lg6CwD7UArSmKGIYyTLM+kn/tMncTrTL/rDge4e6/1xTiF4pAUH
4IT4L27Efmvsd+KPB2zduvvm2jGLrWiVvee4QZ/GafLq6FQGJAG8sqbu14h5vUet4Km3wgwM0AcQ
+h04yICRkGAOm1P5fYWkjcsOcBPFC/gFfYp4dhlsz6c3i2kgjp0HQ9xcTnaYMn7oJ4gZ/fq0Gzs1
uwJfBNk3+ld9dCnjiAmV/LWj9axCD9kF5oTq2qfnRSYmcPWAck+xDPcBb7uzCyqVIaqdhBljURcl
khdeBvOQxax+xEo1w2UQ3ShmbIIE/cnzmlzjatcYQwLP1HZzovQqkGYZWED84k18Liq1zKa1GOcc
hUGCZTQJrNChXFMGqlVT1QPanWJINyBXoqhKqIVsnpcT1zv6KmXusIkgwSlGLc+UMUhIrU2xOtHg
60CaZl/GRUr4coY9i8a1xK+VAyJHGPSeThfHxeZi8P0EjnUW5MZPYCfhoB+MjHE82F8EG2famtWE
000aHij4ltSAZYenZBY3htB0UW4ODl3LXWkr66/80kVCl1jQ8xhYJxpPkr2HI4DQfp64Dej4Zl0I
zD793jVWwQhEmVE9VNmkSRugwavJmuJbaA2gIKXWLEDGvRqnuM12ae4Sm3Us+Bcq0G3ry/VanpNB
LdsVVQWRTHIUXRbEsAPfy7ssO4UoY6AO9Fe3MzILDXnVrSBrQBkokw/wGyhh0Wo9AlGwnBV5Pg/l
vIEikxI6PamWYHsgzVThFsmauL70D7lwHWxyTVzvdKURNVBZR52gpWzefW9YrRyE0TWsNWJ2OgLH
Z7ppXli/iWZcBrKjmXqW4DR2H8sCWsr9+MJjBd/NWDfyEOq7uYt/ybFdCioyUDW81MdF3ACRl85X
vWrRLk8NRooiDqDQ5tqLjLgHxK0Qvhwt4dQjupNdZIqNXZbDytLVi25mvef2BwTRHruFZfHSDS0r
oKrO2McHxmwDQdA07FQGdZ5KYhFE/2oaRXPpUsU4HEVDcOO+XEnEzoaA+gN5xqWz5zDmEJZzZWmg
T71OO+JbhNByaFw6GPffVMKH5nXVUiXXutTdaX1AIVIHhdeFvYZsIH4/rUUzB7OToKQIqJoFcZXg
hpL7BNTz+Qw7BhG6VP08JbRi99u6v/a/16AXXsURxIoP7nsJq/FFvZa3ZfwSa+u8wlOoABn2yQLw
jAD9pUnk68HQclw9O9Z8Sp2/FSxbef1hQ44dwGmiVe71vt7JIHt1uvp2Ds758ROA5TKAmoHaaqW6
pwYRZS6rmhu6g3DbHbLPqoCTHBHWsWhL6rBr5gtqhJ9gwyThkx25EWk8DcnDOy8MMbBlYVm/uIz/
Iu0OI6/hpX+jLd92b50sSWFCv7+ZeLWG+W1UyDctk4xG5jTq1/6qSZtOQfsG3cdhZRior86gU+68
Fz+GBBbYJ2AdXqpiiDj00T7SnewMUhtq28QJmEEIhg2YGKS2i7mdymI2tR0XIDs+ddhPh3ipZiOU
JvzfaacvN7aHt3+leFDKeKg7cKLJELueF6YW/1a6YI2uQPlpkeNajdDLMG7Kq1KpkwKugxhXDrj/
xk1PQ4XssVL7iM0pXMM9HbiCUSdXg82qa391JmOYGaTXECPp9C+IncejJPs/KflLUKA7q33wjOoa
/tHf7ZucFRd2i531NumXU+bSLFM/sBKYkOXlQI4dznB7GvExtm7SCPTnQqNP0NSemhivlmi27tST
Ej6sCQgZ67MHbWl4pLEERbvKNYqT3PBt5CYZV9HPT3F9qEXt8i47jSDmZHuw4oLHYaF03szqxI4t
Llu2XP0XK0mG7A4qpnLnKUViuLNTyCDTbqVpXFAHdD3jFbFoEtUuT6fsXk8j5i0Ay3aESzOobpYl
RLMb3q6nasBwnarMJayPJ0uKAcTeB4qNkGppBDlA2SEzHGr4VvfgaDwJrLbaZbp1GhxifAzOTZ/e
JOwgKloXmM3f4XvG/TqCj5G+PkgWCDQXd0AfGOhgrKW86OjDbc+vWQGT5WzQSuvVqtibWdNrBNTx
MLPEwmWxNdzyarEY8PHd3ZhIsTOcm72Ad++1qQKlJaOKeQDO2mXcacTmJWgI+NjwKXNd0UidBoJ4
QRgIzbIzhEJdp0pHpVzUMOTIzl/Z3zoJbunW9cPe86fysIL8aWkOKO8cCS4k91+zoY1J9L74cHZY
T4VJwpA4BN8HYkb0TUDrNwceBbRD892LY24ok6V3Lu0wxReFyhaGnwq9rg7G+kG4r5zDTlY7qKyQ
w7VXSKtAzGo4a5T5qDw71X33My9t5ft38l4OEmTFTaW/lvv12cygo+ylRmNBLenSBuImdAQdBlNu
bMEq48t9SjcSYVbkybriqMf/osEwRjn/1JIZrxS0ae3dA9oz/qtjev9QGFLAuWABfo0h/fmYqH1E
8HXl3x8YZn6XAr+esW6v8v43NNU1kkHN2DGRM5baKjOHe0NHFpgXizi3kzE+7LfInOkDC7vQqatv
bodCKFKrUbZ9PS6mtIv7IG3M/C4NrxeR9UJ2hiNGk6ycie+HnfaAt9cBnH1f1nD2DHQS0vxIAl65
Tkp0+W6PEHH9ATaky7IA0/Ac4kqQtTvqA0NIEEAos4/vSbwWSLJfXVEXrRWfRoe7p6W7ywn2KlGD
n9pAJLHOxBMfjLHSlKRr5GcVCdVtuiVxrd3LNRh5xrLOSuW5Naesd4aFUZGIjIJr7fpqFd7bcpJe
q2/UR/gCs/5SGrM7Sd9QqExGBcPwUmo5y/FB6IQ27rlC5QwcbzE5VF+cs4i7VXyDQC4vH2j/7BbV
hvoBziBbu9xEfbKbKRYoJH4/0E6dtD2cgL+JZLMzdVYt20OJ0zPV8NFAxDBBvr9xNXShmor6AqCr
AHzqH+VXEh5GTPCL+Ujv9Ro1WeF99vfEguS5opO5OH1kgFmrrVfkA70gqvEZqo4KX9EMIkMhXi6v
UJnfNoljlaegbwxDC6x7xjY+OyvPtA4jZ4SR6PNn/u94cwk8cFIuQZ9gErmZmfs5jclrq2cg3Llt
E6loOTwID51T3pQfJziiMqU1xo1L3Q0W5rhhi2D4sASJtZxh8MiffhkM92P5ij8iDLDaaupATZ6N
3y0xqPBelKGCBEnW5lFmBN+AiXtnTyoIEyAFdhLLMO7zmWz+wNJWETxQ6Z5PcYgPu0Gtvh+YUVYc
E0DVMYKs2Z1yP3J3k1zzPAf98y7+FSJ0PyoDfVHSXoRWE/8U6xVSdiKXUV2NQiLO3olsgvBB/4GX
Vfq29adCL/xLCgrFCbkhYMsDCzLkgxY0SCdTNnlTsLQkoYyWvMspLygy/oOFdwIlUCr/VsFckWNp
RvKti+UgdogQR0QG6zyp/xkecj8/fgtj9rf0B+XaRfbh3GhxH6PrOHJFxpwTN0AVnP5ni2iBw+Ud
UebaS9FQfa4NrMB7iZJJnpp5wpskMhrH2BratDFWNOPgj/8MWE67NFrz+KcZigZciClpEID/AZp9
LtrA/gSxa2OtvsFpm4y4LHWuYwh8m1nWoEvevT7eG35vb2MIOjovbA0y/eT2XlRPF6QaGSeiW/xj
PFQH4EORSo+aGIg00db41Flb2NSl6/wH4D4Koet92hKIomCeMOTXU7BQVLITdMMUJTeNm29AIj0n
08Yo197c4gFf4ZtvXHokVq1nl+C9q+j2mVxsYVMGSIEgg9saloVIhBrohhyMJjxzUiENLQC43U8m
D1pWCiEy2LchmHMsXk4nxF3yG9Q3Q3o44riVnbl5SLe7W5NV9Y7/p7xo5y1VhrGEtcCgbSWhtEQs
Chp+wYxCkoPxgAxYZVR2NL8rUzpgPuLhNoWPiU8qvjOBTu2LFMJiAVSoMD+TeClGcg6hqravDxg/
tWA6tX+VU2JtG5zejQDs/kgKJbnk/GYjJhaBVBKHvvkYCfKVsVR5T6Wm6Ylnrg6hDiJBdWqn3DKf
AMFWPmTqD9TurmAhtQ1/JbrQliUPH7z+Bz8+fWAGxelKYs8TIWwP0eeb0wlE5WyJv8ULy51evydH
WkyLp/KVjQkGZiaoLzDebFWgjbxEpUH6wOhmUfI2ZhXcct5XkQcopLs0LxG6h9zP+GNigMEiPde0
+xPDX6T91SNBZYCsYJJw2fWGZrMAoJ3nKQ3fNiHArbvVqkCTuCI+UC6T2P61ZKm9QRYwQAHINmTx
trr525i1mGlSwlVzbGMQ+7VLEO4OoeK+5NT5xyvz9fYfZmJEWnXXyVe6G4FSqA4NNNcaOS9fE+yA
FUDy91Mf9x8AZ7Sqp1WriuthgSiVS+OJSP25qUUfrRKzU8sOx+FFY4NBJZWwCa9khzaaQLuWTmzJ
7T9j2kFOA7Vkoy5hnhPezvoWjEKccnunshcy0cvME+kR+EO/CoRprgAMPSthvQ5PrwTx4Hu9+pMy
m/XyNTc0QMnhEZCe0T/m/qjL3gsTw8BwUb2hlLYLgW/a2+X3xVA4g87FtbH0TAdiCyhoJNUQZn+0
pvhsAh1nHmdoYQTTM0gEcC4w6OfZxBITovPtgwdohpbj73oBz8Lm4ph9nqG5KsZWgoGVhBPOPdlF
G5mELBDjPMh3sXOF7ZuMw4RNcjeBX/KohnQgRGpgNjnPI99jEvNk1SfBRgkok6iLB9kERoRttGy/
yeChAxa82YR0D3c+A9xlL3+9NugeQ1J6964LxWew9w5W1Pj8GtHOTpzCEg2GCPbdjDHigyWuQ0CW
G3qU+j7WpmkYjyD+OWARGv6JnuiE8G0KDgKrpgL7s+qD/c8/XhsX70ig5HZ63KinVYyvaDZ+WcNj
WvoXKdLdhtsI5gSus9bLYsicTXmw0X+VFC6/vc/GUXEr3YLnCazg5a1rx37daOgCrFzUPoYD/0oB
7JXgXYFkInNEVJBlULtdjgqAUQDPuI02pfbSuFZejC0KKbCN523x0E2g6lc36aGLYGat5Npgclcz
i99g1JFHH4KdYPZWkNWJ+h7IKCNZJ55YrMenTDx8yh72kiha0gXtfNcz5UWJyX0Hs1gU9evmJiCb
kkHC9wFo7dZ7dfi3OJMXNHA3W/b5KINz5TA3yJiliNjFAvNch4LKCmvyNaFr7ON9RxmkEUYadOdS
jFYVQL0sVkccendy4gnI8Ar8Gf4vChEtpBYdjRp4ycGwf8RMA16m+tzcFIfNPm3QcL8vcfZlxrzu
wVXZhs0QXEah2Eqcf9361Jwi7DsuknlcDiFEPWZu6VK57569jmLcxqgQjwdU1Lb9mHG0YprhcgJx
GbE2yt/Ht6WoZ0Kc9My1MiTBwoF/FQMfNhJIRSa2fR2CjFZcctcLmImkTkJdPZ66SmNsFOnx2WRh
kcYhcMzoiFOIcrpisdMqVFWF8XBCeLQ59QGi2jgflpThC4ClbL3H8fdioDGRTg8wUZhGQB+XBME/
PrP8h6MpkviABtZp0xbIoYGlmd8IHV7MgrriXk9hx0JyIuJvfiWv3/PfBBVac9yQKIdLCALGTu63
xOVaok14G500mLPZlxCkFM4G6R/Dx2pZ5ic84Zd3GpceBQcQt6+eltvKniSzkumL7R4RUqjboFgX
MSnHbAKT8nHJxaUsnHjKLK9fbWpI4IJvsZHilRUkBYt8hMXjsCL5UWlvchSyQ8CzivfC61QyvgKY
Ua7MG2yckXlTTs6CWX44YcsNsLaaj5qRjkw5vmK54oaKdFr8I5VVJ85zcmJ933Qdj5r4/mx/nYbZ
M0yqoJklslgdnh4PaJ9l8NmheZIiN6DBSQPgnt5rIj8jL88RqA7frJFnAiAD2aGuuE8XjIcjmcaV
Lru5mmIbLtD5lSh0uokEhXXgSYLF691iQan0/JYIzMbKNDJ/ijVi9WdQk5XIm/aVR6IOapaAY6wS
IwPdncUMOOSruPDKCq3nswjFll34TaVYk1H4B/UMNKBzdq8yD+e4Z5VaI5s7fWqoWElBkkbuAsLn
PY860eDlt0ZgLQXCbtIH3oQ4BPiE2GEfgu3poNzze2RT00fYHod/bg0AiHRR4d9Z0wbU+Fo5VdnH
0l0DUKGMnVBTltXebdIoZEmBD1B/0Nm2Llhy5rwRHNaGFWWw6jJb0XpaNitAvFpKGn6StoNmT1LM
42HiFh8k1o5HO21Ap0qigYLsiR+VMcUP3P5DAVhPRtAlfrGfcuDM2lus02gefl7NXBbQJD1YlypE
DVaJ3E4ZzSOlYKlSQxxXSPmImcO5V7tP+kLNteBNrU/uPpkwqd5PKYEhhC/6aoGJECXRTIZa0dab
PCOh5rKz1l6Q6/lwpy07BpqomksRuLMABMc+4Basi8jEUp9r9YHWKkRnrT9spdOrcyMYZPfo4iW6
suv+hqoH5dNXXlwR95065D06RZPy9qK1Um28z85OYkB9bU3cjIEqMxhp1kTAcYpBYA4k87r4E8wj
HFcTkBknnLY6coaT6cwsNbYj9HmBW1LCc67j7BCbr0Me99gsxyqBlLJkZLlBCRlq28BkLTn/Kjjm
Aym842K0jeX7YiTHtVSiR4lP+PMhxblsxSwN6dxJnc07xf7S8Dmt4Rx+Pdm/kk9Zn22+HcjGxf8z
XHY+FvpLo/zpt2z/RXJMfIxiIiDQsMNIEqXI4LErO1uw/dLr0b/dsS1DfZNWu0vzuuh8DPz0De+3
e2wUcYwg/y7oBPcQ4/IKum0hSjCitYP4bgFDsaeDhJuStDRuzT35S3klnXc6t1YiBQEzX3NlFnHq
/+9SqthmIPBMHNGrPTPJjPusZh/Ruxegx90ggJGxNQFGlnIuZz1F31YfHhyQiI4Y7kWYqfw7i1wG
hu9L3KT9YDOdR71wT0f4zcIJeeeoWvp1oHZMtrMxeTzNBQ8k+Io+SPImOaPqzMdfo0TnSd0IR+xc
Mp6XJ8Uo6TpQR8fCjcd/BCJcgXG8yAtdx4jS+3YSMJVdO32NIeL4AXnwx8oOEw9dIYNTxMpFr11C
Cf0si7fV8HgUltbRD7LlVnIVvPVtHcbBTmN/J3wxGYAmkex4/hWgQ2TkLZycupcXi8NfU3kgHLP3
cYKe4ZbfKqwrQPV96mtb34HOVCXR7+C4hkxwECiyu7xMTs05+DAEQyEQy+5c9Xyk9L8LqW3dk1S+
bBoXIA1vYeKHHd7td+PhAltMYgHW35jwx9Voe5Oraj8kHBj5sF2tgZDT3gLWB21UZyYOEJhbGq59
YujsowBOfQID933lWWT0oIQ4bvQj2eCGk4P9upwRIz40p0w2CI+3z1cwM1WR2+/v/Zx92rvui74F
wo9RlOJpcOEg6/ILX/24dLl8UORiD0kEA9PnFOWDd+e8ruduOuCkztGNOhT2v9TUS0jVw3JShBAD
AntlNTmalBRhRH/TNJffugleH9dgZwmMjIbuKwE1cswY206yFVJtkXqkcSOcfPeEq0MBqw3ORFHP
OzHihsUKpjNBFKazDgG1wIc8k64FarV1yAMxffnyD3Gl5jJ8SpiI34gKpyByzbMlpiR7DAoXBDsr
WQWhUcTipo5xNTRM8dYeL3tgO1WealfysYkRWNWXQA9z8dXz2aqamla0lF/hYwnANkF+Pbb1HtUI
mzt+99KoYW4M5I6HljzMqJobibu8LrnOnlxxgX5S63csWEYmMDaTuiVmZyAB/DfEyqQ61Yf91tnm
W2DU9UU9r9cwfaE09LcJUbGvuGZFA5VEUu7/HP0UTHgPSr3xhEm6LO0t5C1CSVFpltuUDgDNTnqp
T/48c8jpfcEr77CoJCpI0UPyLvrQTOKiP0T41o6I9lDphqwXxUiIHgK7cDBUgM31v5YVlttpFj/l
4LbC84uA1zqtC5f3rWjW1400yX6lt7n7Xp1SXBuI+GSJVE12R37dU4cn9aGz4R8GU1glPdClnLOb
UCvCyl9NMLTnEVjQqDF4JrKyeG39TV+4lwKwPygn/HBybeJO7cexV99DEh+RyXDXfkxBW0MQoS7l
LXtQxa9fEYVmQNScl8ePdqySNzugm+YLUt3FAEl9ySGVHQSWifpjxEMe+DRwKg2YptFVF+/2ZhC7
IIBQe76wlUz12JWdus95gETCARsS7AHD6ATuYmDTemZTrKG4fZEecYuY0wH4rbt47OGy3MWqOjdV
9BsdyIWbP2qt1C6iWyMXNMAupKQujZOVbTRJlRISn8gR2hV0oQFWUX4cKazRKOaSPVPvbqDK6zKx
ywugiUCYwADk4ECOFBbrHV9iQeA+P3y8Et6VVqbU4XAyWghDtCpkuyZWs2Ma9xALZV8eO7Gg3dXb
y4HAbVFDZlx8/yOe0xpoDRgarG0FYRJHTnJrbJxTLHbMdVmRj9detGm1K1pakB3wBuq882Vh5HwT
ks2KOgXQPRNC90eOg4aEKFnmeVPwfW9NsDheniWAcAFYuy/9JIZQ3hMaV/nH39iBsQ56gYtEaqkH
wQ9MX+e4wuoKTJzVFxGFrwypBhf0fJXeRHNtZJLBLqc63Czmd9KwrQCHvRW3rMUxeveeuHprkYtl
93mIKxND9uCO1iDV9l8WuxRqllKpUKmNpLHIt3EnRsIb4+Aip5NDur2G2uu4zCBErVmr5/r5McOt
sTUewjSAcznCweceYG5ToxS9dv2Vr3+dIw8AxZnmJv5W8BPRc7a6onQMQc2n9ujuEqtinNKV9udk
GK2/ewzx+1u40dwDlTVXIWRcj0dAt2j3JwUS3wc5SjWWhJNjYh840qGdVdY1G5OdU7QzQgvmGGIj
Pzsmn6UZoRmDa8kjgFZuHmTyyRya2AlhQIPKEfqIsAR0kJrujf1wSNjMVn8/mi37P8/OPERffIbs
jTVCRvlOlbo1ln2iM4Yc4C/kTzcL9su/BUmiNR56TWeruxMT1T+tjJE5L33Hc86XSWBKSk3vLxxU
MsUWeNkR1SNjkrTAgFszNWGB4+gUPGr7ETk4eTRfCUn6aifcsv4jOSL+JO2LETUR26dWQJTDxa/q
jkwzsVqYs5pY3pgnt1PRVb4D5VOC7mi5ZCtkTVKIjgX7XOocUXeJdikLvpTWyD/yKy5lwH4d26KJ
sNablVrl3tzr26h7IuJfN7dP3WcUtiQ+hs1SQIVjMlM7G3M61IblfSXpwZjiqDelLmuUT+An8KnX
0hquUzuQCDN5iKWA+hcX8aBYnol6jih/RHH4ItgI8i6f8HmkRT97uERmvB1S0rV6STuB6omQ+l9c
3xC0fbHydRDPpIm21Gk5vcz/10PbYXDyq5G/evYvJPN8Prii1d+cwB+u+dfzqXvwc+bgFCQzoTXL
1GEiQUPyNH4cnv0j+J78Ivz5DWhUSrB40g8pJ4MksQWmtq737FJUsMOFeEeiGBtsUbKwIVWT5+Hk
7V7iAQt5umNSssBwrEpaz3gMPJ98f7dtC3tvyJBG2trCT/Q9Gfl3oxTeASUUdaLjs2+mD6CNkgN0
xBW0oh/67aTnHe2WzdDJSvMg2TBJI8IsnSGjVQtybkWzF9Vrqr+m8bQKVNsGlzlDPPmJPexcYeSl
MIiyboYiEEIhKvSdg23XzN38dhpNPIYVXj0reHK82Tut4pITJfS68YIDrh+hEuuZorKPBp2k9fnZ
LsJHIlgYLDFwpRL4FI86gpd6+ulSOLoft/khLMXY5Xfr0pE6ERuGZPYVk93FNTEbw4XvPNzKBopQ
aTzSQDKWkKRmtDHuRDmkprHsFM3NE/eKdTumoE/+ylyLhi9eU7X8ARMkqcubM/XWX3JcnPaWBeOw
RBPu+MI+wFzcyshcTGemrQvnVJ+Wj2QhdQ33Z1hOjftKcpu0CJhxzCo2D3gTRMY9Ng0aBbr7yAyL
VM4zyYGQ2u6nazJr82hHJViQ7Ft7ExolCMh1cYcFz/w0rK83oE671ZByMH0f5MuaEEWcJdkKb3XJ
wnKT0WD/l0S+xu1ZeAXaIXURVE2Y15z6e0TCPGQ2RLLT1iw+0fZox3lYFDAI12wF0AQMHjNWcraY
sI1O9KdL7O49Cz3sJubhA+j1TQe00FMyhWQaGy7g6WBjDG93S3NG4b9OyNhF9ANDTM2SjVQAJa4J
6EaPSm16DJcVbcZcXH8cvLGI2XHfVAGGJ3+JkFlzwkaGFk5/D458tRAx2dtTwl2YHk+pfA0AZ4WT
pp1PPipz4U+sSk48g2YbK2I1RYaSNex+o5z6PaBBluGXcG/0snn4QeLBPi4pWUxqJIQ2TMR8UQtt
r6D4gLOJJvTA0jvpzGak2tg5f33rCquSVTmMcWERy4Hdi/XKZ6oCfrACj7jgCRx+coCueciowaUx
90nnwoGoupZeQdQlSUCpGeiWp4qBDP28f8t/pbxFXKc2eDo/j1PD7ZH7y7IJ5xkCGnlEMMU3n/rA
wCe8CL5fmeTe3k2JnF2iyAcZP1IAJbmXiU5iFVXUqpsROACKeYzBdFxXQUfW2ignJVfc/p+XhvAY
Yr6r7FzwJYc59qOvzbbIGeYJdK1fxqjBqSi0rMR2P2qLj6hpuSRZ5dsHomVmKA4pBw9UI5Y3HLH5
mBoGT9INaxpdOFsYscCIEZNgW0y1b4vMyLQNdL2AhLVbxSNOYqf7WXXA6lN2pLZ12m/dN7u6jPBA
ZCVebqJxV8EThEA2teATIJ7h0G998QAhJBlYQmIUsO4/rcQVeqrfxJKxSfWpmqxLsKhy2JA2Ssac
wMhkANsykTDe7FV8qhhcSNCbDiQnaFTG1cO85auYHQyqnpXYhEbrN08RJdkOBqSkCAQMjlVTmrgF
FdqZf8a6opF4lH31vy0T7FvshSaAbj5JPvqNcd96OSNH+xRPBCExXg4tb9f5v7oM1cS2Od4joMoZ
J8oBdBGM7l6a1VLW1HFPFeSxVtOOi1+rSOXczH4cwNkHofqZJ+Bw+8lvuwAh8B9/pXaCCAmxreo3
IOk7HW7fwhYQ9VxvzDVhrgWlFv6VfPuateCovW62j4SBuHOakZbVGrVQEUv+yE9uv9Iug0A7UJVs
br4YC1yf4XMxEJlbU2AvzK6E0VoDDx/RLeb3uCIQcLo8PFd+I2e/kWyY1jwHtSamedUV5Q4tCuar
EbWglhn7w701tkLjOPnm2pbNnzCxzpobwigraSJQmBb2Nif3nG6hS4lvaMDMS/dzv403QBggRsNH
tRceYI5INnfVXCMwYz9LJ/rFbBuiUyNrRRqBUAbJJAZXCMz7wajrEGEOjAecBFyakICSyPdf6meZ
3am6JHWErHlX/qvAkq5NCp6iFJJg/W+a50PRyDTyhCetd/7CvdLGp89/cgdQnxzmzdp+L1yLMhnP
hFT5XI2gD0vbhKY8UaHcklLSazKfmFqyYOxgUyblJi7NgZSeqZkfLjrInL/FDj2jObnY7mcT+L6X
4AAdtLBPnw4clYGrA1b7EiPL7lt7FohWTxXPS231nYZZBogI9/di3cwk/NRJdhTa2Qzn+dqKlU0f
EQ2BWaH3zBewO5jTLKYB55gtvHq5xS+GKEixC+v/DOJdJ5DaGGXhkT/0mNw1QnyQ7ETUeo0ljz0k
0XKBam37Mu8AId4LqeyH/STLmhYiQNKAxbau8L74NUWHpKjxc90TBC/7jbQAb20OoSbPUVEGAK2S
O4m/soVFjsdmoi9HynJmnvc5DB6mFahTJAtbbX/HbIv+mM1GnvG98rvRcx2xTBsq6T038SjIQVVU
8Vy9IAQ5ZiItOfdjXwuDsVTRZ/OTXmbApLSOAsYDuPfoUQv/MXybbO3qpJOxLX/a/EK3CeTZ4rMy
P1Tuis6dusK/d4yvPAGw31ZjXdR17BncVkbCoFduUOohzXi7USquVVZtiHUUayKoh6rF6pkJRWoB
QSWpupsnRrjhq12t7171GxvXg++uzpHKXUeJ65xTJAzeo6F27HJTlykjpXzcgpDwGduJ3rPyhbxc
FUQzFAAYP8AcOkVnCygGfJL5ovZYR4wN8HAmfi/XksnhLgfvg7o5VTASYnRSKUBfDK116QK4F8uk
LXMUD5v9T/MYN64iBAYHpYfImcxRLyhFA5eTq0FisQfOBHzieVeXcGKLazX8SbqWzfLifj9rUmBM
bP+liUcDE3UKSPH6b4Q4F2oO6sj5edMpvpsgN0NZmCMshwYviyAnD9D8tA6EDuMOdGq2UlGwVK7L
FKSNMmRIwgR7k3JgazUz8Dimx4uLhf1uuuA7xT8kiWC+6QakjhfDLCSo4ACGYHTYo9WDUexEcJBo
YsPIqYQSlMTd37K9KZSoy6XDOPKhJVPG0HRor/aQUJjcmWA/QIcDMzctXklmLnzgStsVzcDscfCg
JpJGCLXmBQkiYTLhabF5/gCUyAKF8jqO8vBTC5Dz7uJOOqS9aCJLh78AsVFRkXHl9/vHvXiwThUW
dMGugHlOEpeyYHEu5lmzJPmSm/c/xwLZq9T1VyhXWahY9gbMK7an80xrfY2UUxCtQiCpLcCuG2nI
0AIXi9RxFyM1noo5etZNVnyCqk83hgDjVSlcZPVlX3LSJBVNj5OP4cVaACp3cVNSuiGIJbREMuhu
1Ci+An0GXO3M7YhHLKFO2sfgV8tx+GU4bClOKqS6G/tkV1gwCMendnHl4UHPCR90f5rOGQhBsOso
3TsOdX7BTSFc7dnMGkK2xYMZpg6PrGxJN8oXenFa5vjacXWjtWVSpxkLy7Y9CUrY3lbGP63M3jXm
3Wl6v7zBrsGmGDdNzaI9ggeQiay2ptlLh7IW7XD7HjJU5wubq9K/lUzN4ziVPAezvdoEsPAHXTPE
0nKkN61vqWO1r39h2fN/gckR0qwZAYUMbULHSWfWtiVPdOYkrzAq2/cr4KrwYTgbsbXzAF5i0vjw
5kcro9VeKcxPh2tLwxDfiOGrAT5OyES5F2qHZTyHGpIccq+ePZH547yo+yOXQmhiUYMoyncP/H1p
DmTMEzwVsfXazybFAOR2hGXkMykdpc2joJRqjfQun2EqNDG1+Lhy7pFnBgZ9vZupA74YM3lsH3YN
ReM1FNXAttk4szxFYJnmbmJ76c/FuJXbKp4YpWnHL16vMmNK1lnI5h1xWsYbtn+z5mPWYtXUyV/O
pj4OTbx+egQyMLPZIfdQKBsIUiN0/ilL640965OHVa0NzY9DMR1/dcL15rqXNrVoMKyeDc9qcH9r
/74ieGVGpzYyzE/2WqXHLuxv1joPYJjZknVXljxgybhHd7er13JrgFpOL9xBTn2NL8HmMd+Fyitf
qcNznEfj/Y+JYsxWuqhUtgkDmQoHP8biMkNCwhDENqrXLzVpAZI8GGTjcgMtBy866XdsBQRrjg2Y
Lu1Aw7ULY3bdvZbWFT54G8QTjl7B2Ms08GQrAWVRfQbthwxKgARGaGt4kMLLtn4DNZ2GpFS2Tung
kPXqW4B2iE3ujXog29SUhbi/fiD7jOSqfq0bHelC46utXx3MuQS2bwWEvcHOTB7ushw98CFLs00y
ijhU0iEIY4bVIHrBHzEvY0IF0bALqYZ6/Qn6RMhS4XAvaI1e5EB9pHzC1Jn7p6IsDdyk37/K7ul1
h4iTrpguGPO0Zwfh49b7/93u6OHxHxBDVFrVuT9NiWKl6NT/eZhIGBtCtCzXNnqJ3bDD5Tz4rjBC
ZPLE8RRR4MvgKBNlx/SWyS47uOHM/7UrZ+MHduhubYb5HOn6HeGeB0rAV/56/7lBs8G1wlheAAtm
+jZIycMPKlraR4HWkciUEgGwFdzhV5iqXSiJhtFqS3VhCmJv2mgIvaEo9SyZ/MoSrotReI7nfvQC
fp86CB9uEmn537pFP7QBz1wZBONPLJgOks2wYaDgVOsYg0hI4j4bFGySNCIxuoFTyaQ78v0C8CVk
fsX/AUoLZSKLF0F54F+XOTr5/NnXh5cffeNZFVYjDkOVupTFcykKwh6ihdjuhXvl8CBPyZTMX4M2
8ffIJWvUj5awAq1U7oa9iIkBBJsYvF2eQct4OLBu/RmDJWwBYNR3ZKuyMNC9VVsYLY/Pi9iI3dKJ
K7lGvXq0tVx6YXsqXosnOfYN8MzgaKnWEYlQ/DT7UkSxAbAXqNINSRXpavc6aoaFy95S3dG8TzXI
J+24klj+pcErZN4aLbREliBh6mI5UhGdL+c29nzeBsfbsXEOzt1fSdBOaLg5BIl0ijekm/OCrWRg
+cfMNlD0oukvlY540LvECZTKz4k/lwhrQPqRlHXVfvSIw+FqwMojgL964UwP4i8xafUkykg8IUzf
EfjvTltMA62ENEn1wyaPiFGmKi/RSmS2tNrB7NjztNA6D7glOjmIg/hw92zydeMjvZncEFkX90Vd
uKHSZna5epdFDi3W9cFWQN5lE1SqLANYAPqk+H0VFPy2B53scDs3g5dCSPj6qHB0eNrbACYYKZlL
y+IX6cN/k1x9pNpRz7bJcx96nL79p8yQiHkZbavHqI4gHe8O9WNwTdv5j/QBSagbbJcpHN4cd+tm
wrkV7v7sfBrnOKHd7j83YhrueO1J+h30qsaDKKRPn1TQUgbGGYigmeR0UiORfhtIoNucWN5ackX/
ErnsqRXo9yRJAe7/4wBVqjS6utjUwa9iYN6hFld3aQ+OY6IoeYFqyz3mN3QYqcAYraS7oDO61Avc
8YQUV0vAJRJE3PUALLRM2IDzu9bgwLXymNW0tY1gcefR0G55NfO/sAXAizubfIOU/HUZ6WdzA9RS
zN5617B7k5y8Apeg4OGpKP8rIHgEwM+U+s096A3UV46tSzHS/CY2B5m7DnHy/WcjP5kq/U1k5qOL
0mc7b1JJTbFvMNOmv9dyBL8CvxaOngZee9KlqGXr/m98FJczLE69vG6w8kYWOumq68uSAFwLNscb
dWeJPyjyt547wUwZ3EfgpNve/ruitdHLBRDqk0qlqmbSNWzaUxN4BavKhM720r28AU6TvaqvFqvM
5F08robIphpoLuulxbMQwtf0JKntoEqF9k+bPa8R8rd1q1F3OxljdCKN4EWUyp7px5XfOgz0VLnt
bsoxgL66ajCy5X3SZqdrpx6hUF2+7UHj9sLF40ze/7QdCjnTZHheOU87Dxyl0ZOnghloGr0TRB9k
cBXnUsmu8Apbk6X89Bec/dvSzlXERfjTrMxmT6AAzEa4zbu/aJgafYM5ntyxsdWlfVF3UifE50+P
z5d6gHX+UU6aJAbhQgFp/MCzrJZj3Cp+H+Ead+mYQXQM7aZDpBSJIZ6ud1eowSAENk6HglWlWvjC
W/EdrEUrG5pMQBPeXPMebjK6Y/ATx2BF0jWK3C7R6JH72FvcUkUX8wdltt7AwCUWLCoMhYp4cr16
AfEFA9eyilB4eEO2cr3pW/KvyDrsVGU3ZhW+z6N+jv+GpTi9ttbIH4uenjXDQBvTX67Zm3SOMUUh
t6XTAQn6pYgJJSWuCvOBFCXoYNllwS2Ggx4Nftbrmt+9ktO/k0ziCdk+YfwoC32Bx60+M7klcBQL
7l4V84IhEqw6UzWQlCEp+wu71EHfJmSTEB/xIWudVY3fTj7eapNxS64IMl27q2lF1jyMtcGs97+F
12Ng25Y4xlFYDr07jLsDtBBHLTWXQ0HZggjIocdmuU9wmA7Tha/GZ5+cL9HB0RjHML8+U8xn6huR
pu0UMvkMxODfDgcHqPxDtynnRRuGi8CBupF6U0EeQ3DRe7QnYUAPVH2r/JEwDK/qrad4WaOWNRoH
ipJrnvrQVxm5My/fSvO5vKufK5SSN/B9XaL2MmfKjn+cFhlekebzrvwe+zWE1eXMGtaNYkh7KeXb
kDSbtfGC3N8h0F8tqITjBB5rhL4hYGyuGPc/OBM97g22IuUP4JbQ8fJDdqy5xU0AVya/8MqqtGO6
5kJsPVa2otcG4iCB2LrrNHPJFMfr8a2RPst8B3ABQqXVgG7qVI3fzCLx6sWZk/q8zAPoFTDPJ70M
PW3y6kVP69Cf1MmI7Ehjbbgcp9a9tp/YCWXygr1YVA0khXWLQLzjA/qpsHbw9R2UmGjNbIhgalRk
OIQMQHmA20hYA0NEETjH1pZr2OnDsbZH4pd+NzXyHg3eP7JN64AuZYLCur0DHqHqanC9yvLPCM+B
43KKEKRlW7JhpzxGXoIEVrvjFvnf7Xol7nyitbE09XxOy3Yfr1+JO27K70qP1acqsp+gU7hzj9WP
PUkVa6AgLvNaJ76AigjeWGxyR4d7ZaSWeW8zjSJhvwFyVQf1U5lDLQhKPtON1ETKfzwrjpaiU+Ph
V2AKRlKyxieIn+i6i6zA19dPT9S0aZFZvU1KbVvlGTdiBxBFvQ58pa4HfCUqN18JuJ9dvHuowrlr
G+gTVr7EV170paDH5XQBBrOQh03/Ly6P3yNkpscUrd3XDCl8YUvwvxxZtXG9WWE8lm5zKqBj+EoJ
83uNl/3sbTlI1+sBT/eulLiJTeRpx4unB95bhgpCwxW+4SUVffhWToRD9fwPXWOazwGTSjDhbarG
zeLbN4Sj1ninUUAF/Sh1alFsZDWvyFZUURhr3y6VGMQIJRxOOH+7fkyoNHlGqoxgzW1ucyPhdksv
taj7QgmEbei3+PP3zFqECqL2hrKnTQfuN1Bz6E+xaNxydj4MX6merHH5Z8HHrJssxUXPMQvoNGg4
I3kRWpCdjfK/6BCmW2WA5dvjVzcDq3TzD5sHc3P9DmiGXJh4RP6yEKN80DJHPSPOwvU7psWJo79n
TPsr7wIaRY4Bnah1M5vzch/GkhyHokFKrSt113kW2hJ/98JU4I7E4gP6WaB2nj+LNALCO5NZqlAC
9BbB4WDeuLZ/ic0tqbzrRYscFJBc2/rnxi0D2FuZGKk5H3HAsEJh23czujE1wj4BDsK1w0ghKo3+
j4xNnGVpkAlXp35/ZHMXWBbigrK1ch4faO4hQ7xF7H/d4AEt1cwaMH4Of+Also5YJnyjl6wuZSqo
8o+LeJNVlxqWnxnAO7mVZgCLLtuoPWgzHMp+eNqlpG1RWFS3I67+pBDHQxV/DUr2cOdk1Vj3l7de
n5i3NrZUAV5GeHcLJOQc2b7Y2hrJ4bX9Kf6N6o82UZE4VEWsNlAlDFVYwyO461QnDEgCW9ZxS54J
/kREu2evdd7pOm5qQhZIbVdbhRIZK8/vm1994Jf7L6N36ID41X6gnguDl1gQT0Jixf1ahc705EXx
saxT2K1bTuNU8iZvxtG3wQgq36Atp7EuMK6NMMoOFK6ZPg/rTDcOELZlLyfX6C+5VEI8lrybOQIU
5XTZn7oHjpXU736CyxlicgVU3LanwU7DyBWJd4cExbJL7w+JW8lmYqGZoxvMCpsCmZJiVdyyZ4Bk
DEPbacbwt/Z6IPt8iYiI6GS/7u7tmYNlGI38dPmwZs+klFu5VX0dYxRXocXBdBbDAfzrINz4S/ZJ
nAKbJCD9DDRZq+es0PtQnPeP/OYSANXBRnkT52FMVeApmPItwfEKqb2cnTL+/A2EiY/nTrkfzzBA
67L87YmoaraOgUvd/IjHwyx5NZYZL5FVPzmVdBwrhX6GtVdR6Y3N8q5D2PiTiRX704Gg7Sds9Dvv
zSezV5/1vTXKlNkw5G5LIooWANKeykl9TWc/Igq8YyY+kQVzi3KJhb6XynKybjl1dCG3+J+/gi0F
GhL4M6mino46UslFWoUybtPPzBsfeioT5WKB1SoDHTp7w9HzQFuvaTTCv60Wgxuqgv35dOrdiUPu
H3WMa0TFaHUp8ebNk5nBAKRiEc3L4G/rle45hpo1buCX3rhvhVW9sJ9m2eja7VxKs1atbatOyD3S
kxwiGaLhn9zOzM0uQDV31gr/jrdXgI+6xGcR9ylByPQFqJbXmiFei00vs0DOlmUHo0UFAVumVaav
cLhshXn+c0EYhOJabBuZPzc2p282pyLHo3n5wmVjOxY7FdaTJHzA1LbMTv56LsaC/nus58jIDIrh
MfLkFg0OeJfKKaxRXdbx/ISibkgxy/zN9hNF+qC7yXGR76mqT6S5eTjdpwt3oPxJ5g0Iu7cmE2js
SuXPB9W1xtkqce6svcai6G1GeFzXaWZOYc6gXKT3GCJa7eQ4Hf4RTr7SrgqyKAP1kuf8QNMea+b0
HRZHBLfJNlaNhMZtBpXSAqDtFCcGKz4223cFcnVGfeaERYKrVNYr9qYTaew8tthKjqJtcbkrXQVC
Kvtyae9GrnbBs/M1myh6rCPXpfQMlol+Zwl53+lR+gNBhqwNjPUpr9RjxTaJjsNrRajX8/vCYJA4
JpeMY0FSANn7ZAExHXo6tISkBRNF41nnQEWJXekE6tdcivTjBLC398Xpf3bHOLJP890SS+iITx0q
tFXLcLqaa9CWR7O34j232e2kPC6O0TzjkQH8CPFHVw2HqHKEVQz10KTlM+7SyD+G7oNT8sQJV9w8
mQKyZrtiGCnOV5jTvLpFmruRMuLq4e9zjM/Fh+x9JboTlxj34whLK0h3qXHWhNbl7QIynR/3hVva
b+NY+TnSn5PTIMk5ZiaktWBGzjRa2LTSkXGFqlzOOAvJJUNMWarYz7tCx5PLIyxQW8O03Zo/17N5
AT/xtmA4Ayg/YWFtxr8eq+2n34vMp1uXH10vFsT3rF9zaJhZBeUMUJjY8z2cgzq/1mgv7xfP31WP
EIG7pvGFJ3DFaksVIDqdvKT2fgKiSDou15nL+fyoRqDe5rzIj9dB4cYvOgefNQlwEiB1G2dcJmf6
WeUAcuUBsxVwu58JdalDJYF25hA9uSCaNmpthf21A0ce7bs/Xmho4ow3m6T+knTG4HN4p1jucWvD
X0ya7iffo59HpUy+7+2Bbr934fH/mI1ZI/Z4XZRJhetQe/ETaFOnAXNzGyAxF0M2DG+5fbEJNsal
L6Qzgi8U0EK9eRGfzD8AXU7wDrtiZLJLToYCP8bvewOruQRvuFo9id+C6sIjUaMtuol8F44xNQ7g
E2UvIoW/yZe+UMlBfAVZ4AC5DiD7DoOJJucp6xY0JvXbl4YMAmZESyitouwIkFP+PLml6WKsl0O6
KDe9UNOeMV9+KiXOeOiARCTLgNilpSqJULD40+KfVped6i+LNBFkYIJm/PCvPSZcX6awq8IQhO0s
uHEEUysbjDQLaDe+jluDBl2bbk/PsrW9Mh/3FIm9re65ks3j/NGtmKqeCFif3NHO8QktzR/ETK4E
VTkkCig0UxKtfnTTpP/S6N40KqqWU9yEhkmE6J8hvfDq+tRpTqmlplhjZ7JXyHbg9PJJ8991Mtno
vBhcKu+Ecs7EzIaC/Q0WlMdA/SWSaRufnOcsRPWXjWwrSm1DI4Ybo138RMFn6U5enU+s6GhwQt1O
UYVML+wP8wy11jMlHUGo8rdjco6PqkDkrWk50npZ9FXTWHDdRqFeeJqXwkreVgMTh+HJnP86JF0x
fPvZw1DXrzMVdf1bBFBn88w9ULreLtpQqMYdZetBDUQS+gZQP9NVXjLvpVQcRg2gTBcvThr3PfEp
AGfcQH9A5+5edK7jPEGeG0fxRLneTspsu74gq8to1/TpxTBxxDrzFJiitdAS9F6xCBs+RQnAomTP
esilQAsyFmvk+BoYqX/sqlqw3fr5WDKSLZv798jHJr8F8nAXMgIYWo79uMaTgiybEUx0eoTjh029
/5QtA4UUz8QhzXvM5rMtjDfqnzVr+8V7XGBaAYgiZORPQ9Ubpze0H9OPRxneUe91AL21dg37xpOd
kL9iR7mNh+2jHwaXEgq2eyyugafCLb5iEU1K5RZgUgkzqkKnTKsAMKG2/LLwqTxRQS4oNs5OSoaw
pgbIYR6EsEauS/yyMjEmbTfipZVZNHZ0/ZAnOmOICH2PTRnw/R4iTKbRCieZSzMs0D4vy3wtrxQf
yNLtaqW2SWI7AelDaP/zdM+dTJR7VrntvNWZGxQMJ//bcMsjGRI6fmEkVYl2Q093R/rO+ISq2VxP
6q5PRFzT90pUkPiXqwhoWZbgc4IDzt4bufSFTODyIUWSXVGltCZDsuvskd2lq9kUPVxJOOUjO6be
naoIb0K8o1gn7EzubIIhyJ7kbjr99mVWuf0PcnvtTSzQosDqw48A0+Uez//qTwKHnwQ6PimK1SUe
K3a0iX+JDtLBU1HC7kHdIQcxnRq/QE4QEoVaqUnU9IX6ZnP0pE3PfKyMr4HMKGmxCNsuitjvLzFq
Ap2CRuvaypOmnyWgl5xT8WuFVMcQgVgsy7g7jzd8m3BjRcvdgyv4g4akSmzspSQ7Fcyg5vb57tFP
DLoWvT9cFmMWyBsxWi+pQHQGgQ+Czc/YPrPpu94Z64nefoD0VfnbstIn2TftpJJWIX0YHsDkaGuZ
remjIR1PT4DnBS/3XCvKPT891lrytn7506VgOx91tuv27CF9M3hQqbiU7IbGRGVFc+kK3j5EiRZA
K9sl/HJ64YayZChpColS64+yLs9SuhP+TyDw1Qmi6j20DSVXA47wjBTPrD8kiELV5iyyWxd9r+Et
RhnBqlpdzFaq757vy4X5OCapm9hlEdZ8zoe9vqe+wSb6L37wSDKTOuzX9/XSAK7QSEC7V/o/9NaS
YmAN5rrkGovVjkuPG2tSYR7ELkkVWSsVBLJMM6XFIj465JZKvbFlUtmsOVmvRgmkwm4ujkwjUPqq
/bRSkWkivp8O7R1Aox3Ph2wsDb9TmL2gJa218fK1ojyd/NCCWCWr51Bv3IUI1q9C/aF7K9PhiaLa
iiQVhbYylFRP5aoO5ApcLmBLixA2EWwq3WwRQ6E9EziAiWTdEz5sE2HvU/ZUPX0ssCRCnhTDtaeN
PwLYYEoZwtZ/lRrUucdRN7QrUGDEtQZF6HYAou1MWgy7AjUDFfCIWneVIgm56KZBxzTQAsWY4CaV
9n0wdwHtZSSzKjDnskTGNrPYel00by6ZoXB4+8y5Ofok87/L34S9c9iCWMw+ExnIOItn5F3JyYjA
4EJavfbIEyotidnzBDlRv1Iu9NckuyU6UOpAPiopdtRN/twrnM4UKlk0662CdyFXT97jIDq3pLdk
1jP2VVkTWzvklz+qNW5u2Bri4rXcw2OU8hlU2260JSn6CPErXzxcJ+tuoKG9w9A3Zegg9YAetnni
Q/TSWiw58+Hn0WytNk9GsZGk7SUu7bZNswNf3ZzhTsHEAIVHwVPj7Rf1eOLlMnTWnWWTUn8lB1go
AtQGd4vx/rRBYklbimC4tgpS3pYsVdSJMRDLimnAxeXtPZ85/zt5nPgtzOW0+YbR7liqPrloTcEJ
P/bLkviq5/5CTZvznlSuulZmgX8go2hf7nDdUlkriUREFB07EeuPD+ytLxEGdHV0jhvyZjqyJLVd
6GJ87txDjZKVsV79pd3k/3cjzO5i01kX+IfNJptHTNXrqVRhEV+Btz45thkxR0mHa8pz88l4dkx+
fi/P2E7d48ySIacIIDyAgAizJZd7NnhEbFLU1aic5tdX3v4DYIMWxuajtXJ3P47dbnWMJxgS8a5e
kldb6DeYFusajRTw4XPSfYNZAKxZSIFWngDEU2UqlZui+XtnWa+covz/fkmuGpc0pMzf3iSdZ/wJ
+8BQTcfL1z+uGEBymirC+nHzW4l0Lj95E24BCrrqPpu34x+hcMR/D0zigtbFhcanXGTfOCXaHwao
V3EXLx0IaWkFfb94Bajz9BOJ8thzRSa+/lGk2laS7Zrhv53+aDSYygjhF8KHayFLhlgEtNfGzivt
BXNkpbKwAtNqF5Um1RlkZRU6gfEcur/wORupIghhRSK7jVzTE2hZktQ47legnKw0kxKO2UTnbO31
5CnNQ4MajrZb24vCBHtBpwFddczW1+LXQWttF+WnfKs2JdIHdqEP7c+mavCnDfgr7y4KuD6thmgC
/LlHPQge5LYc6yx+PJKdHVicrmCbMlPpmSIYKhx4X3mjsLZWulN3+godKnZ0SELy+/ZyNVdJfNfA
74QOV6X3AXu5S/bFG9JraoVPMnn+SFa5TWVwYybXIaWkKOuKl1L96Iu6A5ebSePdZqS+h6vN6gUX
l8HQB9UQaZK25WIVwXTckhFOD5XqJdSMaDcKto9F3wGgKccL6CxE11cvGAzwemUdDG3pC/n8YoDR
YfQEOREMYlBx8kwRSkeYil9So3ZpiOEIF+0dAIgmtKLnubXcAed4NfQsT7LSh52EF95Pl904f6Gx
WeG4qPSXgbHoZCy9BQ6wjXrqlEXe0EgXHqylit5SISGHKY/T1CawjvJE6T0vj7VO47cJimxmX1Dt
Z19Mbcd61MKVJ/1dGsukNrbs3zDjs5UmJYzoiE80IqnGGsnucObYRTCIZiOehyMTEHEJXyJ2ZZG0
YLZ8uOOaEZO0/sjpyxSZT4Fk8GzeWpsrbLEIWP3v+PTJvEuPfhWmkMMDdxd5HKacHOaoeC6ekG5a
YdrMdcc2DRP8bfTx8Ms4WrSuF0gOy7XbUfJvLAaqWFhhBYYtfCljisFEU+2L9KiBSbl8g05+rXaZ
ttk3vWgCGuwllSWj/AH0wXusnBGkqNESDZPYpdhYEKvppr7lGaxFmP1OKExBzpQH8mVs1HQScxHl
AeQuw8SmfdVgtcao8HzgIhy8M2SdVmfbqGO6g77pbe1w9Hx/W+BpCsBWIWfyH20MYQtLvCQqY1GA
mjDbWBz97PZfuk11xYQ+LvZEZaMksOnuWapwG3VWxPO/0RiZZB5G/31Ts7GXy1e7Ox4oG6Nu+Uk3
5zpFbQ1eGrPZ6sXLSHp+xpouH73b7Lng8CUlDgSxR6GgqHcMN3S13OM8ViRv6PhEZol4S6vzanUH
Pd81ZG9CpQhAf18eeETCpKx5w16cYoiQSRJ9/6R3dffmVPAVcQPIojHBuSba+hRjIxuZ3VUWIl4Z
/PtBmqcLHliMPnhwIIl/nda91R4k+kNSO57/EY/xTrh+D+UUZ/f+dDNoeM4TtrZ/b8uyS6cKNuMk
gAx3PHqGpNVKiSUVUf1+Eu+gUPF6fvMDNnaEqPjsbwacqxBQYICr60DHUxM7tLh+2YQohdAa/H53
JH5xZIvmrkPugXG8Ieacu8W8rBx3TwdmnAEJwpTluzDsFYsghQMeJrkuXntlBtfXmF1pH+hzWA3g
70/x2vjeSP6NxqzJJC5dlamka5RaVtoe2FUqySKdu1NYBKFJUs8Rbfr2cfBSlwpYV6vMLm1vpJim
//SnybbM6QN+vXJ6Fblon3gXpsuT11e7GH9dO/oxe03wJI8iQ3AuS2Y/2nbONrTabsqwuGdfZhSy
W9Ha1o1E6sJJUb9lnir5DesXI1PX9C3ZPPiD8tcXdQ8SVD200ErCpSfIGtKjkXpW4RDeM6pQsYuc
1C/d9iSUeshTbOYWbhNhD1IgfoF9touTvzBZpeU+2KzxXgut7YkAdWjs55rtI2C5lVDcGdVYvOhm
RQE9Tgeyoa8qm3OA8svK+T+Bx6sNiOQOAScwD2alHb6SaLnwnw9DHRMQ4jb4NMZZIKYKBuD8iaJD
Gu5NlhIa8IAs6Pm87MvrVfb8eufI8DXseCjPL2goK0ecP1K2AtSfOX3jGWS6jPzQSbCXGVXO090P
dhY91/T72QvivpP+yr0oICm1b/4828aqwDSKuNm3LH2GtXEIMfpWwkN/qOydt4mARCN2QSHlJr9Z
maGPbhQVDblVu5pOtvkXc/YklO55exdMfHwH1KJrp81JCA+P/kIcn6NNZrc6jaug4JRQBz0IefvP
iwhXP1cm1vjkcv3P+aSNJdoFG9Qg0tsD7wrJgr2f7EerauEDyZu5WpqdcnKhm7ZY8CWBdxfJTXBI
EFgOxYsJWMNzLx1v7QHj6TY5lIrcn0Uts5YBwx1ESTI26wcts2ohRVrwYDyanYSGQwLiT6m/vif/
tbhwsiYNthfJw4P8MiWdIerrEH685g15rg+Yek/K51b+WlpcRljxJav+DjHWa6dLp9Ewy/x/w/1T
iluF4OPu5DNAm6dIUnrW5Ktf4Mt6gBPK5WBSyUZT5HWNZt9jgB2QO9YbS5m7cADFkt6bZHB+Ct+D
MpMeOcS30gJXAvrc260RBvLuEwFb+e6hS+UAspnIeZPPa3RKYrMzir+Rs7sWL4gy5Ask9abvpJw5
MgpeS7c58fih6Ondblkdo0+hFG79QF1Vi24Xd0ZFpoafhcM28Jue0+R+gQ5wnQic1RgSvGGGny/N
M6p3KSY7RKia83b4fitSbuSNdi3tmM73NvNWnQPJhxwavCiVvkP9Mj5J5hB43H6a62eLY5dOhwN+
zVCQVjxokw4VNo3SIVsqWHmEKvXtKk+cDtKLGL+4A5OOwSaFOqRWH1NH/Xls0pjSUEQfqrsytLFP
xwT6vs3bFy8lo/u91xGXAGg1xxBRwhy2FxN+h2FbqztK82930rqh+TXCCuEelLU0uYceAZnIsvyL
9RNhLHpa4Yye6wXuPytAPXoOZwQQzKfc9F+QgT2vpoPAmg+7qJXUW8NIpPOgGQ4UwQgDmCu2UxGK
sregMbwADHzI/fYt9K+MVwDkNkPibMM4dQgj6cn2lhZSoJ94bwYkmzd5JGmNvq/8PULD5kmAGIPu
Q0k5HXVIOsS0Qs67PXbXarDDhYjOTMphLv8q7uQ3M0S3mIi5zPFsC7hlF/DV/7Ylsfu6IS2IGS2U
4nMl70pjyzi1Dy3dRHcp90ieCVUklk2YjyhMW60Z+pD2NDOn0qSH9jgSQ4rhfE5Bsuxnkl1aae0n
81mAYN0cA1+smyn74UNG+c4yLMo1N85w89R1/6Z097eim+OBInWu/vZ8joWzYkjara9cH4teldLr
svJxt4Q3DhHVrQuTzxCbkYHerRcE+vhu23zpPDSI65EyCJANi4zD3/egRdKTV9le5HKwX1eBFJj+
GNR6wJl7xQNlqJJLPUbqFLExtW2su0A5Xa3KRcJB/gj62hdz2kgkzuv5I3YyH39JdIl00BomQjE8
/FFD04EJ5emrtnNohA9ucPG4HY1IdhPDqHa6Lx7NlA8ffH4uvonbwoAVMn6yvVA3q6bpw6DtJKbk
AgBSwbmleqEJuL1QYHC5QMyXFff1XYQw57yV4TdCR99GylC/O17hObW3JiJ0xkJzM3bBTN7M5g4r
HqDK55LHPQdyYYDvrziPuY1ktYVDY62zq1NKie6pGjn1MnD458qSaW5yX3rpGN7aQp/AjPjnNKH1
hrd1MX+L6VhauC13IKDidjgRRO4FBqO97lGGauuoLHhXLoFla2P1u1g2mJhW4IK6t4/25DaeHcMx
MPm7c8ePF7hNd/rnLgvgmDVa/R01Zfb5779SIlLh/dWNjISMLbiYEosKoX9cmfaKghI8gmNYI5Ux
tlpDxlN66KZwStKyW6Asvyqn8fpoSUcJ7lzr/I4T7txmiBRzpca5hEZzQfLG40vcWVwufHMiX4tV
tA3Z5Mh1vvvUPEFrYelB+XBrK3FBw4vyPmmOTNq9NETFLJj0ypye8bR6AJi/e8wU27ZA8q3oyQaa
oRBbi/CIbDJpee4PJ6hKQ7n3aslMWaDABTlQqKz3GVeUuBr0dQ6aC6Rr5lzv/fZl611W/524B4fH
f/YcjBSMQZaa5ShRuM0OZIJDbtxqKAcLMNsWy7wKAsK7VVTGBT1Kw7lvR7o/FrlLJGOOxHB6DJWk
j4k1RwZTrC5x4k0Ef1BwOe43eKz3R+V7srv3qgVjfTjG7+gMEDeQDZhAlUAqgzA1FqVB1ixySslK
ZiA9/8ht0IPXAdlyeq3+Najqi9Lb+Xo4TzZWhbDQjFRkpz8bhE7RXPpW2niyN4vdP4liqN8BKiHb
l1bLDRgycemvtBfSlfpbhcqEle9aSRebyjuKEBIekeLj2qWexCfTw5kBoKAcNVxdiUv++3KRjumy
MFCVCMmMdGkXrfMtv85p1vf/mPtXq9Iu8KVMvMiZqYD/evvMR9cVyXYkngncU1oGn6eUeCID4i6i
jBF5UVybFa76WExHn1nkzYonJGF7trvzidG1GptybpFQ2gorPy6gOwXLF388BklCh46veykKsZ3n
vgkxh9HANJXqjGgucCbzUctS1QDFlmsm+DsBehOCWTkJ0zvYOUakRrj/8ApGEezZNHLX4nxspclo
QWjd+U5jJXvK01IeDl2SZrXazn46IBa6h8iG06ry+QKwvE163l8fRlwMY1RdTEKz8c7z/HIRovRJ
gjP2L0lR4gO1ByBgM95VX/sVgm3THZPTOE7k9fW4ycwcMsltrop+Xrt/W+d1HUKBkMSPHUkYuTa7
gQQ4XKVBW+G62p8ObTr5XjtqyWEZI5xZyFTwBqFT00rRsmok7eiF+jiCamWResI9x+pPtH05fzaC
z+ij7VFC68ejYdPoBGeaEQKfcGZqDunm5O0Z/reyC++foZWu5kYuJnu0AegSW7mORdfQ9s2TQTZF
kTOxliD1Df8ihGsboEifEMN2AuAkOE9lxLYMcd1vuzmMOp4AbzBkgIsd9CxW8E/VltiPwHmfvYoD
Fnh+wFeywGBllJBevT7KfwutLpeNvfchRxZWuDMYBUUpwh7VqqEONzzebVQvVILNsYGsEV/tRXVl
CQ2H5y6vw/ZAY3lhh5N5FFjlVm5pNSDUEyrUH04YiRfZzsuSFFBw+h3WSRBUdS16hIQn9cjH4lGW
GLBF4m1OOBqX8AuhE5EppzvJ+0zHxjKXFYFXOc8+m14Vbsi6jeUqMNQXZdnW+cUhBJ9EwILW73PC
p9vf6N5TRZUN2WJh3e+Ik2+ohkhXhzu53k8Tx+Gvq4VD22W7fxq4eiFf2SZZj3MfgN5w5XJZrxG3
UR2cqiIJePRsMf945rLQKEugK/RS1yo3WH/i9KC2RLmjPs9qbyQpI4K5b92GeYZvEIwVmyNwTJoD
9iWvpNQu1oJRfmbTDWjJ2pJcDy01YzZ7MrPJeUQykrKipz1aWe38Abwd8G/HdndjA2atMFwzFn4K
7DGaXciNFJ0k6Z6Rt8tdxVPKQTgmj8kVIMAW83UIzfXS2/lJPxiAkpwUK5WVZ9Otdlz2GBedrgJA
CYPHqI581XenoBdCwavCWoHin0v45do6R8+Whbwd3wjy/9vZNAqtT02Ni2L1WAjiygeYpPcj+fLj
UGtOiwuwi3VAM3FsvD5CrN7MRqeg5npyJVSrOVvkQ0PDPyM8KRZ/HIFIxxb8mt0zTcbw90fhv90/
SACHmEIOSF6QC2c1r+0HK12Zg6SKfupE68Cr/C0d+Blr3pchoU5YpSLB33Vu+EB6FxR0hmpB9bhM
UfBaGAA0QBtg4bu2Uz4YNbpQnGOO7X5GeSdWjMF8j7Tc5yQuUC5HAdEvUC8tPvB54nXgMPchOpIA
tzPNuu5ioe0f7yAafl9zV30YvrnbZhGEuMGhO/4k2FfZFzuBmIjkI3zKd9qV58zURrM0/hH4XWrS
5G1L8ImFu1wMN3rdK0WozsJmfFIRt16c4621N8n3DYMAXww2Gi4PilYMHMbgOV54Qb4gfPJQ6Msp
RAB7r0QhpghU5dxELEYyK0qTcRiNGHWxecHiZtO3n3h7vgl2FWsddTcAF1m0yQRgmguJq256wavi
/IRHato/Cxqsf570SEiYyhXUsFa46IWFbmp2roRNr8rLnf/MsXHv8+zB9W9WQwDHXfzZiOKKCS2E
v0ZeZTrlGkpI42TScMxwxrVnRbNUOhK2hd2K/tVqwtcs1U4fa+56vO7ZibbbyGrnpjblMhLz16+S
tDc/YpMLqPJ5ljXxhomYGYFEPD5Dkd6Yn5aelB4YrbWx9RpN7QRb7U2iNHUt1azyYJIsuGDRtpr7
NiniV28Ax/GKK2zrRpdUHSlVqKdQYeBp+ej7aQsN9Ey78nNTWsepyr84YOudg3uBf5ykgNFiUpJU
fMrkTDX+wauNZKHOSuIfw8CBq+WCZ5C/nSG5nIfamQYyLBfjXqoWsIfoXFsCXafSvqraG3sb8x8s
p7KfoRl2QMz1MivXB3A1YwFAHVr64tjvfOEXQ1tUcGAnFS4tpuyvJEtsciY/mtXX4WK12dVAAglU
rGSs4TeEKQvnJP8Kzizhiz1t3+bYVUaGh6xUtDP3VL4M0NHwx8WiQqJpVLVHAXa2+WlHn6EFrsmW
cyiUsdjMnEdShkXlr65KA7MkA+O932RZgj34M5Iy40TPbojSQLV4CakFddeQBqOKR/Jkm+ZcoOVe
9UWmsJbkLvBr6rO54nc9X1JNo56wVadX4akb679TIbxtfWOEo9B84hKlmRxw1hjb6svyLTLShANi
8cAfemlQrtBPwreFw8k2nXD/iBQUZ+3CJcgo3j9ukJ6KCh8P3tzELO35sYcW4gvuJtQYN5WZsMCQ
WWs681+/xn3PpxvN4yOBtLbkARE1g722AP1qr8Q6XgcCx4naMv50IznNnDlr8EWnUBYKdVBE624h
oHVxzE9O0hFBZW6srkh//z8T3WKSRLy6NJSl2dsvjcFzuPF07+PDhi3uHeCZQ5icZNNJjHPfoQo1
rBCAc991OiM4WJxDCVJ49O83sXwWqxZuLzM0JVQPofyqzMlJUoQtfFRACjjI4sdYMqLwmq/4EqJ+
lTNPpN3KewFoLnVx76ZoZjDREmeTV+7dmYYIRmDybRR4NxxTDe4Le0GNdx9b56yhWmXoC7mRxzXx
8J+lUSo2ys9mt7DxjNR7tX+bwxlfKttPPMtxG0qO/8hi2yB9HR1HrRjsIjV98CQ50Q2tRPyU8Ynk
gRigILiuizq0KvYtu+IJ2X2VpXrtizYY6moMZ2lqTUWirVgFuyQZjlhXd34kGbG8yRtkZ9LsSC7c
efCiuAyGB68BE7YyjgmVgfpAelQy2hgQbuveDTmH5pXsvwdDqll5CJTEwU2rLkseRSmZ/GQ8fnV+
vONsV7HaNx45NrEE1Y/nLs5VnyH8absX3nLAEpgTEk6TgzWmcwCAEOpnUba6bdHeYy6Obr3pZXZK
evsWKbSe47adFqDRnDzxoxeDrmJ9wZPeVNFJQ3LHVE6i/IZLt2X6zJ3ljvoYnaRv7+ho/R6TS3oo
ujDK8dHpZrpDCTSEZZpw8PJIGNNwqIgi4W4Z5Rynod00G5zWxQsxDEN/CJHRuon8Br9akEvZjTcw
cWMyHTw9Zy9n0fU0xl2KKQuSDlHng/fP/YRa/s0Tkgcq0FHh4BArVvq5FMOTd3Bq9SKOh0s8LvHC
QWq74Gm9RGEesL1/CcazXzAogKiTY9XmvWoqV57grBSr80ZcqX6gUAxEwmtdJxvyG5SvcPdY1tT3
HBCD3ZNik7t01R7PxFAy3eSMWgLSg3fngDYfH2jtLQRPpNWMghkIWX+CzaaP5FxEn3Y1M2o/95SQ
5DYo2fVIzUZC+ROtml0M5gVyBHUlJs0obCb8KHuFM7mIGhZtggu3+VkFXErzHI/TDikOetPrRRE9
Gsc4tVqzobhPMBBuOH21+udpNisFjFfS+TzWOzvsjS+fB9S03IJoq9yACcJeXCGZdfn4yPxZc14V
E7tlvGxDKR3v54ILJAlc9P/dpVy2mUvY4rGUXC8aFEaeZDVI6dIB9ITB45mqEyIu1Y8hEwAGjn4q
XPG5EKFEOJ59CWfQQ8t90iOu/yIAuWGEB+iSqKOLoHPgL3UGqjCVt6CHxZdkTDuG0VNz4m/hlsIS
7fUVTRjIF2tHolXST1CtI6TswthUrXdv+jTffB/s6yoOYcNA1g6ittxKqCRa0A05MEjIvNloeG63
AQ569+7z1MJOWw4t1cBPjCyqU5ycOSEY22WxOJFc686CMDSwMi4xJLhyx/lXksU9v4mQX/3eJ0FO
1j2kxIABXdACjGQolo8g0AoUQlP2krLYpU0ph5uApdDMwNVUr8A2RBz9MnB5V5TTOgPkihvg5n+l
ZsyhiHvslH2ZcpiWQKkNEqO6GHbtSpaWIehbM6QQagCA82lhq/ezP3VrrBhNeB1nNyhuU/nOjUcM
hU3Si0wECYuc/aOnIZ10+L+7xqylSsItYJgBE81GLq2E7NfkB9y9ctsfZ6SSIfX2X8ClNnVMWQGH
gRbES03txajcoSoNX1otCTz0tsu5sOWTTVImF4yieX2D0uH14fR3xJURMpl3UrHAcc4sXNPGmdCu
nGM2Hwof8lFckmDBkBCqRx4G8fwDVlZqgl0fLsU9S2E9grA2LW8y4+y58LuAsgCDxb3GXtxFbSsR
spqnlBLiHv7p5u7IGVTqyQ/3D0VuqYtB1CMpvDokvE+K8SAuGDvEn0HXg7wShaUdjkg+eRvcrCkP
7zcmuh63AlSX6e2tR/IJnKbnPjIjuCorfbyaJgyaTmwwPZ4vLCM6rsuce9G9fbQ3x0ul0ipceLT1
wuEmBopLOCoGBhw2N1USX4xWfG+U5d+aMQk2rwMI5jpURQ9ZW2CcIf6qlTHZa4o5sStBWZaZSbEj
hWY/Jz43IbNYREZDRtm4Pl/CLEX7Y2yKprln2dzze5xNxoMusMXmXuJnby7Fi8zOTUzlVwjulMdL
WcXoLU2Bg/n/QsR12gXKdmvTop81KBvdSObELB8GQ6kkmtQC50L4ACIbOPM7LHoJJnP+H15Z6DMx
iQvP2SeNlRlsWnrmxJqPr8ZJ4IlRKzSoS1Zh6Og0yKgL0arHhDbNTgiRg1rAYk0VUhsk449H6vxv
cZe+/wSAG9znIXZOdXM7TiFmKa3DQHuJUF+ljEF0O3c78OEwnN8q6ew4ta7vn7UtQ8yGacicHVOV
TRfWoPHNuOxRDx9Q5GkR1YNpMc/yudBmZIVqX77yKHa4HOrEPj5VOK8vHzDRCEPGc79wIOE+Oj1p
cLMv+tJzccPy78QV6PmOYIz6/xnj2ujUyRezeqlkBw4B9dddtXCnaJVDYgDNEXfZJPQ1fQpOcFhs
azukC2Yg9i9AxP5YJzxlD9ISYdiqrsnvi8mcIzTMQ+nTsfRVJ+ekGv8W39mpZRPoSMxE2QQBv2uN
Eq5ItG06GQRinB8DjZYm70sDzga4ybTfCyhUUutO2qt+2HnO0AjKA78cgnxZpUv6fhvH+1CDe1rZ
MdYg5zeS8IlSbe+3+rXoxAM0HJz6XrCmTJLpO1/tXceBQj7PCnhrzZvgrBO3WTWvKrXY5LglAtLF
3deeTtZ91Qqa+QpQ4YijGiuPnqlOa+hNVmZIJZQi5/fGOjqAHanzsjgBHzh67zgieASd99+UT/CF
p1h/1fkQoEEwKdHnp4hj6xnH1IXoGJrMwG4HdJk+s5LIeqIszatRb8a/5gDm6hm3Ghf+lKYVqFPN
YG2v7uEoR+OSAzKHz/3Lw0OnjrPTRK7slZ7A+37epQ1tzMUQpp5QVhDlQoDZf4X9zk22rowr3lFJ
ldTARQ016Cdli/0GssmO5QEMJAsmTAr+qFek2Zcivy4cQMYxOxCSa/tRFQ2yXahpkYUoq6TeCUK7
55u0W6KesuDKjmGHdye9PTnnuldvy93sBu6PHiY5tsCWLoYAaqU93ctICL9+Gk1/SXrlMsYhO/n8
uSfSKABB8EVc6L22rchCc7jPa64Limvl3T1AXoDtDCb7N6/cetMMxBrhMd0rljQdWr64s8/KKDHa
czrP6moAghyjMI0f0FnLSugDTi+/zg4Bno5L+1U5wzL7yFoVhjL6MIEX35iFAH4oIhydzQ+WjTSN
knPLrvHBFW3BCAeXuvECnr1GA9YmZZscgWV97GXqxuk696e4db5Jd/TUJyeGP9CZO4jFro2wyqf4
AatHqXhPfZ8gDwPYcyh92j527xw4m7Qx/iWfT2ewqv8RCBaBX7xAov6gBO/ajS/iKCqE04YKTRfW
kPg2Krho3y8+HGU1ABLfNLCzpyNwR80jKMJL63fej30eG65HRph3SOwH02nOAbwTko/qEN/sJHrO
wQzPOOeXJvx8lxzbdPqQS9fbEUz3BDqoOOlIVzL3d7uO4K+WsgTsrUwLqxtDdyU9g3Z14rCuL2be
Tg0evpr3mx17+8Gvf71pMuDqSSlf8e5tURWTxUgQ5k5Fq7QH5QMDVsE+/r1Lp9T1i8izGejCw3rR
BLmgdKutiNOTus38ChxyrKPcu5PT6bkVlEc65XY4O+KV/TcmPpxRzknuL4fM3tHr/gkV9ekT3IhC
zr9T7BsdnheYwBZLcSMUnK41RtrohMAAEWf4W/ayNbtlFXlHAYEdP+ebN/z9D04DJZ86IGYDL58f
WwSRS+PQEYGdfFQsBNGqfXirNZjICerzvCPwdYIjaPngKKYznYEKa1OXJN77EMtjL0eWKuuOsxqq
SdQVBWk8dX5FWo/NJbRuSorAyH5KHeIuuIEUMxgYUlLR/NPrHdqdHKVhIQNWwQ6vJPdDgb625UDz
HGBpHd0OKJvxj1yc8kR25mnoYn+BoWvsDE5+WFvWgM91leFdaqMA7SIN1Q4BAMM6l7n0H2KUDc1+
7p0qJn28E9RAjs/pLcsruC8ZK2cZyc6/R2hOmgO4n9FLhJgQxyfJckVxRdl5PQ0ZU+9zz/wvyhyw
fgGnwfyhNmfdRh306E/CuD/z5HBfr7HxTQypmDyighFq6kKpWoeXldwauWgsV19FYkktKpJ0qRGD
46vBvyecZqR8xkm3a8PB3O0klGhiM7phHP9ZdiQfqb317iet/HxpsWx4pLPVtNKEKR6Iy75JfA2U
0heTUH9IMBqRiZODLD4c/evzEICUFgwqqlnBpp1oJrOJUDYafC7q/oUE8YMOXorHD+RXRE/Aj0N2
51uOcdNTeRefFtt+8BRLNpnQL/olDgJkn9YpJgNqs9KXcpJw+8u4xj5dGdX4S7129PtXJtaECUj1
txe/sk0eMysg9NvrPXRrO64gy3w/2/TjfOGnqG8dCufMiUZ6kyK5mnPZd93Mb9QxQgqTkiq4ujCP
RB10L2J+OV6hfcdYWzVM+U49I7pxqYQVa2LULC9gkry7F7GKHiQW79ht5A5kzGcU+UyZuU3xBJ/i
cDSGdlpKQCF/fznDCHkxlixH/nlHaItlL5WMHQdh0mEJA1b024s4GeDdKKQjBjKdzeLJpR0S00Kb
jN9Ln4ZLCwJ4RF/aFs7m9505aT2YfTYOGusQ+pC3Vmx/PH/mG0Q1lnd/TZt2VEVnwZgQs1WO93Dj
PcS0hwpJtswnyroy2BeMxTVjhi2h9mrsf9uCzSip+D5Rjb3npMEBpJDA9I1k3wL27rTowPgnXYMg
0dTk8tHFdgNTB3n01w2OTMLx30NQFey2kMjkO4ZJQVs/s7SbJSmmRF8ObHWIUucj+B89R/zaYkqQ
K9mAfLWQtT1blowiOzQ39ZNT+qqUkgBv1TFLLV8NBSGA+D5xx3WXgCwRyCK9FvXCsRkysicTJj/K
hsTq4GfDM6i6Ignc8N3o/R9FC2bbzbAo6sUdssbtWVMuvC5xhaFTqPkjyPLMdfR56DPr4MMe1ftX
chIqBq8Yb7XZnyAGE/B8BEGMg+hKWHb/HHKwX8F64p5q9gI5jJ/EvDLlb/bqBIsrADqGM7ArrKrG
RU1gZJaVmY+25Iw+vkvyb6Fo89W3gsxYwxR5CJzIy6mUSRtRCEb4W+Kd+EsG+YnluIwKnZ0By2KH
SVO+hc1SV72bPsNPgwMiyTc35MFjVjZNZGM6hL4PFR+eOaJxlIACWWFBonDr9MILOpFlmH9aTSNz
+7lw+UPFOzz2q6qOfsEb3hMU8FEsXiQX6y8kO61yLTXI0JZbXPz1J3TQnEPaRmYh9ZWBk3Gc5yKn
fDSLMXDJaKQyppC7YExkGY7fIdGHikdGJ9grcS3BkEi3APcqoT9DpAp8SDMF9zLEEDE/fScLyiQ5
yEdReWq6vdWFXYG2Yvmar4foxHAgjz7wI9uU62bniubOtOz+EzDBtln3teYSuFx6bnHPaNcB+5lx
ShA90D0uk967Szq5u+qfLWBER4oQkW4yQ2E8kHXEY6/NHaDJ6WbA99WrlLHWezmSQfFzIIHQwG+h
FDTNEk8QWFU9fxBPG5dmgE7PY7ibsqjbclC4y254Fkz0wyWMzeqzRZnLq0TaUOamo04E4wXW2em1
v4OpWLA2o4jc5PX1gMslTF+bwBZ2yjdrl4maVkoB8/+nLIE32iTb4r6Qpu4ab5DZnz8jUwVx3ste
vlVMlbb86Re9vWKgHD7n9gBquW6gdEMf22LVtdMkCxA0zUBDhFk8UsOVz24u9iMycB/cbQxrzMhm
Aob3ewXfYjqME9mF1CWeRKoYhVTpX5daXSM4xv+v0asWwd++cpeKrrln/KGcVBRx+xwZ3JIpEqVH
RnJh4t4kgDot7Whuh2kv37iqijZ4wAMIjfSR4O2mD4BhG5H6NDXBFcrTPLcHnpKgmpfvf/RRnYzY
0n/DG+7xvCS2WNSQ/PUY6CJQOgyZAbDZnwWGfMX7FKlO8nQul7gCq6/aAa/8bg8zTUoCSkf6yEJl
1uAISTn7z+nx7RNFUPFVCbRg1fdBSJkP/p0KvSE1Y7pWlwVGZJRqz87Npez/EDNIAKbArDzYxFSc
aEKskOuZJVtq3lPC5R6As91D+c2zR+EeDq12EVb2DKmWo1//Z/mGUtPezBkB/L0EwRzqCXUZ0Agy
i0oUCJ/ZUeCbmg7OHATSRR1NWFKS2pImYOY/vl40ncuiY2YHu3eb2iD61UhARZRJql6b6/LBNcwC
gOqF0bF9N6AuBqh+LBgvxN7HpvuWu1s/G0WkTiwwAmYPfZC3MwGcgQgF+uYFLkOt55QEfwoGMiM/
OeQIUG0lz9/zVEvLg/en2Acf0A+Wca8NqFvfGyExG3zsci3LzZmhvoPXrfPSp1EksrgGGaogGni6
Z/GR2v9AOwIVLbEXbMG1jsEjBG1mvLbcsixwjQybhFIZMxcZ4yfsfgCJjUiC4J8RrhgmCqAe6I60
Ene9FUlwf6uxbB1opZ9+VJAbl8+p7l+b7FkszhOFawHcTQq0ba/YYU7tLdZS12C+PF+yWhEthmA6
ZDAYO7d5eggy38AmbGo0u12lYoNXzLrTDehMfOpHZajYa6I72GX7NnAt9hPU1zi3qySUa/cad3tw
O9fNFmLyEV6TTirl1KWi2CMKXcWfpfWFEmdDfzXKB7bLDy6XYjA3VpXzKR4q3P/rNSMEEP59oVVQ
1tZIKwELbcKsKhp3qjrWLxeVgU4iXIy3dga+1b5G0dfRRkkxlaOZ/LPonMvfrEfyVvdeuGlaI+nf
jQmAiGGrVxhbqcsGijl0kWDATIm1GNsr6erzJTaQxgOiHYFLox4RFospjOWKsupUwpvDEqj+QgNu
85qOJOmMQjuSZgkFNvRjASxe1xFAz2AMcMsXum+pIeKfpRjVBmk1GL+/zML/KFSUihrQBN88vil5
qz85mxNtJQsHjHNcJq+2aAxXwdVfJacwmlbQkWpnB4xpaPNGBMZgzmLwmoKvznygMeIQ/PVNvcJN
RFwapUviBwYC4vl4QnBMJIWCWdGVOSi5Cq4OLh7WK5V9xSieDVm30Ywqs86UMUGyEAe2yV9cEfkV
+xG+rwl0gqSFd/sxtLq94TTvcryf0lBlMtMsJx9UtO7Fv4lXJt2uc6ENA3LXXSwhgfsnD665ZySC
+WnFUwV4kA0qErQfL1Ye9vUNPwLfHorQYey8vBKhuBMsXammX50LKBn8yekgmJpgpAUQwd+z6q/+
BmQZZDkvMveBG2OYnocCicnM5yAyqOvvNPt7LTeCfplUA5kDVpPq2923UqrFXuY9Oar8+BgFe1qi
OlAup+rb4sKmMOgM5Wn9bnPiOGshwL1GgsTxMbwyIgNqYUx2PUR3aedNo/vWHVNJ7r+TqjgTfWfJ
HHWBh2+SsaMq85flRHLz6Erfkd91Q7m+oOJLJAzaL/rFYWrPObjW4na1148WZf2+npHefGobeMXY
9TVebfA/NmJfRvlAdMSNUo+ToSDoVSI+4WC+y6f6WWiHHdlNUcvNGMujqqPhb4xILzff8dvtJw3Z
PygmzrsStQwly8T0PKJtDA4h3Dl66NZ1miuGMQc7tJtoigguNPdEm6fJtTacrbl9uKXWzEKgzn3s
G6M0lK2U8ItbXzb7IiuUnfgUAC6Ft9PmYPkaQRWJuwhiPNfQWkfL/3vQrr+CgOwdaMGJfYfII18b
VdYTcm0Eq/u16rVCaFCIobSKal8/q1r6AnvgLc6+8G6DG6onKyZDn/OS8yU6HIDL4eoSfA1C3/os
Sa31dEX4AXsH4JB58aEo00yJWdHiJG5BeqK/S6wTObdap6GmAijL/cwaP/SA/JAVxnCPVd48re19
/67cGDlAmi8qk18wji0+/PRkb7TdgDRxNLgYR8uPAaHBJi7lWcPPhOOHxs5zeCLn1XgTc+M978w+
Ugo4jqeFl9/eLdJOs+p1gQYZypFVuT6Rp//Wp2z8Dr9n6uPrQDPRBkM5/2khseRajlUosCrYxv/N
rro6cP8ZCS6InsyAugJ1q3fIB8xnw/dUmlFqk19HZyvu9ueEVWsaUjIzWIqOi55ViZGXN2Mpd7jm
IIEi+7DI/i/oWJAOisoI2fw8WpyPn/+k+HolCBazeIvigrbso90LxEvLVD5N2sCQRNaesWz48q06
f6eo6sRtXWtXxAwJe9uPIwCieLl/VOcWDBitDD97+QZMpKHrWkLsdW1vW/KIDSwii9R7w5Jzz3qz
rd5FgOHAhd+iJHICsy19gekX78oXYZNxvCD8wEahH0SSkRLuXvl8i9+5V/uQ4JJ+FGJV1d7eQIx2
trn2Bu1bc27U3TVAB9YusZrXnYZCh4ic19YukHSuONL7cev+cc71Cut7OxJlQqP1U1Tu708S3xtI
MpWWZEFv437dzmmLpstGozk2bGcFv21Mb027hUiH21R+bsUcNT+De2CCKHIq6HvE1geppwZa6E3+
664D1h9RWl7qXbREJ41f8edzfcaiuRS4YbeKouCErdJ5MWhPpfXTvirdUSc4e9JNkto69XtsmOjB
s7Yohfalr0QoDjVf1qtFTePrILrSfvAAcpVvgeyQIi3Z3bXd2KDPd/OMAECS6LCkdL5gxCrTTlPE
jBRgXMErLfLa6I85aI+/Zpky1ErtkJzx9MfncWjqAQX2kPCo9s+YAeRkDtEWWlQJBZFZXMk1yyOf
D69Z29V+gbNLuu2Eef7w+MXfBHcqEatmpjuGRELtme96zJTEArE3X7Lnjh1JNhrp8e+hxZLQ7hVz
iEDZB/Vn9KLn4Ag08Vhx0RmlbwKNTAJ7a74Zq/OLUaAlWXI0A6EUN67Xl2p11kvvD+IU+F6lE4+M
Tw+1zq8DI6O8XpM9HXvbVupyJ623V6uEAWx0dP/dgVe5A6Cr1fZMn7HIZ63es/V0DetpS/Y4L309
J/sj4H/oVtdkWB37S+37jr1gdc3R+TAm0GBsULh+RvCPtF23MCtWlX69sldG5FFIT1JuXiqrk6N8
1gfuxC0NLDGHfncmgBOO1N+geckgiLmiG6BGSiVYhC5c/il73XlT9ebPwWQEQyrMKHInmGFjCMFl
YvfCBfhr3TCKVOaTs/oq4fOgZD8amVQK4pJGkiSEfPI1kGAovRm4OrRwwkvR8cjptQ2Wn/Bd5f/V
xDXxedsS1/Xv+YUNQsmM+Fkr+M0b7RvTDmJ6LzTw6Bm3VBPjzeSfkr17VnVOgzJlDEdBttFl3CJN
dt2hb8CWqig9SD+80lhEUe7eWhhKJbnIMaLQhnY/BNXOPG8JZu9IuKxU3CvcF3m6OYIMBJJdf4vt
zxqHvOAEd85rCyCgNC5hdqYOmSjnPlXlQafV5GDaqLUuFT5MSK3K29Cpi0tbtQaKIt6vQ8MdN2l3
dwlR9KxFa/QJj8o587YkF13Xgb2pkrPsUxZhtbjvqF+YG3A8ogW74qldhn3uWK8ScZJbe+ZKuZGm
ihV+l/UQHH6KpV4At17B5e3mBbrX418WAAkc/ltQoiBJOPK1txYMmUGRrCo2rFFTJ64cuV8oQqng
aehWfra1D7medOK2amvFtFII6rjWWSl2xGomKu0lQjHc3L++x5ARc9xIwC13ga5wXvcmqr8afLY9
PZYtzpbWaqEBXClNxGVJ+gObCzyV/EO1QA0JfZdZQP2gUpWTZxunb3j18BAGl0EYt0BctFc1GI8L
OCEtDrWYJFqOx7ImUzAQ67c6Nwg/OHWEwD/+IGKLpXQmO0ZSc9soT+fTEF6Tw1xxOJPk+U/lrRba
wfKdTV6hHtbberH7YqfgnqUz4K84BC78x8OcorEToGkP7sZKBUqZUW4rkz5MT10BCUN4uKWRa2rW
XvbwFf54KgD58zJ+ka00gpm2G5x7/ASRadAp+ZH5VmaIiEdN5lrRqP3y9gSD3bbeLvk7MS4aDJGO
/wjk99UN5mO103i4PNnHGyhTLr/RqVefp9SII/W3s/qA5q+/O7UqwND9rEE/surYzFI1tddlDed+
x5JUV0roZzl/r6ZKJmy69R+fTGg5AzFF6FRNEga/NsKPcK2R9nLZiaix+pFizth9NIElUibaeg9N
i+CduVzJr4/E6XyBXfVdeRHpIV0D6MjZ+E7n+vh5M5yAG+Pj1wlL4Ajbc7pyVv9r9EZULdIMZXG/
PeWjwHpN7V5enqOiCWbdhtQt6GGlJlZ7PjW8pgkuip9OXPmr+OnVR/1n4ebLBg8Pzj3yqfExFD+B
mR9Dt6/cdSYRAxbvtU24+BiVdJLZjIZF8V1jif5UAHTm8hOPp3qKEZ2zyPOiyrMmpW+cno/SWB0w
Tm0GO6ighAu1bJwMKjsaIEzTIZbKY56+oRbmF8wNl6sEvK7QJX64edM5WKIsdg5qrCqI6bCTI3OT
IayCmk12aWbfNK+ll1C1zllAjUB/XmjpPtbjPPtC2nln1Uphf4aFz1pkiDLZ/6aIRQ0+0++djMi/
COWfTJHiynjqUobeq+2WBX4dAExLTkFbJxoBC0IQOCkfAQXuy2qmMKcLba1E5EwYTMxpyvEA1jmk
/yiNQvE3/YpEuhto0usnOEPNQaxojzjrFKN201nlZ0dg9P3caxzSsjqYDbWJC6xNKwcPc+Cx7tCg
K4mjgnxJJFuWw5L1ZtRU766XH71cIuIyDS5RnNF23H2XmVUlY7gCcOMMT+ByTqmnQeGG4wBh8kHt
n6Sw+yP2fx36CQjOAClmmwvYhnNa/rx5Dz9OnQgT4OLNB1re+ZJO/LkYqoPSN7nb9uWHFV7QZSK3
JdO5J1uqiqjR7/FhzE0vAZTqnLTbMafCejVDunsNJYgvr5HMhXa1Owhs4Mojgu0BMMeNpWzi/Dvh
OzdWuyliA/uDYdtdkfUX61270sPaRsmOdGNluzbvx7CimnQaQkE+ZwPmt1OMI5y/HQMRQdryzdEj
IWOswk1ibVWc1diG+vdRss/9Fs6PIBJJ5mIarmHMoMRvOpnmFUMbeXWOSn3/GCXrbLMqFI6bQjh5
c3SlqNME3MWieBJ9KeMoVuLuHrVEASGAP18EkKbdWzU2PO/VHaetO3FReO1yGDgfmPb6k7DfnhPZ
VO0rxfVvBrb1uSVvyyXh8WCBJHnMfdhIkJqDSc2QM29I/uCouI8Mfy31sSPg6lQ29jz0IoJmjwrB
WepNtcbcyjFDdKAxObzTLhnhBf+hizu4R4vonyDqUz32jgakccfxqh7gRjOFrGNuwHsDwbM8cwPh
sVAsto7be+v7t2GvkEpP1X35yiPhognthlfzEbl6BlouCowIAZGFHQ83NEzAcJngFgt3WEzw9QJu
+lW0pd1tnwOtJEGWbvPhTEJDJmBUMkMaCIQZpI7zQbpMXsJZQmqvSKHPIWRd2DH9EFXTfDsJEpE5
09U//2LdMpi3rqNAh1vZAnBK2MXhAVe06wzgBigMXwbnCauqH3xHS3F9lumVbZUIw633IVkLOUi8
xj1y4LUER8GIt8oiJdMul+K6h9Ee5PyeL+TQLgXatSG7/xBCiiDSDuU+nUsqIxGyzTf++Vk7b0tj
Qmyuf8oUKlfPecWCKMktKWCkZAEW2KogkQz5fRRE45pvXyYxmhB3C0IHKjN3qvHjRYrTGt6vDsug
R+ppriM6tiAoSzlcGLT7WsMMfPU3bvgJDggP/G1Tz5O9D51KAJdFkqhuaJY0tKlqAi0C7qIwfPbZ
ObGcqQNczfZ/ET3H7wpa4DCp+KDEfVW6rt45koFRaW4YAhe+iEAyAv5ETCq58mlV7XGGISYyWJXv
exGiCwBcnbZGSaDGk9U0Nds4oyCd13AJg/HGiBMv6JXOblctjUX1FeOvyG3ahjZmXUtIp/IRW1dU
1HUuvEEn2IiIJW8lxojlsFp8UQbTwHQcyFT+hlIV1JeP2X1DlgA4Z5GWRBNghJXSZj8XqveOOeaT
iQr9JFu5Qk0Md8MTOeKWx0uq1X+Rb1NwyEEFGbm+cQBaEzDnEfxEFxbLy4cKq4I72iF/ahZKcdPY
eEnN2jyN4bj6rDow02ushZiydtPCaexeQ9wYSyPXoscrr4dUiq8uMe9vLVaFmW/VTzWhbeX94kNq
TXEhEDv5HXxtH2AZa1v/7ZvsmlyGFQVOFou/Pj22TgpIUhhnC//9CDruss5gK6pih/XDqcWqRwIP
dWZRz15EuDw0ulKRa0WRk/gr3pBZq268gtGNJ1AKiZsr7YWZ9xjl5vdIaaqP2Nv4IaeDDEk4Haop
l49h1LJgREsQs73AtoHyl0qR43KznfLQHm5q8iKTTA03Gjhvz9+Qr93CIJtZi/l8nvl6WbGEgWCo
k6C0wWfFPh7OeGg2IUXzsIVRWN3f3WcXJ5XDWKj1+xIglaIANlucF2297eRMDS1zGj4SKPrcsPA/
M64Vw7itfPkwxW7jq+q1VXz+/0UJaSf/x5FvbDJ8BauAKjPh//guf2RzecDYQUrabISQ0C5JQwoc
zpO3qAlPG9xg0EWSvbfMZXLoMrYodd141HwTN6T2E5IXxsRXA3cOgdrlNx316sYpIWOv677f14G5
cIA9wxnu3wjkvIAvLDSyW02F+LPWpBq4e+Sdtj+S5qmHf3hHKo84B8gbX0SUaaGU6jHz5K3bgCmB
/eKTj9cz/TAfelWM4RY1FF5FQCcKkd4qk7BHJ4XGi3ssMu9YQblSlZ+hT25h5+4m6/J8NgCb5SaW
wL84gvR/aPjVFKQaHkqRanZ3CWYw32+Fxec9iEomyqKnzaS39aeYAUSKBeMs+I0xzufczHykvwiE
BmrEcJ7y3IA+rtqebhcXf1xAXD1yOdpuUr8vYEVaPqOpUsR/O4CUF5dA8JD7Yo4yTF8DDeXLJTLF
BUUPsCrcW86hjCWvLZpM+Kc9aW7jZsKbZUvxnw681MWbn5Nd6mKm3M4WECUeFzpVv+09Mgft9z+n
8v+QQLaxO/POhtZ8h1WRTiFMZf3TQB4CjjjrdgF0vT3EplLEzmkby2KXeyB6O7ihReXMsRv2otLE
iLQf7hJ/gssIMfJlu87v3N9kuILVjbbTWwUL1IXkAYBtcHA7SbQAHYVoow7M4Y/wh7uNaqOqahf2
jhbsycF1jUF/UKsHV02c/5ToA0JLiytRwSJ6fZTpCyVw+6L2D2LkK7v4ckRSQhWyRsosYVFVzhOJ
KTy+p+/1ZbT8OmU8YnUMAicWxC0IC95/gdsfpAP+4JBTGki/B/7PqNR8vqfsBOhL5ofwVmFmWQu7
cPyvkzqs0pnFa1TtgIkTGkey7U9ANUqqRUm6fy3ZZoOP1qR9ydiopvYHlWLfdzb0Lq4nynsvqN+E
C0GTWs+Gm95evU96OUbFL++O6wbhp4Zx1z31WTBi5RyuyhCH2Uf8YWh8+ONsDrV+gIivTezKT5p6
2ikEpdaeNErPStrzfCMcyyvw/d+tXeneeTtu000nnogfV/v2peMztWAEet3se5Gzo/lRV7pePNiz
oZEgWMnRWo/PzL2a9s1M0IDk4SY3Xy41fcWBskRczf8l7zapLLPYcDxCVLpic/EGgDaoTaUQlo6l
XNppyTQJWFobtr7/7+4Fb6I3e1kbuzThdjGY1Rz8se/aWnoUK6+FLbajyqI2fRF+SPkGffoA2QCl
rsdDSTRIi9VxJ9NmNYP+UFw7g59b8IWDatWYdc4T1A6+6/gdX5LPS3JyB+iXxPBPBaAfNHYRQExP
1Gp86ukBjopvWYdL0be1r5TauUhEuG11wzaV2huBQbQWX8tQ36hmIPC0Q1jFYCuuNdB83LJqqXzD
ducAIb+oPqWdhf58QVXNr1Km7a3tpqqsY6R/MVngy5eSP/QWhEobOYPWwMYWW+TvK8P3Q4XHDAuI
shilQwitJZ3Y7twdb6SiftxOB2JPG2OT3QpXjbT5uhT51xOwYEiGQB40RfdMd49TyfrntAUYIFLz
kX47OegRCG3YX2nzQhzDDMa1OVNEvsvHlKkz9HtaGkbBj6xXpUPEjTIPekM2UJfX9FBdEYakOt4V
5SleexGkqVrmCb8NER7rnIv3Z9wjEhnpNiw0e8pMjueHNDM45wZC7YskxWWxMXC11fUYItMoQJbu
1AY8b8P7NypIamLXBMbCP2yurcopvDXYBq7owYV8Vz16SfgSJbw31/dvBXdThBkktmyzVh95Oweo
Cm4guZYetSBHcNkCZlK6f/tcnqWyJU8X0jxEM/taeXop0TbdhXapYTfYz/DqlWRu/kabJFgjlBu+
Rwdqv6VYBheuIw304cpKaSiC7H88lsiSsTrcVNGAooZlEegx/G/qY2frPQ49UVIJ3W/+4Kr9t6cv
os6Lu7j+7tADJKmQGBbjHoKLxF485cve1Y9/2t+pLI7cHFZdjsLveQtgb2pL0p0abBUZSbf7Hw20
yzMu0V8jt69Tt+jQ9rwyTUtMvB5uzvbaTAXK/M7eL1oWyCaaUbTKIB2yWK4Ks4YEUt/wTlB1AVWK
siOIz0pdIpRjHKcO79yj4YytxyXjGP6bhisLJ98ru7OtRHsAxCfQIUPdWyt5EbHf2zg0GmX/69ep
NjiXvk8xfhUF4+OEkYCqqOZbx+hDskgbZIEgrt34W31EO4A/xLl96PL6cG2ACYsokx8N51jWzJc7
byioKsgEqWLXZuHrTlCyQ3a1ukbHDwWWjGT7aP8XuaxEW2fB8P0fjJa3Wy2qJ3JO3jD+H3yUWzbs
ubcgNtcm81ZWnFh+AOZgeF0jfo+PnxcpBEZ8wV9gQd6K64aha9m97x6WGXfbszGbXZ4H6LVmaKJS
OOg5MAIZqkhQeHHz5OKZKN3IntzKgqyTRMGVqfJB/W7H3UV9AsqAME7gAUab718ZslI5eMfcM70B
wTqC84YeB7QnTLqZckVZxTf9796L+DE2ffSgXS1dgz6ViZDXfgNfsA5JDP0gnpxu9yH4zavddcE5
WPEkhCwrxtWsB3OKVWD56EhHUT/QuFVN96B6ab0PayAfu1YY7P8Dtl70DoejpjXQzIzErOdoF1G8
wIf6jGbDifeC/GKgVOLpOvHwctoLb9PsyuG4wSm+i/R8seNpwyiJGFcbtY1TVL2rLdA23/7HCGzN
ERhNhwIPrx9nhhoFXGooS5DeUH62qboxMYzSlL0oajSfOPuNjqlSI5qnluj055QR1ZuzhQFXAzgY
57Q0lpV3b8O1roWRzhWa9WC4wqRWjWvIntxpks3acOUhKuhxLjl1+P3Ys1OUh+Rt2s/+rVbnKpUk
Wu0M/8WpVZqAYOPUux84PTHMfT3OBhnGz0oc/lsUlva1AsIFWQ4d8kjJMDr2QNi0iXbTf5/8NWXT
dYQC5xQkA/Wbt8EwCwMvFg5vvkXo8gBWKoVIbQ5MhNDTLGNXx/2Y0axg8PQGOV/nmY7YFhFzwatQ
ZxTS7uAL3Ps7zg0TpLpAQvUtkSJMkLldpJp8IRbfS2ANSslaEka+w+X1fAnJ4wlGutU9FBs11uw3
CL/HTkEDWRJjtJBrc3bAuufP2COnIcoQgZURC56PKF0YrfS9J64oLgDeybiw6lcFUFD5fVeUrLOx
VvMc1+pCIeqAV5ZeU55Zbud7JtzFJ7Wp9Vi75lvcsbu850ARy5Z1Efl2nPOFn+jwVdCTVLMm0klT
lKsi2aVRqVqLULC8O+XUu2hFMastLMMnk1ZKM4/rO3/BaGU3hyGJj8wL8XgJiKKfzDg+iTNw2RWA
wewlqKm4hzQ0LPRYvG6tVAreBNQBqqLjhTRZ7tO3U21mg2uRdw9SKuXB0tiCNDXTtK0MzarSKaKj
CxWStKYY2N3cLFUCwnKZo3Dlucb9Po/nFbZgajOFHI4LY3Ba41NDhC2l+U6IRm/efXU8YrlOKl9+
Y9/Z0wQ+WRaNZKOaO1ZmZUEe2zANiHK9hSOB0rQ972OcknKSAkZnFp/8bivYxHrIAMQdQm9wLVz6
y7Wdcz5BarXaks+tRKm3wSt24gn7zUigyUhNrNT/p93b86/g4Pjo/4N4duj+Vs4otz/P+kIS0yL+
A+wTD77m98LwvoDjyE4600MeCxov2s9TVOtZ0dKBbirKBbPqzZLEXs55BIuQ111esbI1zZ5sF3zU
F4eoyGylrkPEphlUP9y5PkQRfZdhklhD0ExWdHS3RqWG+sk+6jUfye9ZzpGtQxf4qxu5sZAka+Ps
y9eOwSetpUmTZ4zjVZ0TA0cSlQwfp8dfGA93cz88Gkno7iiEsKc4GMDfiu/cBeo0c0A6uU0Z94q8
PopTZZTmV/Tm8iLwz/d9ZMXiM5gYsRxHbwgegJSsmV19RcRUoCAc4g0SVOxfiCTRbxl87B6mUE3I
ZVccGL58zIUppNGp/3f9LX8Tzj9Y2+5SIEBXnnnxvOYWAdbVQbZbWbCQG9wwzUD3YHq8KqBr2SZI
gEwZBBhssTsQ4gO0iT1eN6yTDMLrtZhpl1b9RR4ktSHtM7A8fDEdfdivVp90hGss302+Vf2mfcA6
j8ltswwUdOFWmiOuYDmNOj+AtrCc1MV+1SNBaeaBVtLgWvjOY3JUF2ISUVRig8iNcM8Z+7h+vB8p
a8OVe40fI26WaWvrIi4oKuRF2z1pnpN/+8t94NBwCfpWlodawt5HM8DY/suZsoll3uIqaA5WNg7i
MmuyJia/8YKRzXpjwLgw1Vqo5KRLlm5jigSyCmhg+dU9Rvl2JLuGPu8CEBxBUvySndcoSqGuZkKN
lOpnUb+xTIPgWcvGBekW5MEctq0RLg/wsh08jHkq0JcBZla0sj0kYtrFLtleaUXlA4EYzxX0USJA
mvdfc4Ivy1nzxaBGDhNWqJKMEG3kJ5kVs89NVh/iXnmek6aWlSEeIw3ImkD4/6qTCv3A6IS/K1MK
c1cO49JOd2urUrKOLyEls2+7QJWTCcyOFuGO5fhKjvvNh3IiNFbkVJdvdG5kdT127gK4XqTbJj8W
PAPxVsOUyKWGdFNi1OyK+WdmOWfm2RvX5YG4gjjYOUvM+BtDe4SnrCqD/N4VoooyDgusmS8Ghvy9
EMxhUyE95KBMKFFQM2ZPIE/3hpJcgnj7Cas34GKiJprlhlk8WsGENukIVpcq6ST61ZJVzN2sHqqP
oSjVCJSKsDowreQhdZbzHlHKPRsPjUl+08dyBvnkT/lJSuDfV5/ZcID3iIa0TdqTEh1aMh3JAmxb
Kcnwm2UdP33QiF/hmjQsVi8DGvOZ/8OSpPVI/uw/mAOi9ScxSA/b+imDjEsqpNdlJlBaeKaudTU7
MHZsTGPKiLM9ZbKfma/L5drdOuYQusPGwQH8pLP4yBUyUa+gY+Xbucngxh67wjoNcCKd/61cXIYk
g5VGJ4mIL1DlCxNA/ZmhG2G1ckAeSc5uXitKmk4V+/6cZ1uARkNYRBGSr39tElmM1lcEB5scL9hX
Z4OF8NMPKtPhii1QOkguwoU2dby3HQKpw4p+qLw1vsq6X6uNYpeCVlc/KIPWYHzJv0g48Y+xWweR
IMQOmiw7sLIQNYVfqse+tKqKCmQYm74gqFbnzxZvSzZWV1WesR0CagRAoxpGXOaufqREMo+JumjJ
Z/gO/ElTCKQPYSGoTTn3Zj3yi1NyNkgpCPjONWBZ8EtSMuJYcGe3wcw/03KEUsvIOyBPRWgHIOWf
K8ieH3527ZGFGUJhbn5eydR5RO3Xa9uEKQV1sJY97k/Q79jlGAsS1Nj9NeC7p3aTNIlpKAYw2WA9
yaDY//8ZDYmV0ecoiJoJNNeWaU+nIGoUiyNLQmrWqiqJsk74uSF6cHrsdyjwfVyu4Y7NlGHj6WIc
59S3kWDxSOzWSNGrHYyZHOloUN5oupzs99/9BmKNpFGn2FgNZd+Brp7dBU3apMveZqJLvwj/ApjQ
3E0TTq4qjkI31F/M2w1CxSIqmNP/rURUG7zcryxGZ3ibHYkL+ZkiscAT/JOhSl+DgdbHcieUFFja
XFuBF2J+Epi2+gyKloE+xRK6fMF12OjhAzibv/xWMqywBcCb1HfAxsj465jVPv7FKae4rBzvM7PW
9VP0iGEqqvLqIKBDyH2l0hvn2PgbyWafwfOTjigUyYdB6U4MeTmGxtxEysEDC0ifQXmzJf5Gc9nU
usjSOdqvJUGSXW+pSTj9z1ptpYCc22/bNpiVIb2Io2MogAy+7R7iAmKkZNQ4cbJDT1ilZ95L/JJf
Xi6RLF6wSlbisia64SHxC5LO2DUknfkN8tuvPLTGBQKBSCZoIQRcmbhlpEI2ep59ePSBAduFHlSn
fss4LTMZYakJ0ip6LYVMzcDbIRJjo34rCACQTgofV75QpozUpKfH8zlYauVBGuCQU+N7+/Q0C6Ig
rvi4zOWWCcmTGyBBjzwSiOT0DRTuByhAndsXz5LH1r/pMiLpRocLNNz22EymphXatojsCCjB6rQ4
YuzR/Szf+AHNQcrlm3smdqPkIdo439zqOOi2Qy03bWKbbp8W10F7ctmWXKnSKDRcMeJBglQcdDN1
NvHoIcmLiHVTgR0crBKXYpEZOQOPMEs0JZ9GaIvnx+cHIU/ftpWpD6DAw0whjyYZeLSvqgSAjWYu
guSRzl1qz10vRbZJgmrkFKpuu1HTltf9tiuanWfmMr8tYj5QYXUIitJS5CPTvbsIHdf5cMcxErUK
1oBn/ATONqej6K2eCFp0NoKLH1Z+9hsllTZXBJW15hTso/aoJxWWxXOB1APxb3t9h8KCTG8tN9QF
KD3cshPsXdKrHo5QoETbkgx7Lj903Byqkj/cjJcJiJINTY8GvlJAnu7c5z3z2XzBwKeDiek5QC62
f6jGCwCO8rRdU6rWqjNxaR6x4w21A35SxSDUJTcwkNgPj1HY/R2+ODDg0iKDI5YH2QPcJmDtQfTQ
QoX7PRorDU/yEd5g3oSOCp+lingxmjRYEeo1+yk5Z6beQBfQaeiovnx/k7gKXte2ANeZo95I2yKd
9ZoFepzrbA7sgz3obc/qRy//OCYF5SpmoZClNoy8ooTFfjguzlQb5KYE1BoDvkK8QAHlrybP/sRS
SqfjQe1PY9sXsKsUkouzfIDjhRUpd3O2G0/PbiCua6zckBF8w2K9h88x80hxDzlnL64TnAoCYSK7
BJWh4CGEtEHnzElJv5UUcT/IJIZUolz3qKVWeRTRXbWNZ63i68GZdKEj9hZaUcyP6ujb8Uo88fLq
6+4Tg7ii1KbABCzD26f4DVHBD4arNHFX/om9a/kSzHvgt0rVHN+CcVjQ+07LoslIeCaTpeVZIaOI
isPq/rRa+fp5H9IeNSGirc0dzBwVHMRN+eKXh6ldIVVvks0IKsXlewl2L1S5IQdnkZ1M/IbsNY8u
HTlauYm4rksGFw9rW/ERZdOADEeLj7ks2+Javuau7UY4aN3eGx9DBy+u4fwyzzD2FneHCtFhx3Og
rrmc1cchamsH2a5CI3UHae6S84rpyY4Fay8OUAO1gDVDAH6tVqFgP9/EplKDv0gr+DtDJosl38bg
NNSXvcaQ3us1bOBmjovqom7VQ2Hx5gVxeL6h48CHTFwxsrHUjbMbzDVnGG5FEKi8nQo9TwGodrQ6
IJ3ODLp1SvrXqhbgVgp7D/MYumYPZdMrBBaPFGcTQWsQ0y3OUBkOZJuB20S0LGuYPHbh7xhoiIqw
cGRSAVV8qAX4G6NUSixEahvCcfrZurMtCs5JXOuc6/XvLQUCJ7tP5raLNgISpT7EeedNOhwT4VoF
AeF91VUxtK62tHqmDrydYWQtkpkwrxiTdux56h0UIfvm6ygf/E84jruJkqQRW2o9uWLGmP0X8Hb8
agW43kfObsF0ISEdsVTLdxSZPw2h4hSMCXqxXQjM6ZhDWWQCoxRu+n5Tim12aw9GIWjW2QJDrvfp
1Zpv8VqtdEQzOOwp7CGdTVf9SknJZp8Yvq7ZuwBLC4WrUBKcarLA8I2cBDxi7fgu0Pl7oA9zs1bg
rABkQbngxa9OxwApWd2rpedQbSiujrVtXqekgQTeuxUU815MznhToL1BaKHMWUDLbs4fh6+BJRX5
nZUx8bjxGfriK3nyPcFr2U/GLUxzZdJUuJFQOc/lfplGimUcLy0vuhpLK+7iDvly7idqM7wQY0cD
8Cu09od/0CeKqLGkmjY1VFRHp5P76+OcfkIrPhLwv1DVxh8LAhDzKAollJuiMNol8AiCWW7VyRtM
Afrc3PT9xJGdM2S4ESyPjIYu1J0TuIMxp2LXAPOTFo/tlhsUbVsSoIrmxWujKIlLY2w/ThTnB68Y
URQ9LQHXsfM1imuUArcVufilrfUICPQovW44h/hbUV3iy8TUC7oR83yjQXG8J6KL6rRS6TIiCA+u
2szRl6+xvepF3lva1/4/e+uHr41KUYJ3SuoEyNZcskJVBsI6sr9Q8x68NAiWzGg2YjyM6XK8k5do
baGjKKhj6lDx50l8mtLo97q6V10loOp3uyGz/e+xfw6HKM1mpwlKJOAEKPcWnyh/X2EIXNuCk/XU
Zw5R04BMrMCeUJpqBLV2kOxSAWv73zb3p+jrr4E38b0l/Gt33VGiuqPtinKl6kjnbL61SvNqAqq5
YdSRw92zZl+RFo5SX36PbjPVuNthpbrczbb1PkE/8t3LAbSTUCo4648p7Bamkd3HAn7pmJrDl3Jf
I1UUoGvKS3id9verufp6MRvuaqjRTi8gkJPY9FVvCY9Cwbszf9lUNO1dtHQd8ce+HvKYO92nqARZ
49zNjGnc0qctMDQV5afCa5Q2Zv8HoxQ6ip64aD3j3UHzJjiyPIqLjnicpm+XMGmiPUkYG8g3zTGH
UlmogU9Mr1C0IdkN6uk90jE/xO24R7GQxbvUdTGuW9Ju9Rsmm40vuos1yaYhB5PXi2e2VKv/MpZx
XC+Ksjod8KC/XTiPf6R5J5ObuMzrnxsDNDcFXuE5klG5j5tRs8DbfYXs0RRweiuk83gDZdstTqda
N07gPcplfGh/xkU1/9CulqnvltJgcR0ltXh/GxmWl/YYhz5lB8EPvVLsznre9E4g7rkwzgHSh71T
QWE2YonnDPgmlrGG4gnmanMGEDfJH/vPF8oDjoSz9SBQ7I3RKjvi2iTp77MgpeAxF3Rfincyn/bL
qbyYFe9r0nrkWuequ6HH9lGPphii89q16j56B09Gisshliz3pqC2T0ua7PwOJcVjrMaCSra1e99i
LhY5v7cQEiZKZn2oR/qV/NkXyFOpjlyGAV0rkeqIuG1vCVlNBivm34DZf3ZGhlUpUPUj1GoDLT6/
8rJiggYBh77JchdQuYLaqBYlp+qtDpnI95UkRyoqG38GwiOC2xIzLw9sccrdJQU3ktsrgNK1qTBV
1p6nTomEBjqqVpE2tgahDh8fKK9x8IF4QoXp5ouE+Q1RXlnqy02ZVAV+Wdct8miN+wNSC51HIu/2
TipW73cH2hics25JF5sAwpJ6a0Ex9J9FQQ/6NojdYPnBhHQowtBsAqLicd6V/XoD2KLqqrxTVeva
qc8/kGuzWrv7JBx3+4knd4gn43o1AgGuj8FOznmpoa7Tp4eeWwOVwkFsEGo+TB9Vj/rnb6ZG4x9d
NiP3Af4HrvAaxdomnDrZi7JBrJKbipiOpxn5Wz0K14LS3N0h5IN6CqlzUDu+42+jj1ri4KUTna7O
aZmACzPw0Zr13ELGy5PJHZE2p0GnwG4W5hi1NjB6m9KXYINpsqd6VnS1NPWfOCmiVfAg/lxUJ2zO
OPAhZiabxRhuM8YtsxkUB7mB5HMgT+h8rAE74CxKquXgTn376nVcaUu9dyJZNI3R0jthR+lNk76J
BE0M5QzKd80xI1Ac1QPqSOxDFzeCTT9vX8+0yTT9lY+h5mXXO9MqJCDGGfqZtAV9ebQVuS5/p6cq
xVqpbg5huIkl206Lfr3U+zVUFkVk1ofblrOaveZomo3TG01VYqe0m8V+YP4YEfqNnjPImSt+oCUG
DlfvBqgGVwUJG/COf1tv+MRgfqdwxJlKO7fNR7rITGMSiL5ZrrRzz2TlxeVq0LXwAzGu1a1vcoqq
OAga6ZBm4fbqlPlzDmKniGSd0fba9W8WoybxsJVAxvbUbZ/WNVboHGjCm+gH0OsQa9dn1eQV5a1D
kyUgtjYkW9RgLPkWNfTiKBuYni7pbb2VFf+mMEYJ7S+VphdhfJrHVJSWf46lTghIDK1Y8y8B+0mV
kUjdMy251jVZL4qrprU9uvw6S9Jq+Wz7QF46pvQBmrgrdMgyVKqFirUK6uGs6D92rff4FZS/Q1R6
5w44iOPHoHkvLaR8SSe03Fg/KOhEifBtNJb0cT5mg8oZxl02vq2Jgw5Q8RXUBLZzQes4kJn9bxTb
EXNbkPWX4P421s4Sgv41cIKqQgwt2WemEa0oR/RQATffPq4hsV7I6tNXqo71U+P7FuPOKd7Be8xp
rAfG6LVUuLZt+91m3xjGu/5xx8g/3dVqgnGqfI2vcdfy1nFKmXJiBqWNsTpVWucLh3w003XyyCyw
JDKaVhUQeDKtrG4isSm9Ii2RYtN8VA19iRZ2jWJ7FW5MHGCyMxSi2V02ls4KIwrdrQcHwng7nIAb
3J1mS3XPbeKM0vgtyZ4AoMJlDWwIXhHzujPDtfXvNrpRKJ3S3nCqJsaoT6jbgqgGUgQfZdXu/IGY
HtK3JzIkfHcNXkPVhl/NP++nDmqDl4gBXnYbVoGKRjZWZbqTWwWtgR0bVRWS60ZZSmDWazN5dWVo
lVY2BTvqxta4SZrMHxYm5HfEZvyMLkYOqd1YgCRQD9DV4HnnYsMsBWL1yn8mckWc7s0ceTLbmUx9
jj99Y/Si1ltVWeXGr/Cbiaml9Bxuf9+3ZkkYgv/7t+WFPvjfwKdP0yDsvQq1GGis/jcb1GyGccZa
uBHjkfru2WpXl1n+PI2IoGYMGF0piJUYris2G6HM9+DHN2QMT3/XNPS8nkk8hw3/3qrYYtM/V0nL
qa83u3GMAM3nItH8zmltCfKcjNytUMOLcJG2dV6Kk07CDlET+BQxirGAwqDY1G0T35VVh3C1j26r
H4E9/nlW8pAunVz+PEb1772OL3i0SkaFAA2pxMudTyMmDdsCgAFop/1Jr+ScvlHfJaQQ7pYT7VlZ
Oh7h7jy1AOxHmmuUgkJjP6lDoh0ajrGeMUDHW6/SlC2EyZDyURrTan8FJJjo++2XiOKw9ZcAbuKH
eX99qv82rliZFi4iaoxYNSBDyrvCAtwAOK0w70niMjVlNBsifUscvoJ0OEKpD6ZgEfCrXyS1PLwb
/j5KwXKPx3LtKmlDtUyuRXYb6wxEC9OpXcM249nI4Xne0Ks38EMDriGmZm0/cLGocyhnsiI1eIRR
D9ZitN2fUc5VkSqsidm6dCwDq4iGtOcCw20eu8gni4EIX8ATUUlhR6UWwKKykqYqmuFBu4Txc2is
rMoHvaHAbpCTILtxj86dtGybx8WA+VaEZeS9Hpa0Aon5Bl8Y3YKYn1kWE84j2ZKInz2zcJQhaRy0
v/wFsvgvXYp4KGdL9ne0LLCL8KcL/lgnyJPPj52DMTt3Hd+BM3m2sjC+a3tJCKhlcpmY+/4plqm9
glYXiSBbMnoSVXseUDyXudJVdDciAqCHh3CHY7G2qpajkMw/AlJ3cdut73jPjCLtQzD7YTXvbOqv
8ZwVslXlcTEncy6eGEQFtaXa1RhkRGfRJww2DKM9LVbq4jAHddm4a9Uf94twAd74YMN4rkK/Hsx1
LjYs636QHorGqZIKdB0MC5nzG07Shg8Ed/CvQ1UKhGVU2/V/gx9ra4qpLqWrmhalWeEW0qo/IjAk
EX/E5jaLPN99dqRzl/KJwc2O9UHX6HZr+RFZrVDidyqfTC4yh7NvJhSxUPZIiP3mIxcgjB+RB4x1
7veJNKwXEeKnmNIj98FGBM/K0vNbjwmBQRXN/nEnl8jHkRNqc/0ERUsFlUp6Vfo3te40Dasbwcng
5Rjzw8Kyn04N/u8dga8DX84DXcKskFKXGrLrhLK91+kpno+Gu7qCGpC7rnFABeKX5/aRDzZtItlm
UMsIIDrr/zmKr09N6/1gRbqVrkFKzsBxGkQHekWnsq8NL+huVKG/O0lQCxL/qRDnSPaib/+RNxa1
2L4HJW9CW0wCGWB5DCf4y2gjYP+JRSGBxtDUTizRcCWs5qk14YhtjBs3OWwZsCFDU/olsnHP5htJ
i/6CV8JXKKDp2G6tn/kbQpnX7Fr+rcINrmPScVyAUqJ5bSGRl65SO/bP+9pHRafcj1LewPUAaKJb
zpnYMCR7XUj8C5Yh06Y0yCYttZ1G4Aqr8JJqONZ3LG+Tu09XBScE+dlwMpuzNvI/h7Agaq4NPNpr
ljdz1UGqEkajN6rDxx0xxouSaFIA2hnsCKyjhZTaYfBK0QaDVTsDaLc+kop47lbOLte/r3Sip/Vp
3BS4tmk7AS2B68fTc8m+hW721VjbdlKkjEsuUgvOzWg0l5APnCkzUZ4TXRi2yoBRdtHEBnwuvFRd
ofTSE4pAHBYgfeOLMftgLIjR0P93PZrhhXscclS+WUJVtYld3U6oScJIVHJAD02G7xnO6/iiL3vj
sxCR1magWnX2Az3qe3pmXTaonP5B8vZ1I2TXUHpIDNGvTqHWVZHESUoXpbLMVJgCzBQ2V5+TSfio
fWu+R0g7F+ReGQjHEpJVndUJs0c16RFpy89doyFQf7QxqdaMf1teVx3saoAlRDbzC2sanhOr15qf
bTJlmC2w3mYaAouSq48=
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
