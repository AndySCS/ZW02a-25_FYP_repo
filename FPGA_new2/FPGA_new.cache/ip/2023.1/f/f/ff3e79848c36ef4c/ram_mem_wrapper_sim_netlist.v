// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Apr 15 20:05:44 2026
// Host        : ecelvd714.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_mem_wrapper_sim_netlist.v
// Design      : ram_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_mem_wrapper,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52208)
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
