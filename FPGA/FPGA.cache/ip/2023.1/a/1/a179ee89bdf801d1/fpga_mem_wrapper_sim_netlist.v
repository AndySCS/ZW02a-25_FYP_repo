// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Mar  9 23:24:57 2026
// Host        : ecelvd711.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fpga_mem_wrapper_sim_netlist.v
// Design      : fpga_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fpga_mem_wrapper,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52688)
`pragma protect data_block
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
BaxlnVtEYAhYi50Q6EYuFsUE81E=
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
