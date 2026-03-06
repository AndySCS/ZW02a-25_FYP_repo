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
Hawghwrh/gw2V8E=
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
