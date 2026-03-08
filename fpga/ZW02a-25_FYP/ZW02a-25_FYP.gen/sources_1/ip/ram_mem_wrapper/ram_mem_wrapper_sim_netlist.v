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
+ZtOH0g7J06dorc=
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
