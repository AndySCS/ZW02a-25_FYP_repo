// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sun Mar  1 21:54:49 2026
// Host        : ecelvd711.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52224)
`pragma protect data_block
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
NzfJwdcMfhfWWv3T
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
