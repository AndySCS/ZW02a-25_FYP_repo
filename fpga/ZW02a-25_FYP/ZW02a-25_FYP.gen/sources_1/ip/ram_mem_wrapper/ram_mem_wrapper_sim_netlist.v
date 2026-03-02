// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sun Mar  1 21:54:49 2026
// Host        : ecelvd711.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top ram_mem_wrapper -prefix
//               ram_mem_wrapper_ ram_mem_wrapper_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51824)
`pragma protect data_block
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
eNuGQf+Vp0wNdXE=
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
