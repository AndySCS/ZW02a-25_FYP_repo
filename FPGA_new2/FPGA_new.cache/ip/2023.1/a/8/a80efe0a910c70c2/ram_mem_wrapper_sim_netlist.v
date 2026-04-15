// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Apr 15 19:59:54 2026
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
