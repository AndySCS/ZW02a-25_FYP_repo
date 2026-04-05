// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Mar 21 16:34:21 2026
// Host        : ecelvd715.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top fpga_ram_mem_wrapper -prefix
//               fpga_ram_mem_wrapper_ fpga_ram_mem_wrapper_sim_netlist.v
// Design      : fpga_ram_mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fpga_ram_mem_wrapper,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module fpga_ram_mem_wrapper
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
  (* C_INIT_FILE = "fpga_ram_mem_wrapper.mem" *) 
  (* C_INIT_FILE_NAME = "fpga_ram_mem_wrapper.mif" *) 
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
  (* C_USE_DEFAULT_DATA = "0" *) 
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
  fpga_ram_mem_wrapper_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51904)
`pragma protect data_block
qU7oNvGl31kLJomxvbrOZjPXU3QhqtE2yhXoWvylVKEWcNRsSC4QHSSOE2L7Sz8xtOnigQMa5806
FyRs5uQi1zZjNB2WgtMx3YI/STsNUvc89RpyL799b+s/PXmkOg8tT7C1a+GvzmKoQGdF0STUdENX
U63AjIuJOiaO+zCrQDfGkiI2K0FOsgucIH8VFTSRFbm4Heou7r8sjhmyBaj59lP6ExUSwZf8/NWf
bL4HdbAnmEc6lFRXyrbNFUqxBiY0tDSanfkTsitqS8N1X7+gsUv6cykgCdwoZqueb5Wnva/P8npG
cPFySlaSL2sHrmH/KYxXmVOPZdItnsHZlnYpRARqmStlKC+EVMCuZ2YMeOdsEazU/5vGNU1BmMgq
cZGacYkLg0aDH+OUj921Mhx6ccLy5nVpVxrkKd2gaUWyypiBsvOZKCspY0ng45KqDVh7ZhOBSMaq
u7h+9qGdMbBaPgMyMvSRpQ5x0stavUr/YIoMVQWgiWB0ca1OSZiHt/VLDnLN3OkXt6BVgoMHwDoJ
RvxbRQfLYmYr/BuH6cVc0sz2L0xK+wsQvVLeWxggABomJVyNz144ynlJ068jelipj6tj9N3j38d7
/2MQQiQXcUL72yBdqnJlUda9y3USSV6i1foV/KlL0Rxp5xwarcYzav3vQht5jjMLGT4q18lnebye
3t0L6fjSZjl7K6dqrR5TZ5+hGSWa1kLj3H+NSmwGXClkAhCeSpburSb3veIqscLHZWyrqpFA8NQA
4Ey0PWh4sxy3tBmzzWXrz3ugdxHYyuc/nSATlDxaqGPVsA9fMpS/SBYI5r2J4/qIIP2fVZenCPiU
VUauwR40eE5Th4WSacKYazC0mtRV2fKIcM4Ps5ee41iN+FMBDxlCZCbbn3U+gzb7R5ldvEeFPYAf
Nu4EsfjNUI0V+U10nM68JDHAxHtg8RLf3nSKcFSfawbQIkUiC2zvbwc2GaqNz3YB2+XaK3LJSngb
95jla6Xx4OB7xq7FZ+mjDFZ83AdGqVhH3k1IjL6o4p9qkYoNepxxXQ+x8UlAYlWoBLlmqJuqDUWQ
IdTZpr4JqWDHPqPjSUVsdAcKlLfttYPhXAvLZnFaNyyGVwynJSg70XwZIUh7owDJ1wQxetIIuu2B
abG2UHvk+H1kNC39liYHnaOvrKjv379hEiHAmhhuPTBRCutrHkbaTU15dOy2DbfvPBOJR+uxHytA
x5Lfy12tSz8R0bkbIK5yED1+Ehpbb1n/4/Dn+weO+F17X7dkTLmVd6D096GNz1r/WLXF/zcapU53
+TXFbW8JZdntcI/o9f8j4oswVQ7LzXSuXtkanFfzD7wL7y3IUrYwZPYJJbugJ0PaNNAKN0/KPFzt
q3QgttdnAdUSOPbYB53F79+tKATkV7OElK0K2gK0CJUIiFSJWTD44hNUbLVDDC+JuIjJyKlpivB9
rHLYzxKvkL6vfm1FFO9nEbXHm3WcQ3ZSQta5Ytxy+SW0R+LuT2d4Ifzsv1H7jyfDNgXGfmZ5/GC2
pCMQ5RUEfpo9i8GMUVFkW+h9jmZqmOaKrDTwmnEDdl6YDtErSo5SZL9QUBwf3geELpQ6jXv+3eIC
wS7e6oiBAqscpryXdECjpXOiVN+Qh4cLD/2jDdOch+3evNe0XRbheyEDxadiZR2DW47SC8lpIVsz
63U6cXHhrD4skHF5ieeaXutY3T83YfKNPQ4GIWzelHTm4ZeORg38KUdV8p6bpv27XQuAfM8HcLJ7
F6cJgN6JC1vXCRXhuHruRjQfB5H05JJPsTJjwfInLoD/vrPWcdx81U6/LO0ZFWV7NnSaFOuG694N
h6ltWmIvgVPBr9TSTx9xlUQIvpVjXsONT65fc1kzrdXtlXDao7Hh85uNnD/uyhVY/jUqGmUol6tZ
kVzkcVxwIPbpkXppByC9s53juejT9MiGGGgzNWbXIuj7L0pYsq264abKDhawgz+vbguDnqzN1ZYB
vMk3VMx63of5Ae979204onC75XEEpoIMKHuuNoWE5c8VJQoj2kidWm9oYrUDIhgk799xkyuY3yTc
G/6V9UEV6QTAFKYn3CYmRulszTpQidTQbYwewJTYHV+kCh7gd0hVlUP6XpcfTSY9Eoza8f8bYo08
82QPQ/elgBcm246glBPDhnOA2xE7cYE65XxIVAbeorYAHRg8GIIyouXGJTwWhDrGPO3gtF8iYzJN
EB858GF+t5F1Z4n00lzyhy4llmvnlCSjmHWyoBnStqfSOoTJetIeM3SUZyLwlUFAZErLzWt8wk6L
j9LRr+5z42DOE9QqX9iUl1Y3bpDr5K07rk9yruORu/nFMmHs+EfMPGeemE3nv0XtBYu9NftBjhWb
P8icw8kA7BTf/3PHc4HigfJ+QmYXUlAn3G4+l6zhwAGtvfNdNHfCjWBzrgcRImEg54LytNazq1Mf
59Hn2JoXXhbDA9VUJNrrVgGoU2e6y2d1zdb/sPMdv9vetiuRpkPNXfmtiNWu79Zw3eRkK+4CxoOP
28od7HmRqYmGRwytxStzZ4qLzHKNXYrruoREOm6Y+dEYQ4V+9ptCx6qkbB9TRTLOvLV/wvtHMD7x
vBvnkmvyIsBR/m/fAet//rV1pSZ11zT0o5qbJdrsDw9zvgShn94KmCZodYjwx111ZlqN9Bwfo68E
mHeIj8z0ueS12ZrebaMpe7nfRAC462yt6pDLQG+ewUC18zC67ty/7tnFzW+QPOqHanyMAzjhqvdT
64XbpQqX0/3n6qPgqmECNtuUyfA8pa3W+H3P8sgiekyWUXizHzx0YQCrxN7wgtB6mCkGJZQPHX0E
+zfDCTcp0oN92BQh/+Zi58uBw65JGLpf04rbkve196WL+jo08ukNWS1/mxG54KAMKxF6xanDUX89
V+6iP21oX8R4rExeNue2Lz20g3OwtmRYG5exHfKCXiGje8IudIancEAJzS7m5DX7dpRyv6jSj8XN
8Er3VPv3BHbYy5dIcpgtJgUr/my8fvNDjGu+2Q8trhAisrusqhtQ40dad0EikOB3p5EnWTX7UJr2
WrcWnUeUksOO3pBei7vtZfv/KlECbSSLCkX/pC7XeHujRqsuZjPxl9eCN/7MnCM9YhIJj6VZvogm
7rh9jKSkIW2oAj9oyYygy+GbY6kdvap0TvVc4adZFs2kJEkFvmLies/M+wTBBN6j9K+BMduPZVaB
iHkGXcNFdWzvLUIQ+PlidzzjPBU+ofCXPcx3mUo8uq7rEbw3B8DFtz4YyY7PJJg4PE/zCtD9ix75
JANW8fHAOZb03bnzyWgMSbN6lWooZ6SAtopM0evCRz7ulfhh4R+Wi4kzd/3u37yRw+Pv/ILWIyeM
d2MtnyN6Mka3fgCTUbh4nSAe/hiyIa/jHqKiuPfHe5wbp+blTbSMbvjq9A8kiiPNx3Py3lPAFgqJ
f/Ur7L9ZdlqhV4gjYy/QXYs24q+2aan/GKbxMgljpSrnwKXZcT1pchTEY5vJstOD7FIKoV9SgH/5
EA6LD7WB3NxI5e3uU3nM+hX8zW7g92yRNfNQA/CegL3AXvh6KIzkp/IlUyRb9/q8f8/WhQQdOsH/
cH8y7ZSascj3DWSzWQIw9QXPbcIDY4ziDCiIKe/VHY55R8mitrXnE5gT8YJpOHMZZvbxHxsxxbDn
FdYC/ShSuVkCI7aVxYweRhebHo1FT90GLgZHERzFIVwL5g+1WHoimcCSGLJDOikYUE+9j8gSq+/3
kXv/vs8CrIjBOeG5A06VGdChvgnqbgCx40k94GcAkHybg/7+TNfueWQOKMs7DjlwBSx6uluiIlAu
LkaCTDVl6k32D73szJIsyB3O+d3TjF08oJXkyzz8yLcuVpkiZEdb3ss72BwFooTdfZ5iHoMvsnni
2G3EE2WOaZBSK+j1oyZbDSnB4LBINXKhiL7lKYOQhmMfpjlFgwTrbK6aj3gIjuXrIifud4BPstuj
sP65jRq922HVbUtUyTmFw8PqTM/qsG9W041TiFsNTOqX+T5Ct2Uw73ra23RcI2rYX3YPficYAThJ
Koics8F2NwcliJ7aAIZFVBsUsqab5T3WIVQ3jy0jlIB+6BXuqe5yoQGhHKsL3GuilfiKnpN+A6Ou
VFXmIQTOZ5SN1EHwnzgxgmrLP7z2AxvQWjZXpXqO5hzIfIYoAcJ2a1lH32RB4Bl3hu3cm4ZC3NuO
faOjvYs6HcTFEjxPgUXc8iySeuF5s+A7bY2QibeS0DWaYX2GIwAGg+am5HQKIFpnmDF7GMwPJU7m
pmgfh6MUzlG5+XS4DZ8GT3I9ThEiTaESDAdDuS+sx/JvwtC0qenpFIh47M77J3MJijr+AOnIEeFu
w86L7Gm6anlVtQI5foVmLmdKxvYjqA+RqhvAhBQ46An161+cJKZ5e7kJUb3s0220Wj+ZnKHQOscl
nFC6NTe9w41RtkLS02gcFS0RW8UJ2BoAKha3DLOmm7ksaV8HjdVs7KCCxb/3F5bg7O53UJ5UOyk3
0WC2B+ytlPVam1x5GtEk8ak2tKBZe5Dv8Ws1Mr+KZitsfQxv0BNBiWyFP2pJ7Ub6KrhlUa0DmRm0
fY8a+CtkEk1a0JDStYLwjbTkTkEMFhdy9da0ERuyfLYwRwm4qU/2XM/wO0uxLuT9KBKuOXnp+SHD
8VzcDs8iQcwU4hKCo4OTKC/XaM2jzbUc6bxVZzUWgLZ0kbJPzMlxfO4UfVM7bWysS90G1KWkzccN
lVumqt6v1GWa5u5RZ6x0jCxJ+hJKCmmkQ+sr/E66kU1QNL/VQoKKJSYt9FJkMj0ZUucZjRi/bNmZ
mlIx63uwEF92JMMu+ke40mdTi4TqQYKLHWrbM1HgDgDE8z/nmlyvdwpf6pD7ZoTzuUdXMUno3656
TbjLymCmyWmQimovkXlYgRSDUaoqPl6qBp6ErNINMvmW1SSRplPlTGhWQ8FrNA/cPpPLMsUkVooe
5Mhs90FG1AWy5oPI1yxYQFTXheTOZA55cHL+980I32rMqq9EilPlYASpy8U6u9ACGp/4hm7FujZn
rLcGn2lK7zdQ/zFHhGZsnHDJbd5hSgkyNzhYtmel79LViOfgyiOxBFvGClXO2PLCwAHgiucvIsbz
FtO3iveB3pzyIxLtMcPiZnn11eW04V0wa1BnwB2VJvg+YN9XOK0MiEgOV66Zsuc9SiOMgGQAzBWN
unMd/quNky+1CwicxRZm1Z7r9yiDqpfss30jBL2HiXMBsuB5kpXpmHkIKpdvvlbx/lYpdWWUSn4r
Co2HuMLvNPrWnjdR10J9K6Sx5I8t33KRr14fEuF0QLXarFQdkRBheR4cK/H+64ohBIWD3dNRGR5S
BWs3qdH7L4bsm2nogBsKJcwByWa+kh+Y9PbyCKJDRXIwTA1/q2R8+s3Zy3jaFDLYRXJDNCkMRqwf
A2VTg4JHIh8kOgM2PFjCLw76NSplEwCZu5VTy0+GkgUh4WRzw+rtu6CGJcYqrpwiyD0pYYKjg41N
ZldopdaAYgnWjW6FbyxhkV4Vn//tKl1G2sWcZUMr6wvuZTRZCo2ZLxh/JKU6wZMENGERzTQZVtkz
511UljxPEzj+9E6pLIQpLNyqUjsy0pX6+hf3xgRtmR5AhX0i7ZIrYtmv+Tn7ZGm1Z0T1Mu8mIaVg
I6OVWPcuv+uQZIKZtVH9p9+j4VDZF08+p/8PVt04/0ThgIeT/GurJO7NOXQEz7ck7WxndHMlEg9p
Tj3xw0TK7SDGNDlZESUQAYbqvWFXcXs26ly8Sy2QYMcUJr+l1aAqRzmgvhSS22nfGN24JM3RT0tS
yINIWAa0unjvf0GvFlJ56o2ALF8XbkiTgUT4Fb+xYYjmkTVmmEfpPWZThtMumhYtk0glGC2qeg/N
ZxuWfh4WiYqoGWwxgDqnr6zoGEZLj2xCpjwEcDW4BqHoev/H2tOR4spyy0Ym98PXFQ4jCoH0iy2h
VL4vh9lHlk44UQCnWIwYKhqBdghJ0zxGcZw9p6MPguxHXGXdhv+WUgc49XGEceev9M6WmNMYKxe7
YMUP3ay2J7If4ZDb0T4cT1JCTiEBijowEyD4Lf6LmKyunRshKM973w4p5nCFasB7r4yyXldJbNgz
66PxuiuxPYhqQ2yhU0Bk/EPFmjJjzodPzWSuirVhaIVGM7v7hdfqCbA2mceZunpwWs24jE9XxvK6
7YVfkyHPGUKesILSJJbWrkhcANpK25sD3JHQI1fdPTJBRzwlpIf3sMkY25LkRxS1D6SEQbC3JnqW
+zBPO+7TxsfsxGSA3SsvvtXNvTVecrTyERBzRmVlZPV3UykK4VWb9W1TzALK9+/eN69xirBf+vas
9H6m0tbZwPs3CClFci1N0+8zmBea5RGyEw+m6rE9MbbTbQBgbiKlJSZU2mt7nnSBB/Ii4MTNhlcN
lOCn0n+fKWV7rHZRvI4ldlsD8HxIOnUMouAg4sQLENrMcccEvAOo7hR/xMPRxVgo5kFMTPFC/ILf
JxyCQLUkT1OD0ijx0S7sUeI917T5uQ4n6cZi1zh67feiOSo0yr+4xt7wgXDdcvuaeI8XHQoYuN8l
1lAmn0zHiFN4xzwjbpw8ZHN2T4FN+IfZHaOOuVngBYKTw/rlgDnMaJGvMnMlG6gawNc6oUptnLi1
EUEOOSZmSymUAuTE2zaomGEo/laqv4ZvlR5o4mFOu2qvlPqpfVFrWV/QYt0aQEPfKp+9c/Y8C6SN
gBkOCQgWtV9pV0P0B5k2sfydLvHLtFVdO4GUYaNk60VrGmRr93RLgY7v5VKesRXH586xlmr7+wTx
f2V62dhk+c1SZZ1CZKrIYIIPUuKbgeX3W11FeK6eyeAz4PgGvLa6EgS+uLokRLrTFBVdbc9c3hLr
yTAshgv2wP40Mi8cg/AJ2pd5xl5jJ3w7hx+pstHcTikT3yXk5+CuFUPxK8JhkEtBnvyixsuYlDYA
mwNcmRfhlcqJwQXj+flSK+HyVOodtEbb/DQ5mxmnIGA88vNZqF3xFVRB7p6JlybtKpA622/k6yhS
Vc/DXC3AY3HlgXrySnvPmZ4vRPAaJ5KN4gNwL01SBViEpPRO5/4FzZGGsfs4pE20l6d8qlU7k9Bo
eknuX1Zf/VLrdSp9ZiL9kSNIkb8eJDsyP36ofSXPjnz/TWYdrqZV0CSfax+SVR4tCGx8Mu/o6jan
RHg8tC5yFA2jBAOk/tHM+0b+N33GaO8bSR4Qtd8iAaY78dWdYMhncIBcNIwEhVjIUL5i1r9dobj9
f5Q0xFUVDfXwT9izoqToFRhue0ph0wgjVMPbQCqi00QkMHxWgBd+NPJzGK14iLdKYmze5Fj7ShqC
/B0Aqb5OSK89PivAlUz/0z2AVBBJTFfJOHFIjFSZIeuoz+qHeaIbYnPMad9rkD6fzmPNkIr46n5F
XCTMvO7ri2MeLcse/MCpbUoo8bMxFg/kQP0IK4UauR3SrK6sBuJTTjDDGb66fUcX+npeVfkKAZh6
Zvcc1QvpMPHVGdvUHf2WsGhljF0DqDyKYSj1Qmbqz4DyBxfsXipxm1kYoQAE/39KVqLyIz17wVd2
WT/Z3qmOuUlClgCRQocM/JdvVzEuztJQ7MgfDytVPWJhlZ8TYYhYvKle9PEI5tO2QInBWiP9Xz5O
SSeEYqHswExCt0EChhdOJB2RYKfXKTvtwvJKySJtgAyC44qHifK6eoCA0OPEWbY5CTFdwPc5QB64
/Xfbi0u7CTLgIb6lhdxlzan/eIzNP5n6fZTACyNGptaJ8JYTqjqPX1mv2mbybHjRLWAxfy9KQqeD
L7SYJ6RhAQz0qv4DS/TUCeP2bDjFELXTdekQ3QHbSI0r6pHLRxp+oSK33Mcy9+S92LxqTfrwZq49
2RXDPaQN2aT5BjQjmDeJ8TRE+oozbT5QSTxGyQ+fvYfbAxc94ZnHD5rD7nUv1pFqm83367WBGuBo
NOr19MfIouCosrjvV5Z600cfq81nu2UnVB0/pmDuPPJs4eED5BDOrCk3ahb0rjQ50dZVP5UVkHKQ
7qAXLfo8A5/I+D5ttpRfCEIehpzBjS2JD5LM+H1R2kdmrPllxsrib7ykY3Zdk7kSl3qONJ/21glr
LTedd2R2tKSXcwan5mrgBjNkLzGESidfCeTzVqdsAkaW7lvHqk6Z7ksFPXAZwTUo4LlFHvSIrpQU
D14DgdcUWWH0j4YzpmAwyEpoK6HGQSEKkEbGsxleKOmfiEKhMBXyW6FikW9vH33z6ltQVrnvJMC4
mnywz2V9sYEdfThc3PC+LvU1S4wRzxmSca+LzKcDAAMsFacN56blkMXkQO4I4BnkaY3VmqnM9m6q
1CfM5LES0BtCXkYQ9AGPyJ18Vk/UpjKdOaov2tHljoIqAubmIma0ufGV8jxh5bMkUOSuIbZoMpYN
IJTSUlnDLpoQBXie4ZV88NGxuUfxpxqYmH+Ui+yeasksgIKz0oc+H9kqoPHrfm+gqMLp1e4OMzs+
/wXHEupBzjrJIcl7Y0ronYtEfGCGRURt8e9xhOCRFObtAddb5jq0VqYB1WsgQJ83WYo4N/t52gPn
7jGGKCY8FLCEMHyHNpk7dmE4puVDjsUpQjGkdqQWNTVsnCr4rNx7DYnGoKSEbNlPFmZWecdS1Wzi
wf/QSBqU13t8t2LbxLmnDrILIQcvPPOvHroBXFj6kWzSoWX98Tqk1N7bK7ImbLYoWuPZMHLYCck2
xbZVAu6WSOi8ug4jpkMdnoL1BUb4kjAgERtepY3ocvyp+LBE6W1GdYMx65AQJ5gONcnzsBPH5qfj
R3pO1V/Tzd5CA/v2kn2ikUgwAP4nyrRy6HBa7VSPpl7LMgI4y8gYpgJSNtRUlhVMwskr3YWBDB9U
7U5a1OtxDtgsZ49pS5BYupkOqVI6PAt1yUajtY7yk9dJPgRIGJaiM2XSFLjzW0RNCTOi8NsgJ2Gc
nELVrzZR3RJqhZj4wLWEFvQsDHLMDOQUdSGhQRKIrcwpSB1+XtgBhgM/4Xzf9y0LZZ0k5rbAJ/N0
T2Y90eo7jmK0uno9lrl0aUbRLlLnJpqW0KW06TDPnMZaGh+K+SMACwGyJKM8w1HEtFUxT9C1S1W8
I9jrubZKMW7NPVk8ECHfDA8CkZNreoin/ahbY94oFt4QrTk2KTh88+QxD+inJbpH+Ng4uIqn0c7D
sVfrZ6rZfwC1fs650VA6ZIDCa/SdH0Z68mexYs9iK00Aamdwby4Vy2LREyAgGQDYXTytx5A40epO
/pW85o7uLodhVCEE+Yw84olY4nqazh4XcOiNQF5lO5eGtnYdLEoNqJgs9/kYJ10WvBbOT1JwB8m0
IY0zlwg3cWyh/Ushqb0b1pL1wSNMcE6CUiy62zROLGUBojHGmp1H3rm55J2p40rMpa8WpU1Kx8xO
RSfASUsnrYR1yZ10qKgGEzk1DIVo/oWHlHS8P6Bynn2qU5xdtL/34ybs1Eq2WFO2ntBeNFT05OH2
eMxPPOZfn+Hw4kQ5iZ1rYPvBgoESLBQYQlqkteVuwIV1i2nYh/6Ce3FLJxTFTuCMl98OGBh3RTLP
BOV9JLwX05vH5diLf4gzu2SKeFD8b0C7ctpyPhfJcmMVZdofwwm3n9E1o6d0VE41mo7xXZBQeoWg
WT1lkYnXSSTZFQBioViGEEBDOspYec7m32yP60U8DG3hItx2GTadwqbvMvGF+am/Iq4ODfVmhvxx
UaTYsic/2AsQDtg6teAZFnLAKlpwezufuII7QFA9DqttNu5AJ+DyN/BuI7xdSFB1n+T5ADLK/EJu
dUDcrwEDE4ERW2WvZMyjrP58WzHREtELyPcITakuvpYzRS/VKpd9Npmk+lWG4qXqaXdlob9CrB+1
QDsQGYIPmxAzFDv98NUsfaMT+FnWubPXCW34ay4tBkiCCTxstW2j+BpbFCe2IkLRqolqftGL9g+U
bxA3fawwthHdFPLNcS3IyWNQXTD3n9IXCJ+xJOk+tmfMqOiX9OnDqbNdg2Ag6Bxm5upYrUI0+io3
ULD4vUTlwqQZeheaXn8vAFCltlRxoY1EiXjESru/cdT65azsa94zC13sQXt5VQwe5t3NgF8rN3I4
IuoT4i6l5xVlR7y07W0rQRWEO8N7PQZjtddNtq7kkPBmSah4SBMxWYr7Rv4yu0056Lyg/fNTg88X
+rM1XfooOYexhUMWh8BofoM6rIblRI0jPMmlUeCgDAK9Hi8+WFsnOSfwCc1h968VCavpP/gGfs0V
P0sG8O02hNOfOO8D9Q/x3Vfpm3IQuZkZRQtIgJcE1lbebDiRe5PLOU/U1GL5psFIDiP7vSdHzWsg
y+Y6JRdVD30f4HHeYGItYG4+dMO3w06tZ9FEuIyuXStyigZA/RgN3x1eKdtFHhEQr6Wz4ckJqVpW
+nPDL6NXDNRWDKRToRyGHEKNZfLPhDfOSkE/H9BeIN+1zcLNnZxigaSHTrYpHRDsLTdJ0AvoJdk+
5fyyj56OvfTpKDbwR41diY4j7x6LZk2v1GXn2B6gTX6z1ehc4vBgV1N4UNFs4AIVcunFv2HLe1Z9
/ALl8ZDJhjSpdGKpa99oEYEM6IYHy+kygUHHUJ00eM6tmtUu8el6Ao815vqINXFgDP4TbgYRaRHc
MwF9zbF7P42evhtiZmB9Z3iiJ+QvqPlIXEP81UjMhghCu6TiXnqtiyrLQVo8FG/+lDYY18ZGx1eV
sQrKO9yEWsoeQRju5xPYdx8FvaO63R1EcXe4kidb47RBD5BM6deFrNFMIfaxa9q2p/DJe0uTPsav
QgTAZcN8SC/BAU7ipcaengvrlitk95I+XgJgFOGIOM3OYuZlcZJrJD++30WbwSWQl3GIjZFJr+3C
8Gf6kYv97QoxYD6suoBEmxR7ZZfBtJ73mmFKty/vs9T40t0efzgS/sZlnpJAJLi/zPORuvErCm8n
Ko5HJBjzccUx8TyUWRiNa0N2ecH7vDJJOR1lRFfiTPlAgOIaY+qDeAjQUNvq+yg6fU+Rc/lF45/0
tF+QN64KY9uhFnu+FfkRyCOCklEhUXVlWcWzhCgaU1Qy8hF8S1xw5j9dPXbfrLSj8jb8S6nEJI4Y
gasx1E/r8z9DrKvIZH4iGrRGriVOstGDgklBpgtfwPbVvXsIJS+N/wJtXvUlWfZKxCs+bGJcRgZw
/qPmftzYjATBh5gUTTrKZ+b31sDoPy29S3RziAsac7UZSCsN1ufAISQ7keXYj7RfL9rgV4MpnjTk
A248Sg3tTWt5S6YgqhYXiyJdRUAsyDq7WcdYhdNEWuWnaoXwU40eBt9dXfFEMI10kmAMejWJEbHW
YK/+rgoNuaBXig/5Z/JuQHCbvpmMOonJ0pW/5RWXrLXqElWoCfRl2k8+GOs3Tw7vYCirXVmB0Joh
aZO1E1Zh283R4jW4XzFPpZOhTBw/cFs8hYPxEuyxQL8D79gbP7FGJr5kLaw5N9UF80zADhJCCN+n
xzpVzIttMCsNGOaqUJZ4UZVISK2zmQrtGAl/oL0Sa0Vg8pv8cAhzBnM8MlWaUno39XJ1LFIIE6On
hkSNYs31k3gvuQhTTDoU6vaJtsl0MktwuKaA4n+QZHGKYfBaIYph2faZor7jMZ2MY2pwz7GfLnXX
Tl3N/an2snRC8tBxZeZq5k4n3YkkBrsLEBqAr7W89wyOhB3D5RMgqr/JoRavRSJVDNE7X6hLEUF9
nNoHEnB8hqD6yWDYj3Y2aYkSkLDm2ZaaX9ur31m3HrITbBSbIoLNkOL+LRe7+EV6Q3qrY08mUtjE
zyRr9bG2jKQmowfsX06U7qpEA9Vnxfw18xlIAaSIekJ7OQtofRJIY4my/4sGGmWeNgm+WOs5BOxv
psEeabwNo6C8RoWQKM4/ENRuvu4tQsceUCaaNkzD9pG12W2srsfKYhMU3hi0F9tJz6/XZ+AV8L3k
dM+GG7V1ujwT+0WoMssLYESEPfvYvNs6NhPIr9TcEdOvxVuxFdKDl2NboHGCptT7GUiY2eq0/DjK
ocJbHTCnY1AsWSXT4HQo9f7cEMnHIoH03075zlb9jNYIqCoUvVW4pn+V8T9VT8ilILQhC3fdGGgy
dvBKHZoboV/7Ra7Z5PQ5ngCSW62bd8ypA1t0ukKAFAXso53mhcUGXJVjjvH3fPcnVVITbLc0VI7x
89+zRDTdktdMiUfHs7knUk7jDemyo6FKgcDUIHkxrIlfBh8lCksuepw6hQRVOFJ7W1jkY9yEUrn0
nwNnUZ1GibhRhI05+q8Co+Dvm0zECs4X5QWysN7WLkh+T/t5ibciMBowndRD9kjO7M0M+/1/bySt
5v7FIfd6cQdlZwv0EoOLAyUB0KgrragiPkJeY3K0oZJ6g+dvkWUCn5tiFp6YSEWDQbEdudc6K8w5
w9HRfLWKBibtLR4nJbo78JPkM2YVLlw3JhMdXGjgNhKJ7pXPvorSoOI9zOIEZjW8UaC8JOXgEZcm
3VQ9JXAvFQCrqFvecopk1aiB5gPnIczxW34XUBO7xuLzXPh6ws3acQBu/CdGu+qPHmVXm192isXP
wVYVO5qoJJy4jkQvaJg3AjDM/OpXBrK+pWWCDLMG4bZRk+o0VS2VzlR/mcuAWkiAVCODTdJAb98a
e63WcNyCYDb/k8ZS8JmcdWNqu02ZAeLjjlwAe1a3UjPzNPWrMGXW8TImfQHaQBDWxnBz3FIE3WZP
U5jM6GhuLS3jyjb0olJZn2fJlFjbH+D49Z4lkMYEfsRfuQZEAc6M9zZ5TL1sF+tJYutWC0lhHRqm
dLdrNiffDHfCC5dbBMVauNkEV9XvlFuQOD47UGG+IjeH4VIbZCVQFQyOZ76mUUawu9vq3Kv8smGi
/Z78/bNf5FZLpg2R1oNHtOYTEjyUHsookHzJ5bd5GBFGL+0F0VpB9ArGysywIUzw62Gmi38/5L9U
nZ6EpZUKckkd2PLjGY4y+d+xYlVMZlDa+AO3bWb9FP8zfennhzKKyFiciUM3djl8/S0VgHajAQgd
h8ZgrsV/Q/vzNj5XmObdHSET2nGIqfPE0Y4XcP/icaAom22xzAJUHxJavTUEnQ1GeZzE2RaPQNAY
5pGW6poJHk5gUWfGeyCckizbkqVC60gPS/or2N7B/h2l6RfLsnUPzic/gOW7HNEB8991CgB8qLFH
HzKLlWsvEeYpInmUZh4vXWmZ2C3pzNrI8AuUsDeqmwfRgv77et8D4etivQ5pDDVflW86lrfp7FUa
OjC1UgoKZAockzVx4xiAmT2JxtNLobroQ7gwLDOsdq/umHWHUFlwDb9HOBMVHwku6mIEQlj5UPBB
H0Rpb5nOgsz7brpidVeRVYC6XRY5FtTEF0CfazrUIkxf+RW4VyR97VRfH/bu1ad0i5KArS9WLFWs
mWenEbKN+z8ks+icYy5OeJ3X+/lmGsddBiwFuKlSajlWbIKRe/gHOCykpHQBNQI+W6mFntfkDu2a
He/FhhcPATDQcjmwNvcxeUJRakWuQUvjGrSGMjqHFSRA3+Any0eL5gL4DccXOfX/eUVG79eQ1Oz0
Sva9KjT4tlZxehWUIone1t5oToGZo5hRyTuhbdBUhihjX3WwSKlxgX2s4bF4/tGc0OM7aKqVZeLe
dnLKn1/S/3nVtDYvfyN+MqqiwVHZHkqyQUMQGzlGCjyQpU2k+ZrDxUbmcfKWiPE3Ana3RPz2wsna
onmnX0+chSUIHJoJlaUdL49qHrJB6FkpMVhsmqBrDeuXaADTi7wVDjB86TUk4uUiMZFK0k5S0bym
j6l4YO63rr6ST0iFMLberJJQNSIQQ9U2yPWZ4us7Ah34ZCfU+capkCqVQEspRYkJ8g0M1p7uugsF
Dm//5tT6VuKM3WPp2S0NtwQ6gE55RMaHUy0MEA3qlaaHCN5QSyU0FNeqoc8lL+kx1C1/aJt+sbXX
ouHEg3dRggY+YhHuUitgGvnexJNl+ET42vZG/EDfX0TzLgjJ+UUSBEODbAyjuL5P+kENrh8c+fpz
mLraVu55kM442tXlM8yagR2FM6nmuVkBRy/+kHDjL433ev6yF8t665WQqbjpyc6A0UxPt+wl4V1g
aH7iwExyDqgNR6kO97QGhuPVPnKrrDvG2wetdQ5CEMzqk0aikJ03BZ8p64HkN++JQqsLG/6jcwTl
Av2rpjl1lRhmmLgdEcX+vcJng8sWqkfwMb3hiSNnEsaRcJ9nt+3rYwGnG8p+GUQz5RRYOPYVEF0l
yLXQ3FhnWKxMPEG1gss9PQGkSnHpyu80QgDFYuoO6ekAftp8ZUvIvlqMa31yfNX18yMiS84q8+tA
6N/FflTjorsCQ+T213Bwfgg9TaUwjR8k9Sxb/vLKL5URSKEOw4wJ1ZkKnRQAO2qnaH8O0P7mNguH
s873vhYNxI5pAxHYTDshfrb1gZLBhx79GhKYlWtB+XS4MfEHGdXhtHpmx1SLd5saGN/ajqGjpqFo
UtDDQBstNAlykaShmk63pdKa7rfoREyysJRSWxIseypd0sCfZDqGXfLMmtD41rGzwx0Plj3bFwej
zfp67WXgLiTWtoHK6sBxlB1j2Pl55Ie52wLFmmx4KhMvOSHfZRfkBpTeU26pv1J0y3q277KSaWA5
Lel6LeZvEOutsUFT0rHj9Aes31F6fyqxakltI1uwRZGHjLXk1qPDIZgC1AfAyhkx9gkVwJ60Rfx7
lSDFSzUIRME52Ood03F5m4m1ZE+a12hmQ/KKyniSvpBiBr8ta1hqeSNzPvXgnHiOxMxqoN6dG3K+
EqQIinkrqndObUH0pTIW1It1jvK4Md7/lPXGUpau2LlEySyaQmjw//oMOaxmE9K4NRvzWhu0r36T
BBn1kozx+t2/rDuIBbdYHjtWTwan4xE3KT46EbeesgjebRSnLcLnCVhcK1WePyfOKoKA4PyrKHlQ
o7ois2Rn2r27eU6GQzgTms2of0ffwffrdvR1T5ObTFpiCCquMUWiba8s//TkLDjtzzSCmsSbtHnp
VapPX8ZOoqBMnTK3hbMh9ecHUMxC7PrPZulA45JJF9uiebLsFbPIyrQ2Ozp9e5hG42rr8Ybt3uhc
5WG7iQRM/zbZvMhFPqE+Mkf+s961tMKvBfV0+2xxOWrsxO8SC6/AGB1kp1+ehJmQc7bDGVRLfRj5
axdLVY9/++JKevagDqkFPm7xW4nemHpChKQmS05sKmsSTguK5B1nmBMPl/9hVraB+Bs3n1DWHVuC
aY0aG/j4l3HdVmjbB9To0y+tv5kvKuXo2KqH6DubfEkSi62t1S3d56bUX2NrRTbLT8iq+lMCfRf0
06kqTHV+BZlErJUGXn5kHD7ihURZoLAOP4rlIwMW1VYpJk9mvVyzKcjtZsySOZrQPuUp3j44jMm7
9HOE7W17+O/NN7CH0ceLMi0XqpQwCCS8Y3ZvkrLq1pvcIxex/TTeyPZ3Z0S8xKdbrJ5zPDN79qC6
BIxNNqlPd+2eeuxnOyE+R6cBj1S7/ZmxITSxtAB4sB2c14Eq9SSZfYYxQw+qVJheNmlsY7jwvulb
r0OuMeumZiXFAp6Ud95ty2SticKHGdj3tgyOHfDtIdu0YN2bbZXjOjynVr7MbpZK0ucob7fIZhfA
kgxsvrXMpvT/d1M87TsrrzCYK3yASrHN8WLheOLGJOfWIeqVRHfDfLm1l4tcBtAzr53pb+YMDJH8
MtRuyLIdZk3vusdgyQVUASj74NB+4eI0+yZ1pOwaPuIok+qUezS9O/WkmDqh8KSG9OAug7jeFens
L9QjvaaZRGvAvnjSjtRrcwSk/bgnR3f9mbKGtTEs2mpNAO+pnvfDEOrR4GvJoHVjsEfLtrGKRwZf
R+1YICuRaoVF8M+Ll+qajuTwVg795e+1EQT1o71o2WXyM8HTd/P0rt91rWG1dwzW8UUPRTn2nKc7
xzLrjAWrW0KOum6Yf4Iqcg2a0RebvuiVxVgIkoijJTJm05WNZDcbJmNJjiXE+Mg/OQPW8E4HHG+7
qwIc/nwSbh+lheJ6eVekklkEVZal0hle3WxfOLPH/bRgG83pnoLR2uNyaBF7u8OAISRsTcg3LmVy
88enK7rLRAMwCBZbhImTnV6YPg4ZnMcumgdfBDsd1Fa+RQUk4fQ5SqLugltg4azE8MHtPyhC22Dx
8x+UuhrEvIMGMQ0FCDSrdhVwfJo6SeujKF9hHiWpZKzYyoPFOYQvMZXYqUnJIxzBiVhQmgl50asi
ueZvGDMd8i2AFSvOFOIHFu4rQA3RCgVIw/Txh4pwUHGE7d93CcodJRLVGmKAQ7fMqL2WD6zRO3oY
uh0BZOrdH90Wq8lN8w69l2k9gfoNxmRWIhhX6Tp1ecUF31cqkoj7p5h10w4GyqCv80NWgh4tpARS
FLlaklr4z/1kFCUwjexpSvEzcBXMgFfODeE9T3o4n6My/sgJb5LBDThZliPHhPO3AqmiCCqOWHhV
EaEv6OrJq0ant0PfyN12da/qQY1/QIYd36pcT5ZiUNfZnAmHkW+vULxwqkU03VsSbC5GpS+eXXOq
oC3jBGeVRN07zLBrhqPBoCCoyFh6lMqIMHlGqGIk8PIkJx+y1ROv+TNqmqu+eJVy01+FqD1sjbC7
fTVtBzWKxDkvuLd7AOcLwzDhc05B+dGzxjy4xMBWBPrCyDm1mDW4zIH+BA4ZVMJO+isrgFoMm//5
IceOZaeCPsSXFwTMJuKcK7No67KxaXxnpgw/YwuDl+O/U0wnvFGR4pYoHpDMi7b1MN79LlqlRD8R
oBW9kuJJdc+FR+F6utkHq2QfZLjxMaFXnQKWBctLwLC1PyLNQgNZcCyc4KP6jSmRrPidxJIqTm1K
PU88uCA6o50uy7+lWOMMNJyEgN9Xq5ON2/mPZ98pShjaYBq2aJ4p8mkM/hxoooMBfUQ7FhGjm9y2
tjD+JBgaJd1G8KLOHS9zT/Bpwu4HcL+f2iriKXGngrbO2cAiguc24m7hmfbwJlfyzAwBuCExq8be
HUHghTexKVaOc7e6Qeoti6khlwy869nV8RYWZeByrgKSrf+ygSCNUxhtPbZgsqOStYcB0V1tuDZV
C2S81jjJ15IE/f40Owge5cc8Oyyh6sJT3dp1WKGc4VeI0QTD/1/cfYYZaS9l8JaRbesiA8HKnKeW
0DKqh4eFq7jjW6IHpffM3kl9RiN0f4SOPefoTUiZTJdCgwpplbOuLbddsOXNZWlgNndTLFeChNLt
UFvOY5ipaJaP/Qe7V9E3NIjjRktFZgNrHiI97C+wDqKcEnRjunjwKvzXa13teGbH4kU3Wijxhx8i
5rx9DmMNOCdUz2ITel3D0QsIIFYuhBwfz3RfhDme4gOn29xFD7TcWhvrgDzgyCBtXHE2cVx3EEnB
oYmtAcQS5bvcYo/R2Ri8wQ8EZJ8F7AWzHWgG84pu/ahdWBmO+IhivfIirGclIjdANLA2qtHxw7f5
hWwFsbyYovfdlQs64IIg6VIsMstCoM7n4Lx6jEMTZAN67Q8wMH5YTf+LfVtxCy7LqFgM7r+spPEl
o40N7oeWRdHkO9oYQ+FZheNSXP7uQgZlch1NiYyGWOAJKGmPHjKyyphYcA8LfrUiuKVpuKVpiMSA
yXXMpFkSLxwd503hBDg8rYHM9y14lsYTVlNWVR1drtlNfRP8OxeDkn8Y/1JZv1uVjvyKkJqlujkj
H1tYrscDUL3J7aBnRxnlbooe2ewupcDW6zZ3XJSIXX5T5MjV2aM3+PmjmeM3IbAZSbRRAP0CUEXO
fa2evg4mxe4f88JOJsAWjvN7RyDak3poiSwX+CBqC+ibc/9VGMKnfXX+rbqtUcG6LmksmqgQvryM
5lelVfIccGZ9VTkK2e6MwBMGOxhYwg+pfCf+jPjpK4C63nujYyLERPuK7VLRdfk4mMex7ITheVbc
fohilnGCYbvcMLEbe06MUhgkzErLvKHa0Gh2sfGYz6l1fDglWaqh48YU9xbTwdSFalhF3VP647gb
GpQ2nYh74S1J1vRmm2arguRyu5Ygl7gZOLfyYmVt/IKEuMRRB4QUCTGA8dskHhEccWuFyyOpKK09
C2NT8C6NWeUiyijKgFWmyxJ54MxMhEiaZYVSJOPNOkmHutGIYpOwBUD7OCg+q+xSeleCXRQMo4A3
OMBzquKq+Kj8Z//2OEQDmKE2XuuT+/aJOUD8Q2+8TKdfIx9UmK7gR2CsGuV3cb6UmKWAsj5PZlcU
HXWyew9Li7Np08p7kpFot+Xaq/QyZH9iXCWFWvl+NWj9UmEisOqCZEwL8Y0dA+0zr/UywWWsP8Vv
y+HHwxPUjRXoyKUyWTYgh7Kt+Uzzgj12yEZAdFE4bUvWETUpLCtJ454/RwfDXibT0Cy6V4IhUKct
yEaKAMyI3he22Tl0ukk+jIz5/lLFd1hrzByWup827wUIdEnjhSPYA7c35VIXUZAX45pWeqmoxLmH
8GUeWeCWAXUPOFc7K1BB77RCtl11tbg5TqaPRMw9wTr7ihs82wZUGuYDaTiyzCPfIsgljUtOe43C
J7J8YXm5SWFx7CK05Ft/0zEplwyNJgXsdKmaFw7Uu8Qc9NWqmL2wdbp+5AD7fVpVeyEIZDR7ywsj
7KNeiy5gOtqj4F59FaevMRCpP0XzSPnI01e4dHekYnlAGoJpmCnu3tB5HIrWYOMrCtDetfhG7861
2AmnAjH6R9xQn8Z72CsYhVNUT9dGcKcL6LLOTt9RXAmeHhw4DqrAu2fENwt376lJoUco+OgoPgNk
G6gzFIqcvXMxcz+fXRLr/1C0wMHeydFDtCIAIAseot6dTU52EwKNEQBrwtxtQSrbk1v0w+2rMLrn
hEvdLe2KOSIAGAEzZoWNseUXYAHO2gP3VHl7FD02KwIThLiAizXvWVqPDcpRTVFULglrSiV8HAzl
BmZm2saNM4lXXhnL3eDcQyQzg6HqfCWYTf6TagYryhZdxZ5SvHWZCuNIXWbo8WB69xuvl+YiIkYb
NgJObJE8HpYiDuTN5p1l3srd1yO2hxXFXKo0552RVsmXwQb06qfknEgySsRXaa0FNp+xR0yV+Idl
eYyuVSnClIBreBbuyPZ92t/ubvVqjANJJarNyc1XJ3Ayj3cLBGd6QDKaxa6RDe+sWjIiArtVunHl
77p7fIXVIVwXP5+Y59nGJgFbPHxPLPiaOcMrkGYRkMHMdbmcQNa21C6HV4usN70iMuqPM5RS7+RJ
zXHm6yOha5KiTncDib0NPkEC3TBNQfqrmhKRsMbX9hZR8RVokAmQzHqQR8UAs1T6mwO3YR+/x56g
qWv4JRVpr44VONjMUNLnV7/e9KAQhy9gER4nktB8LCYDPRmJvHRtIN700IIcSqzBHH11WApP/r7F
5V3XSOd6GMJ56mziU6hDEvLXfdm4HvhKSBCKoy+/a3orAOC4ER5G1r6Xj+6axka+Ec/h04sDt6sc
vFaLA4C6W6mUr027c58NPoBkhJTVo/UuYZe7LtwIMzcckJbDETpC1Qn+s9ToarxJA2QL5xnr9Dh5
ml/d4eQ1E6w5AGrgIb/Ecog2pcjn0YMT9nk4T3P6r0p8VCWk0xzfeDvxEBx3ZUFK+xUM57/6/TwV
gNVqVxLZrOFsK+81ANT+O4hFxG7tpGdr/vsnqf0lDfXIVYq9KuDRD9/r/F+l4OtfWv2JSRTY4sVs
J3fKGkEXVmYZVMiClVNjzRi8UzKYlO0abLD3KgByqcN6+8mutn1QW2ktLcc5lDl+xIjvKiQ29pw3
ggoCwum4PN7bDG5qwHdeJxDB3fJtxzeJ8skRTq0SslWbEh1WkbEGca6ymSkwxgh/t/T8BdNSaDRt
V7DHCK2hG/hFtY6u+/5zK5fh26ciRPe78zjiUyoLUypiR0lUngxE8aKrnOdWlh/51+PlTFP8fBq+
5hxSUxHYu1o8YSpNYl624SChqAF3u+InLwpmyT2UwDKWHN+Uwx4a8MwZAXbOWG6I9hh1ybLPmINS
6M5WTnWjZz7fWyFy2XacGK6Tgb8dR6a1e/cyfT6uRfNs2vxTeggK6ci3Bp5U0sBMYiyp+HxrYxO6
Yluhpvy2t6hZhOyapibN/0dRJ85T/LujYeEzZ2xVA+LgXHBgU4pl9p+Zoyvq9hOCG6ZQ+ZnA90Oh
HloyFrScSHXaHb3dV47gBPkgOcu3BGT/AS0UkWFCGdP9JBJmdQ91R1ASuzc71DJgNqhGDC/Q3ROj
mhp63/uoegByS0k2j2z3O+lw4+b4WoPWSl8yjh1zlNPulvuCOoV+sfaMCpPfYD2zCp9N4Q0oHkSR
Z/7Rae59nnHDr3PbfSP/lD8qkbcp7sEmaPP/OFQK/ZJtog6Tok19k1e7FQFfSxGeBOxYLB0N2kwS
clNNbadQ05Is/iSwU+VAYhXwKyxU4b1h7yg7EP+kLQoGL6TI/8BA4B0mMd7n0uE05UCPQA894Ng5
JghGDP4nosSg7F9cz01Ogjunh/HNkjtTjc84EorUKGD1Q8F3N+nzgoD+wd55qKD4A6uSR9uaCdnc
FQh75JfK9aVscKDvncnv6IjThMbAYC10XN/VM3yno5IwBHx9UfOY09I6CnSCttL5QaEpBD2Xs/rK
c7xqYkdGETM7NaSxEix5QlXwqkSscMsuIy8OQktUwfwem/Jpw3bOM7YxerqELztdSsrZBNTwANet
oxa40bjjUhGYHjOx10eFE8qHlF+8SBYvfIzkUgOlHtDrOfCnuZVDwsD/+lfd/HPJ+efUS2sC1xYP
eBJCJc9JyW8z1ahN0BodUP+6FbVQ15p3XJ6bPEL1zpT6AAD1oi9jvfT702UxDbOJNRHRiXUjoh7a
H54aARb//bwLL06g7T4+V9+oqRMswuUIv8mcTJzppEVmvgRtTO68K9Vz6NXslu64DQ2TZQgqaJ4Z
t9yPN5vJjvJThJbdaFdDd1N/86o4Km25zDQ2k1KYjA/f7XzPTifffQFRyMill7bYkqJGLMwFCDTh
/oTD7J3ut2kBDk62C/RBDtDIScVs8REBJsmzBfzRxuJ5LXZKtgec580lL85tahhMZD3KyJEiumR3
ODAl1W/defZvdhpS6Xsczf+nVLMju7cEHs2+v5XKTzYpTPkqYXeCIHAgQCh5hZSkm3fItGSHTXqz
9T5xr79v5zpSJQcj9N7ZjLXK9Q1BDXGA47ChdJ2JxzvEhUNKpQp0niDIWbIAqU+4PcUiP0k41mh5
Wiv6bqYZHjSbLd/vw//0QNFuvIJdnTEBpcFiosvdAr+n/uEcv8F1U2VDpTbKQy7xnBC1CilixHoO
Oprv4PQSut8XKLWkPx8jNSr4eIkWRjHgFQrZmyx0el//gWdTSNyWEgJVeXWmzrg0yU02lbi2tO//
DmaNVZGlfRI8g2L4r2iEGOTydWk11gI3wEYLLH1b8hxts+i1y9umO6k8VSlGMbV6rjKUzslbBoSs
qN4/DhhFeo/b2O70zbziLY6QANeaJPUNuzFZGrKG0orxjmjRXUbHk3CH0qf7xRQqNb/dhxkcQuz7
aDnYxFfbEDF/7VZryOCGBAXJZJ7wnFhNsaFeRWKiNkTZlk5CM8xoGLfZXSBYhLxuTmV/XjQIPR0F
TsJD6WDB0kgC+VYCEHAOkU7Nlqcs353C5/YyqZpBDc0quP6EX8kMQGElODZi1OkiE0I8Yk/DaGzi
aEpfV3DMuMo0364KOblEH/98a5MEZ2Q3uQKj553sxo6m4VEkAy9qQjYM5lOe/yezuFqedh9tK12g
2/uWSOBx18giBvfHDfHssnzv+Fp0zSzJ7HVPMh4Ts8emtU/8ePsjzwoUswmDgs9ZhRPMMvKL5Hhx
vwMthNz3R1eLnW5edwi6OnrF+TrcRoJUtnDwFmfLxHEeYiSh+SATl4YrcE7YaASRgXq8H7gKVzTp
gFIa8zw69ewCI/DQ9bJgOdmtdgwRloDvldm1iyitQyFv5JJnAEfIAltnXPrWQUGwWx6S76CH65PV
thzk+FjFQA1WpgPPCBy7yDraInJtEXghpUnHeg80KU56MZh7Gn39e7WxEbAimZHTk6EPtFdxjAm5
ZifHXk6GDl8C+hO5YnA/AqT/91vaXp/ZcMDd3rlgwqXqwbU3sw2qomUSC9r4xwAXPuIH8aUI+uNm
kIq55JZAYmKWvZIJHJzMf1OLDO7qAfLWaiqCIRL/2m1nimy1niKxylFcdB42CqzR9y9jtxXjwRuA
Xz+nvGBDfAHgW0jPEpnaW4FPBeFiMPIZ2699hzvEwJTVoi2Mq3ERHdVrTXONf/K1AEwEVsi0qgya
ftyLLCu7pd2zj+v1AbSyQP9xWlXuCMGgEzz2wN3uv1F9h5S+coGBRbXZ3zTJUyum75abxjOtS+j0
ETf5+l8+CKOgv4/ZGzZmHJ+z7736wdw/j0tqLiZlIspF3Ava+WQwYLOS5Mr9FmDDJmD3dsslY7qB
xWPsIqA6Y3LcHdW3h2uobtayFC79CE325hWV+hLinV2mDsFc6zNF5VUaetDTVjoa1BKLi7M8h0XS
YUOd3+RbSNWZFshH00nWu7mfW1kdw0k+n1D8V/Lz8D1XsBrzOoObHu2PQxYZ+bCUlr3mTBBf/fqu
+U2NZuCe78VnSvzrLSw7svIy3JQfG1mrq69hrVJ+U1dtc7zC3pNpqFVvvATSbobsCUAJ4mcMLbdG
JEbttfUw3ZK8DLK0sZePvEAcV5m5iYocfg19leCOch/2AaAMc5LJFaxGj3nbaK7zbQdOwgLtbhAR
Q51pk3taPsHkUzjfUTU/ObOuobO0GCXxOJb/SLDMJEdAB9tH1m7JLL7yzSEGbGM1225m6JqePBZC
NnFLKXqkeV3oQyC/++jIfIjIwV1YhTX7iB2H3Me3W2vMBrMb8fN8asOqbeObTAaeF1W2r9ruA0WM
TSnJT4Eulboic4vVfcKWpMSWgGbDn650w2Y3vaE258t95U5kVrZX5EX0xEmunkCrUtuqyDZ1D4lx
7V50ykIKJS04fRtKCiEBEBcUqvJEf364/53EOw1NvMU33knzUVC0hAxBpNJ8PT6FMVN9TikJ0IIF
/EOOiU4CU3LNVEEFbud1xPI9FwPafKVoXzRy4BzA5vV1pDBQpsK+If9ny8j/n69yUCyn91sIWE8F
9kUtRbKa+TzL4RBTaUfaABUZCdDoRVJK7anbhvyn50Yy7zktA5t0RRLsZX4IB+ACHzihH7xLlaK9
ht9R/Wmju5oYyXtFns720Az+kRQUbXVZjv5AwcVnKcvaL/qym5yty42lhE/wFXiAFwnk1D67GFKp
M6x87kSNVNx//Rjj8+QEnL48PsWAmLZSWYLSXNZMKA4hEg/velvTkm8pvdRfMdf7Ushc0C2lNv1U
qaBrIixWXZSuKt+4iUIZ0Nk7Xls0e6B7fJMBAyxS5xqTj6CfUXgbzS3J1fCC7xbjxMBa6iykBrvR
lB9TjsBlo44hzxNsff+EI18jCT8/VvN53VsdsQdx5VAI0XiyG/k2STWk6JCaqeNzvAnuqvDITRF8
/GAXZjzZvB0Hgsqd/6tSaf2J7rY2rJ3XlqbXTPQm78hAhIP5Ct9OV7gz1HbmbSEYTZvpWu3wmltN
JSvg0DTK8g4RIA9xIWgdeBhKcYM36s81ZZPMOqDPfYbkMBHa9dyUAiXud3z6HM6kEMU/7DPnJnZd
QVYHD4I4KGfdIXA7AGwp2fNjDDK2Q8SEtNv4TFs+9n8YyCITx9nQW0oZ4Krgxx2Kb9pvTvQGloVM
Jc3krrSpYKkSwgQw7pFBUyHqtz5i/YQ6aEv1XNYFPl1g+S/UaVdiQkHVh3UFO2W7f3AFXo4Sj6EW
CB4w/DWCC1s6hoPy5s9kefcoXysTCL83NOJRwkHUBn/FpDaEoCV/jdJPeYsQbvE56G5ECMYFLU82
3d7n23Q1DksPtz3ir6ZOVIbmLL0X/ycMJGM64wZma8CDSt7oioGr4LxHcTnNdi6tNfd2FxQsI/mw
JDUM/FgcdI6NfpKAyfCdGkT76sr55yW0lfDWSlrFj/RpmAljll4rI8/yu8/guO8eaMExS/+ahKIY
h1pjLt5gV2rBksxJ7G/P17ZORZUmrrZVi4cXkvBuBaBUQ3kokgNr44q2nBhNQshVDxYFsDwd1nNH
s1+uucxZ8Ti07nu3re6bKASjeCXwIiB2Y53tfxkLQcajWyxxtRXXhIGRdnG8IG40x+869Y0nqY+l
GT6Me6xTdjEqDJmDtjTxubUsbU+cZ5mnY8C7vgkTi5aWyqnMQQLwZIwWkGAVqEWHDsvzjh2oVz2Y
4aUUTeWLhikpytUQKx8atZiCZC7vUSuD39dSnfMDARzMADO5fe2UjZqeWfMP+XO8ljaTqE7XdC6E
wu0liyfkzuGiS9kk2Sh5BBqb7Yg1d9vbWPTbu1svOaSJvBfqfMbcM+9ZxxLSvTzzBdreKafz+gg+
GP7fY/S59rQMCGhRqeYDKCy5v6Hn4xYSOKnYarPZryVP2EMxfhwdQwN0YV7vcwCdlcylBDVX0l5l
4aJbaHY2f9FxQ0dZWrX0LUPXGEVQPZXD2ID/33+84RSeCk4n1Bq/c/6vwYHLsYtqQ5qKlzaS4fjO
N3AyJS4TEJwkCMJsTX8VHnECrSTEHOnYMd0nYqoYZD1e+/H19+/0ZyEasWTlf5Z22d3DSaDR8GbD
o9MFW9m34wze8kSNQd2hbjPK/phOOVPJWuEd3qdlFcrgs1xedtzhcgD8L8ANoUlBkQkuKah0Q3Vq
xbwde3QfFxr5zXvLBgUXfSeIzwBQTctrTp3/4ofuPrutxvshnsbRoQ7J0x8mBlx4G0IzWkSbFawF
62oDSj9ymAFHSJD1Frm40km0MTcVbA3Xv0RT+Fz013dYj7/dIZFur4Bv3XLpOoycCbLsQRvgWYU7
xmftehY4tjAubfONW5CoQTFXdu3PF+H+hselrVQbNkoW7KsOnJyuamOmrW65Kr/qlLpKPSdyQB1X
BhlYkY4k0nj76ghWs7YglUzAB+xiA2RSf8wVkUEvtop1LU4P5dlH22RhQaZ3wRjLDE9yfjl3HUj1
anB8UQI2fUW7D7O1ECaYhK9YN2F+uoK8iPMBXEMR35/+mBvzhkJ4WtF/itk2yuwDWAwGUBR/r1ki
JN4aO67Q8XTPHMgq+yyKDMzRVUw4gdUZTOLSDe0RiawNWtKT6khDrABL2U95cSDA+XaSFt3yoG9l
gI0uq+XVm0FCEEdHlpVKqjKBK9Dt9GxyUJPUWfdtnBh66bdrS8XcjJ+PVWo1J7w0QWvUtyFHRcUp
nD3kyjkK4wNj3wLpsf7fkyEUeFShGTDpwtCHz2NJe0/jYtKWka/fYU1M/hNP1/Ix2pLzvUzm6QtO
npNTJuJpRb6qZS45Yv+uz4M6p5FJ9d6YqEd8g/AdYzumQ3qUfAJ+jtsJc0t5r0Vy2kAkT0GZfvH/
m7an74fBpuhOuU8Wz6ZnUCAGf4BN4mq4kFK7PvTeSCBPp5rf5+MeFrbG73yUY7uHaHPnYXcARBz/
Lmn82zDbXImuKjJR1T5seGJ9x+t4qyD4m8G65qm2hFY6O88JPuA6RgOmWFyEB3FWYGXbsdciNYpW
kOAmmlf9g1aHHY++V40bAQJHle1Rk8b4rIderWxdfTuftdeI6T5RbnOz9K7elBO8er3D69Sr2/+T
M1FggDelMM55Xx2aadwQnJjYHffn7n5Xhn9chMUFZz+NgCGCzK6+4puAnT602zm8Iy5WHh/apnjf
pJkiJPbEYk4HiI0kQSFriREUYAmIyhuAoguN1udcwZ8xUPPNz3GfGEGVVTfNATULPD+Hke9Q+Jih
gH50VBjzFc3Xaq7NjChxBOIx2po3fXkRe4sFzZ7BRWzN/Rn3JLP8pbFGk+cf5xccQQa0EwAHPjZG
R5+U6Z5/z60ybsxb4gMA2g7v9xMaiL5XJ3p4jEgDqI/IB47omqrAhyb2r+j01p0cZidcxpfpZ4Ux
pwiQ3J32huf+UFEsYzcRpWeB+OO8nHDiQ6fYALK778qVRoYtKDAQean1IPwgyIVpVhQKDdC2lTxR
Tw4bbvexF196rX1s6BSEug0wDpkj0SUiHUo7ekiJ8BzVpinvDgplU+6qd7gkEqCKfevhijy79BNk
gLZ8pcTKhHtsosf+38DsLKr45Zlbe0KH81t8a/Od9Ig8VAXy37wgTzprJfZ7pEjxdy60JPHuJKre
2y2sZhAGXGTU/lczsDFr33dvL17n/BIUMVaySpZ1a8rs1X4TE9AWGWGRp+ybUHga8IF1kfL+hZca
7EPW1EK6b9V0ayRH/yynda9EL89TvNCfD023cvh8R3On7z5cqfiUy4VXipM4vToxILDRFJQ+sRrc
3303tW5wURcqMSciYTmCAMQmmYEfs1NaA6Vm5Dd7fDLMCPmPFHx5k1T/CvrlSciHSUdddMdH62a+
ikJ3D9F0bHlZGZ2XFkClYYjq2UzCQ5vrOESoVihyeNRL2NnNBliGGqISaJjQbNrSnaUBNfucp6xo
wBxLVqKn4at7eacfVi+2dfLofRwvM0oIfiOwNWrv64s6unrC/r0BxbmA5scNAIFtqS7jlzDECTHF
+ArXEweGe29Z7mFpCJ5vSft1nX2U/gTnNEoymVnQkIWKffAIJ9Sri9Pj3eRIKJfg0CVoKsPbBRty
Qr0NabudhUlJYR8fVMBiqRE1Lt0ITb32BckyZskAYzlRe6HRn/aRiTCL2m8vEPIkoYhwrCig9F5J
fD/1lyUPrFJ7Zj4e5Gv2PLM1/prg4YlwXDaDhUlF++9uc3wwh5/AREZM2UJINZBle9v3zqX786OM
FJi3Eox6RlEcx9CdVkqa9MVUI71mcIZ++oVJP0tT1yQz9w/yM8Dw+46rcHz5jI366dJwSuiBPzf1
+RyPfk+defcovyjZHiu4wCT72pPYSxDQOLRLurIiXZA4r+JEUX6arZ1GjcNlcbCMv+rg5sUm+YXH
hAGZ2rxklvTo+/pQ2tvYCnz68T1RkhADlEzF1cMwSI0uUsI9YJfAMJEgheheeaZrNFQoxvL4M9YS
Zz7oV5mhcJRjR6Sjq5ZXPewMSMKtHTVve6aGvAdvrSvggpPBSnVXt/AOXI2V6Pi/URoqsgG1olCz
eUJQ0E5dJuNAnoRHApQmkRTOOsMo56pCS3WX/H0A9JB0h7j3RRRI0cC/kOmYq9nhvtsOiikKAkXk
IjOt2Col2z5PE2WSdzubC4Nfjm5s4+Wt4oQp48UBkkJ4ObQ9e6Oms69kUk1iXYylN8O5fnk82Cff
/Yqa6NOs7ShdAtxVyOVhLMRXX+9Cmkj9RVr0CnAdnMV/ZG0U1Uk7xfQduHVxhSPLeEQ5by1BW5zw
bZCHE80ll/kJXL1l0BrXlyNzwskw48dyojoNmlmWEuUZuBEsW4Gob3yzQPZYCmbdCJyVwSJKpWli
ZkJBW+hUIO1nUYzVYnMnFRCFDh42rmhD3afI2TL2WDyLfvwpfGGsD+XleII+0YeifLEepE52Xed2
3HXCFzeEw+TwD2ZqV/UdyiMD/oXSanqziKK2Or0Bec7GZCrbxaQvtkKlu52NW/7U45vFFE8oG3A1
z3HCoDABh5/OkFAgoxaBV72ss8GsycQjUHrSfNPAaaZmF6MOynDFAUo4HKGaNl75UhxMo9LI9rVM
HiBudi3tNY4ShYCFTCIkSDACnVeutk1GwmNNVlaUmElGcTvFuJRj0TGBFJi3kMTx3ERhPhbq5Bq/
zocZbKzuvbnizds53yMGuWusfyUy9Lw5d2Z4bp5v22tH1N3IQp3FSVfNGYngcKp7/ncvW7XD312X
LOHm2V7cCgxRAZs7qiZ9tBnWZ6vmoCeHWS0piiSOpbRvzwFadULzdgfo+1Wmo1dSMJf6VB/TLCoY
EXMjaGl+prDshoX+5Idmq/5vKIOaJV2DxsDA69sEryiGfkbPZeJtsjqZ6LpMSvMwUtzD7Io9xJIJ
YOwLz2Y6lSi3M0D/Dnp2GxoHvXcYpSuGvtH+F/lL1um40uQZlCG/gfJpAfWyKfzxkHl8tfBOM0xd
FQd/zeroQFuYHEfQOO4kmSo9JIMUUvEMf8q0fygf+ug3xNXe/5xEMz2YyQs+ib+lI15yravdedub
6ikgUsOuNgSdhMRSvqbZoshXEF6pIkUcEOIiyk2EQTs3EfYCUz3YondYj9Ai+FVZyiPtM3I75u9Y
11GJyW1XVa+xIA5Asxm4wayXwwXL2+lSMlz0fZZDd1kftYLRKilXukhc1KSM9exTssM0bf1dO6d/
yT11VSwvmOywy5ilaMfIvDpuI09096KN7alCqYQP7pm2eo2wyDUs3iVyZpABt+ZRbf+TagtIZPUC
pyouOQnxuhiUdRKet9zhpOxAf1BqZkrB976hkVrxxB18ttEzPdduzDASHbshbEWZfhTHFdYZHWEs
yqrKxLDt16btGDv7uUluFc8Sp1I5N4vMN8AryzCHYOIHLbO7UcRAI+pn9x2zQdibyYs9iVsnnjbR
X2m7gt/Jy4GyR9MrcxDN+QTZpCqi3v1IUyeRVGjrj7pBiG9AqxLUwTTKDiez9p+WICdVZJHYentT
hLjGrDU00tAYfK0owwDOKGvjGQ5vxROuC6xK0BzBNQhgpU5qWHMRQl7e7bDiIfCZ5jYNJuAU1iT7
UpO9AvYvW4DGe0LfCiO3YDGYGn6NNGWRdAEGmDLiUjTlQ7prr2zhc6FfaMCDxEYfQ5ecsH7jpYUa
03TkTxgyudj0e3FrKp8HLiuWOdsBo/YhTW1FdpopwdIY7A5rj/TteJPvxDXeb8yTDty55uBAiH/1
MDuqPS/mCiEWgfhKES16+WgM6wbuNMVjmimH5t926Mbu2sORImDtMPUHyruBDY2sEWFGhuppRBOH
XtLNkYsLLJZZ/sZLIQL40rFIHqTVF06+3a2SNcS6+k+1o2ATBdvLVLAa4oYC+1t00tQOgts5Eg59
Z0GJirx+y0RNOd9JtQqUcVGedYSwjdCfEXhJF4+mW1S95aiz2L7wRD0ywvcs0IgSwawyTtqsJi+e
DMK9qian1mTmDxwa3fKFKnMqNyc0Iyvbli17uhrnEqRVF4qudsSpePUrEInmjwpd933bvqWqbedq
mlclDwB4ZHqu/037puIA5oi+rLRx+/oRtIMSOhuMp0XSOsAUzGnQXki8PnE1Fd9TVanEcL2nzjzf
/FiOxk/7OokfbKmp0tUtOCXmpobuJ1dDHuV+12/DUuQY58tO/BmIkOTMAUMxibKAlw/tPxTCvL/6
cwGvpiT/3VrAHDTlSaqLcHeh/3W2Hjj1N+7FsWS1ax9uCYj1BICWApwRh9LNx4HsL9rrTzVlzUzN
/LgTTxwAb0kObaS5iJhg7lUp8ZxbJspFA3dJYdA1cPF4blWH6d+0dRbYVGLp2D0q36Ly5M7W9I42
2UGSXLD3u1s+4CLP4IH1fgopfg8uLg+alqJynMTxf5y7rDW2AyVIz4aQe1lmBRwSErdjY4EkMcRG
fbuBsPVTN9xC9awRDbEAxhbLltW7W80ws9aCe+Eh+49jq2WHh3zBiRyBVhlVvg1NdZxpGsQfqnHU
ovqEQkq0U0f56UozvZ3BvGnZgEwzE3MPtdwhohmTGrDvicWrqHyjpHnOyZn4zZUpmf18CamEtwW8
0nXpZ46YxzzBdvZKCMQa+VCedNeFfeiUvA4NB095DJFNEsY4nsVRqKrVglnS5yx+4c2HFCEewS3z
PLZPUW+fW4TOgp27k9oRZPF4FpiftGKfpeaXhw+wp6KQsHv/Uy6oKRI7j2JEDxSo0uQe4iZ/NepN
42u1YeoQam5NdKRDXgvqEobYkRptcVqHAHXkLQJO9c5Ns1uqOY226YQvtfpm1Bi02DDHV03LVVQE
hCjyGDF7Q9Nn3UFv5cMavONZZnEou9sEDSWwHxbeq789gPh7RSVPjwCXhOAbkKIhOUzqHGJTfmXO
eAaJ9OmqNykADMXvf3CqCd1ZOvKy5iMl4cukCvZBPIpupvMcgafXjRPJV4eggR+sVOfajs3XoO41
gOBQjf4UsQMKmenHA7fObXxsggqG1EwPVWn+Op/p6ZL5BnYufwPP7yE9Z4WgvAC7vLd5IYspS0He
qZRyD+ogrw/NXnsGnyTtW8ZHnVl41T0bZt1X2VL9oz6oiy3HDQmlkbempimI+kYaIalCFgk43d+m
0GTtsea0UOFJp0P8+H8+5Jn6LgitES4x4aJrNQ99AC+rQNWqqmz7ZEeUlPw0A4zdVWG/suoS2DXs
fZ1rD8LKINHJkOcW4a/y0trkFbDYOppG+DwqvrT/oCNwo6yF6Lf843eraJmGsm3qG1R3Cav5AT6S
D94760hBGijo7FCNCHD3FbVoj808ybyInPq7c6+RIpAiyOjzA90Uk/qqXXppVJRjgq0LyofBM3bl
ZZCyRQcMbLJQpAyuvLan4r0eszTO7P2oCCA4OhA8H+uIshgobYytKe2/vxusAn1k8gcOr9yagnHt
jfAbMaUVGorAY5zwf1VSjI8yr8eGvA+iNgzE3pM+cGy+3ad2YvJtCs9OH6ylCw6jl0GJMMD3KnHK
MrPmvnUINR/InyN0PAXpupVCQTExtwA5Xm4y25AkULxkujR5rmUOorHHHQQyub2xjE1v+z3z1YI1
Um0/7Bipa4zYZ1agIOQ8a1rGv9uWGu5HbXJHw8agnPY+44cwb0MGXShBQX9jTQqH0uwsVlsm963V
klsgjZgt2dBtNmOU6/XpSnBlOOH6TNkKV7KMO97UxLe8WG3aUyC+mpAox9s0G2OK9k65px4AGDtU
VrQ6QusLPT8krEW6CyUa6sQxEfvNX7N+FtdsF6KcZrZiE1EE0EW2T2ecNzp4XokMDwAqHpNYjFPf
giSMWtjvIoQHLVknY5g7DiTahg2bRBV+cEqoMFbdK9D/GQcbSyJG/NTEfNH636SYE49QcJlxpJxZ
DXUlffjxtqiD8dMvoUYw/df8cShhPma5YIZzX3rLxOBt6y7F1f77F/NjOp5Vw2BYe9vKvVBQevh0
HAFNgrZ7q1EoCMwis89LI5vHbNTF9a+dLmDCDtBRLyoUbhfGloKkUSbXocVzBWWxjASRLR9VyI5Q
cVcxDXXeuLdIApfkU44hIqlDt6HNJ7OFJXxIH3+7BdU5VgaFybWXwfRFrKpftR7+8W5hePLgovS1
C4T0AqrTWsrhHgUXUcoElmJE2R3eXs12wqvJ5G5YC0o+ewhi7hb1G23kqkkpUFUzN19r8yB6Ola3
MuiCO9erJ7CsJQ0SX/SmnXtf8Koh8ky7FmYObG5Pfwe5csy6AGmMkBKrzjbDU/yP1oED1Dy9gWUT
MTeGeh4HrMHxb4ywq6a3fweY3vBy3KoPkP27ClmVFksI19dEFGgxS/Gg7AobNunt7+NqcXIb0G0J
6HWYAAORI02my81ITnCa0RBLGN2PbJCH1NvFuHcRJmV+6D6ndVBWS87w+hdxDmRiz0Z6z8uAZWUf
dh1mJq5zg3oNwz0tyG3FcGrWdA7TtFucEFLjgD4pMZvpUXgVSrxCV2HEaQg5wejmL6PBVG0Cjbe7
mVcwRW4OLANMdt9uUSmr/q1zGJMOxGoIn/AW32TFZvfkJVAt5V/9KMgQuEepKiEgbDAglvS8AH0R
Yv2XxjplZUVqV2UOUrgbJ0VG2hsH9SGsHR0PeakUbr8IDnMSqhnxVOLUVWnaXyrFx6oWDBwSmc1t
7sko2ekYcR66Bld0P8U2TpxeGOrbwyWk4dmYRG1A3IMO40aTtPPWfNuNfJgAi2YXs7oaZB8VsdsO
hYWmVa1T/VcjIY+0RsRYZ8uoIaxkGbbPmwfaFNzoLQExVB9w55NVUwaTGgOteQ4EPaMLWTgQfmRY
db/MR2rwxXOa/+mv6NX3RR+0fj4hCYTw6NL8TSFi4SgggWIthO+irg8HV1LE650ckAYZnjHXsdC5
9dR3s4tWOeM6z6t86IUytT+hov/qN4bUfJ9l/09vWfAZDCDzgVvrfrMcz9KASanTPTHHhSYHuJks
VXzeqPszJBJ3mVpoPduybVhlehXffpvyvIrZCkdD6/1sdripDnyETLESrmKQGvEXBxl+qfqw3NX1
qA7UdbfCdcAE1AzhyxUYsaWnJY8UqIx0fw0qur+PF6DfShEcs1t5vzEjmSzkTqTUI8/rD+7m4WaM
0z9LrXTXXXNV0o/30oESX8WHoAqz/1+lxAc1vjVAaBiesYXr8VJHpk8W8LWLzokCCB/gKALc57hj
QG5gCx0liaXcnr8NwIuZsZG0Zf0lQlP33Z1aSUsL0oSg5pMcRHKd9OmrA9bNVrthwCK5B3adS2D2
86XwqqHc83r/RH8cIoKDQ1sGg0NqL7Sp3nP0taoHO6WDTjTklNvCe5ipMp4yPGv4xFdKYnpLYvVQ
WoZ+ocAAjrHMeTWC/Ki7gERaHr0h/Qq4LLAMYiRDJKoRXyzw4oi91jzXZrQQHrKDX7SURwm+n20q
BSQmXHBceVWNOySPlmDVMP9o2q0UMXpDRFfwCJoUe/+2LsWDfEEnfLJJjVnHvRbSKsZFEAXj38Ff
/lr85CNnM25Otro+Z9lGrsNhnA1j1XidOuC53VWKi3j+3ITo/DXkw5FxcvvatAqXX5MvyjctIMZo
IrfkIqP4DToSOrhq0oQ1z8ywAuDj14ob1PkD9BhqZ7kSnlRL421KbqU3C0w/9FtPdXzu7uYSJxAj
WEoPuxSf3RCLWC9lymTs2gV1swX9rXnUp/tmDBWxHFp1Lml1NFVvwU+qB+o7YbEqhyMnMsX4qQ5k
ijHFi/fwYWUmFOJxj8V21K3qbi9CEdLI0GLzi65J1R0ql+tcpGgMQr8TSc9e5YkRcj+MdhyVLBc0
9CeGeYD+z3UxoLT4JRYVC/jITHsCw1fAh0U16KEJzSvSpblWIoFIeEMjG+NcIuiQYRepYBdyGbJS
FD603yLaMTVPa4wgn15Vqv4FvjGgGzF1WkYIzzz0E0sltGv6EavyhkDNKAHHBtZTT57rgSnyLJQN
wKJuOiNoiXfJ/V2vJaSKmi55o1+/MBTuqIhdRbHzebmrOL0ZBoV9YaGlUx2zwMXBEYVSiKZP9LuT
Xmiws2QRTjttqKZO0HI82FWK43kQfDXvTKxHk9P1soGs7821hPbuwcSMGBCdOevlsOB2PAirnhq8
bWavosYpTXSgS/4Rg0C8D6G9EwNKQgUlD35BENbsU+aNH3xddUXoTjf7jDk59i8wumXsjDGf3+I8
yIlF57xtNWrYhQi3V6kOoqMIjWcNHsGwEteNPL1nZDoSOvdgYP5QSQ48rn2G9+0Re8NYe3OQ9JSa
r8r3bS8EaeQzeOZ/lWjiFCYZtnJEyTIjWC1c7gi/7J2gpmocUNg8ot/Y8g8IC2q9G9RFHxBIqHi+
+9JydjeKRyObdZSTXgHrMDg71W3ccn3DTmJCtWJEJx216vJ4npqcVas+2Pe9XltcylHHeRceuNRl
2KXSlt0oNxFYZXRrHmCce8iGadjtxwRoU4FFNfDcGRYlyZZoQhfNuALEbetNlCc/++2RYMteTX96
MeWJQdUDu8BBqJ3NSluXwbIQsGhH1fCvr5tCu4nzWbZkQueGNBJLdIsSoqHySXkBjepp+6LsJUfe
nvxI49c48/gLWbcIaeDhYE/O2QCUzkwSz3w/MIHNY+Dv+/cy+mOjqe5/nn0LjT6eKyiB7gj8TrhK
SJCeSYkzDInO2P95kC9Olu5cW2suHHjcy7Avn3nGpX7gtLU0xHyBLhJTPcc6a7V1u075atL5abbv
O5sIKX0kDwFEIkCGLT9FgjQ1uSeoCxnRckjnnSTNMRNjJ3SXFd9Ky5S5q4zjRcg9aB3WRLrrDGm9
oBPRjRRqqiR8XbNa+joqNkswodfxR08xE6UdNe3xC5rzKEhEMfpxdHT6IAfSv7I7XMuJsj1NGJ/5
jPcxkJSj/KBVKbpDEATRtVi8fvSSSd6YAt98i08qlnh52JX5MCh8M6jsAZjT2DkBuFplUTD7HeKK
QLYPIipzclQUmJQy/GLFOhPwj4tD6oh8ZLeVLPuNHy9xFgo2S4+3zpipDKnoEHuETFrW62Qmcu2T
0PrWLf/rTI3AXXVay2VuQh42P2u7gPPAzIELI87MEgiLWgg4FfZOCVhUnLr6su8WsZRwr77ZTTes
sQ13M24FCsoN140R4+JYhZWrkjK31eZSxqmzoOzE0H7NOxI0BBuMuO7YgQKePwaTWyRtNxmeal81
e+Qpmfuyx2dhoQHsVkRJYTq0xavF6Fc84izCWevAKsxrldHhP5b6q7/MhnLpIHRBPWLaSknJZ0Wp
tZfJ2S6Tzx96rWV0gxMbSNPbC0MbhAfSYPOcMzJwJctEIiU2rzOd9+xh4i/BEPIAjcsjc/3Ss0YD
MHA48gEQCW1VmcLFuwwtGhRDi27btsdtYqyX6zboXRyK2EEDuXx3xNtIc+PE0PHusAevxsQE7dVg
eNul2UtvOXCsUxeeI0J2xh7qkBhDneb64wL2/DK2Lw94ossBAeCQ4sVqe5QcDT988G69OACP6MFH
Ux1+UCxVxZ83bnMJKUv8ehQ9U9uOCm3C9AeGOQrAyW/YcWOlSsuLivlals6Bz5hAv2mKZT2oJJv1
AQzh8oajweTAwgdlEokD8mMyfZybspdT3ihhFH2bvZrfVo/e7ILPGA7Ipi4Iow+1Z8K1zdgyqk77
ei/w69NLVbyzS56BjiTE9p55stRk6V9NB7LjRSZQJc/kook7Jv4xSdy8r3GGkWBefCSPBUDP+d6q
GWZyEe4Y9DMJS77FtPu1Kv1frupm3o8RGaoarpmZP+SvFq8//m3CheUWNhDmdiPus1c2gf8kbGPk
Y7MZn9dJKANhDg36cLVjdpFDYzFQGsbsoNzVdI1xjr7GJIp+RbqQazP+QhvVkQI/M+eZ845N2r1H
Pbb2tq0P/qT77FhQjR8IdA+W2C0YnnNDRYZ23DPAEN/wpt5JGNYToz9o8KdTG7h3HWjmZMC1Cc/F
/H/CWyAbr5MIyeuKlo1hIK1e4wh1GlfvvXgLF3Z1OK9qOQVezoBd61RU31iTp96URnjwTY+uQIHP
EZNN2asb8Rz7wHMZqhCgn0e0VHWBw0oVh363Yhv2nRZZy9f5w2aHB7RIUF2bOLirAZ/py5jQrw24
BbEjLUmIp5FCnFX/DHlnSQ95s3JyrXJoLCDswokK9vSzqT/7TPdyMhfr5lG62D77ZrqxGanOprCB
b6tp/u/xq9oXnx88ySO3JU2z5GUpi8qAw7eD0t7nH15bGNbpITOuRhtND2QEowwIFBT4eXZIdnvX
VGhRVdVTZ3paaQgAr0frvVwh75sh6HoxIPcwm9gNqan5cRxgcqwZ1V09Kx6u8EbMycfvlbS/sy4Z
Bs3A+NLFRLsbOKjJbvLqx8TsyORZdTIiTFLggdh4oQWs9XcrkZWmkpnCrrAlV/1wLwQc1iNHqs6g
Zuw6s0+UfKHSHi6qc7+Wz4N/evNU6Kw9hzo9ql+lmGMzKLi4CotO2m0GktHwa8SEyp2DLTpUmvbI
uw62ylg86zKfZDlC4Sl6BWj6uEBcAEJFANDyadM/pYGaVGg7xr5NRdvCAPwhLbxyQAW2uwq1ABV2
MpPFcPEjp5E1HNspxVimMsjlhJdTRplZI/WhiA7DziHzHP6MXo3pLLx3hvnNohWR8WcQYjh/4/or
rP62OGfkuKFDL8nNYnRyYpTbfgpS9hPkIeQ74Rc+tAteZfiBVmJ8jQogu/tKIpCZu1g3yv+Pe07y
ZrM4AiIk6tFoqpyTipdF6EuB5nPrUx0KP+yHVPiTGenCd+9gOxSjNSzWdySHqopTQNcArFqvMwKJ
sqz7lFuea3BIWOvkl9xdnLG9LfGdSR69KrADHQYU+LnhrRG5ltoBtoVfNcDGV+U5JfrPoW5mLsJs
5HmXLH1G4Wb54CpTO8D7HYsHI0xLLoO4nHLBvbBOukm/Vs6m0ARgLsL2bPWGpWbKPmWq4X4KjCEK
q0NLxGW+NYpb7SKf8rZdXtEDjG+lPWl3FHNQq1kK/wwVgVLWaXFuZbpZGgh7qI5V8fBTF7VO/iwc
nzI1hdp2Me4l3a1WG5rSoKdxR7k4Ko6lFnX9PqYL8bsMJD6MEkrHRUHwnEVKaapxIhsDc2Fbgifk
0oN3EUEZziwhaetNJn92PDItRl42r98QUiRqEC1je/1ugyfEVRJSKy2N15LFK6kqFBsF7PsKdi19
efxjiazV9CAZTEucBqzpNPTEH7txK1mSeM8gkuEwtoCyvM7JihxQmsu3wjF5f+tt8jT9RiKENBvq
zkmnriQKXOFlWDUYLZmhD2+xc+lZ3Z8xfN0IW3gFdV5E25LadwIQSCrWG5ykDM3vl35l6KXIf+HD
OuYnz4xc78uYmJe3ACf+us2YUhaplBMlxQy7AB6KtDjRl8htTuEVJE/E+3FmsWowJnBUXMa76OlB
V7ipFW8/Bv1VtWHOzlMIQLMOAVKV5xHYxGlR9uCFZl3QTaXMguE/R1O1qLyifQonX39lepYvJK8d
NXEEjjEG1CWMiVZUmPINuV3QJ/EydMzdsIDAdG9VtgpOen3G3ofw/fyLAF32305KGTpESANJVGi1
LtuDGlYeAkiuHgkQAu5gLiVYXXy6JYpI25iAxa9HS5treW96+iMVg1X5CxTnfposFx1xBmfS14iC
mbI5ZizZ/rKT2S0Hs8z7D60tkf+Can1uZ83K5xzn1kB96ZRoo/t/3H4q2Rn1QnNTB/hlZ94dBAtc
w1iOWfnuM0uFo4m/eVWtUzUOg9fY3O8H54zZ3TNH1oBF65typRUTGsx3LCz69Zvh00ogkdjPiqji
UJMnr6V9O5VWg0K5sIXdNErbNSkLkwoAq30W7SFxuKBO71wyQ0cbZphKizJAzk72XjYyd/wf6RHQ
o2rTQgjI1NZAr94eonkO0+3WD/3T9EVEKw+0fQ3x9JQglTD334wCU5VvMp3XtO2AkizoyIHXpe0Q
1AfUOB8kckuuEBS+nBFD7MPpDeK/Yk+K1czpzf/7G/SXoUMQxxE+P1qm4t/YEBq9jE3gky4qOvt2
ITh+KaqOpOtgeTyiRlrTfqsR9CeXKs638uf9JSvlZMjYbjePygoP9+u/Yhn2OA0PdMsxaRM1d0ff
6KL/uuzo+NKRazPwRZFazAnq7zKZ5kZKPX5Qn92Iap9fNJTlOb4FQVD5dJY+BM7Xrc6OzPEgZAji
dca8mh3Bh4N4AkKuO/RqObjzdL3OuTTlGnjPnWhwvytS4SqvqcsQ2bZPmm2kBXmPDBkq/YjZs38X
0TGG+A7vLJhHJU6HFYoTowiTRu0/NDZ5XAbB5shaCsHSK9SRR/7t5ovM3BaeAjyxcogDzps8yOAO
WphGJPYLDiXeDBY8nbAgIWDJfMX4mdosi8b/1ondFMRfMhRZikWwYGJA6m3FunGfVds8I5+8m9V8
WSaGAwj8kwgi7Euhsl+zVyOnpHsGGViWdYqYxuOmnZOIMuq/4LanOKjbOHJb/MvMOFr13ib9TkH0
9rVTTIUKec3rmhck4DiPzzPWnbW7tPvFgvS9Dh/8aGyMUV/iX/HzTJHYYyJUT9zrm1AnFANVU9D5
mKecHZJRxHiGMV6c8gOCU5C58uU0pdeqpjhwPX0sb7vT0seQb5eHJLOfU2Q3YZV9VmPorgU18hH5
c1Y/wr9SIRR44fkvY3pGsyCcT3lzzmUJkOqRGgfqv3EFejowtlV6vB95mk4ulL95/yXbZ1nCt4an
kOKcLFP/psc3i1Q5l3uTgf3nqvPo8/ixazK7kLrmFEXkOLFbZznUsYTOxqg0vKkepFKcB+SFSTaC
E8OYEO/FFS0DZemod7oJ7hfIItkUTEy2EqjGaw7w+f7i/Oq+xL9ICIg0dmu7bAf2phUO9Xq+dl3F
Y/+D2SJgK2KxrL9IM/WwE5jkzGGIR7iqNN6JzUqtxHlvlPw2izq0FTmPCMm6RqFI7fZTogMj7Rjl
fpeu8lfOtZESDBYS8Dl/1JrvuN0WV/WQUbt4J3ZbUFYbHWnlzPZSlAkA7uSqPDjCtZIzqv+ZPock
8DjgTI/nEXbZxR3hm8JwvScZ/iWCmClskzFgt/cRAE9m67e9oJbKjfTBIupXS/8mbHwE3oZ3kdgN
Tky5Opy+gTCzy0PY3RCIHFK9VGAmldjXK2laiQipGB9ZSqWqcpnOincQPcimq/yGdCRCJvM/KHsY
Gw5im0QSfqJRBLPxoM3/sdMhtvZ5HVGdR0Y72gWiwhW5YWp6tK1AV8S58fY69LRK+WmnGsjwANAN
bRDi7Ga268BRojDUiK+3UriG4JyBr4aYRpg5Mr4ngiPH7wpordHDo1AwBfOOhlF+ROjPXtDClZsQ
XK1smtFbq/nCBfgdNKvKoCV06FAIPrJfMZIMvAK2jO6oSmytIGmXtw6WpRnGkhSYxsCZ06v7sVuC
8TbKvMmPdu5I/s71VzX2Z9aDLeVQs8yfu9WbszaWEBXiDLHwQNP/fwGHYkI73yI+V6rq/762DRDR
7GV8gcj3Kjpe7EM7xKVNCXDlbN/bkbCqMdkN7TfVjwg1WSw+0e9uNLXU50a8khnWqKsSInzmRMSY
qUfLgpdf9IkHv0GYOqAXNK9BWZ9jyB+tZpyjaHXDPa7dJBK16WDSMy10aYXwsvcB9JJ8N1pPFnj2
q+R4IyQP5W1mQaUcALu3H5mXmQ7rrKMauOCfeV7Ckri9WL42xQB5g4rd/dWiGAVwqQOBkfMnoKi+
CxjBn7j341ME8FDA5CK4C7k/Dq92ot9nqyG0UliiZW8xJ8c/1jg27lFIeUK0lt6kq3bMn0SzgqDZ
j9KQoNfJOcw9Cno0TR/SDp+FIUTF+Ug3gyEcXnu0VkSQVoO1uhlDuTHqbtBooQrk4SJqSw53yMtK
NtPdLvKOejHUX+0MFwWI8sG/aQr46XWvrF6tvTM8inAt02tNxRYTbhj/s3/CiMSjqbytIKiSVyP1
c8qZh6nkjpaHSgPANplzN40fwVmp97vLE7UJ6Dcz22ywopqEAq96VNme5GwwAgsvMiUkazK+F8h9
BA4rGuZEMVr1738iM81VxSoaj8xzOHTLeJl1ZZHqw/5EzzBUzm+euLKph3J49kjmy88ebo4GMkzA
50xHVyexGNvHspTzDkBuyDk+RMCGee3X0ktbx6fzLgbT6hwSiiFKib4IajAH0YS3Go0f38ojavQk
vB6nvVmO0o7HhCNRJbVgqp+9i55R+1F/G60sYL7Sc3sAo+ASbOGJZAaW3wVIQlYD+nfXxPlr3V1b
i4H8S4/lZJYSOe5UO4gjXMqpY2Ax81bAMtBQDcI+gQjI9yOpT3zAKUbM4ugWSBmlVeIaqirLIn0s
konM5Uc572LMWjouLqB53psurArptyMQv4Qr+jXCpTs3B+UuOjMGqiuzuL1JIxHHErusGTRts0A3
NaRtgzOoFJDKskNOxYmyBTgl6fJTKMHGdG7BIB8DnYNqpaxRLtBAkh5FJ1+irnBffIYAH+egU/VP
qwIgwxroURLZQGBZbBrHlvuY1V2DYTvZN7KD08GL0YQJXTfmKvT0YXHI/uI8tG3qtmk+OMrAhu2D
lE6lYStQcSAYbWID5YNkV1VfIE1YlX9d1SQUUGh330v8pbCzsObonP/+x0sfbZ1epqEdtHVMpcjB
z+uezhmy5SfJH82ZFEWXg00qpTvuD3OETPtvWryxOsjwqUMtbAW9Pf52xWoRloPapptGFf1oPWJl
QCTr+VtR/udodqrMcGTBvG9O5soLgyvmUOwcKxOzX9s0o5c0/IVoXnFcRGPo3W+0/4r9s8VXpPSo
nXK5Lfb4dimVFmOWYqi3l0AhMOWIOFW7xaa6x6nLMjOM1kBST+klJelF1t8R7hhXP2qVZKtbvcxB
5N4yFpBAeuyYbaPqdagcPNbs6gK9byr4SmX6Z4P7DUw05qRGmUm2kBpB2mpllNFvtZtfkEzrz0Pq
FHAZ/BbdjZvaOL57WCDihXLlvA9xFkRZxydbMS5P1IxVqEkHgVGzHAkNHiD1JUaOz6kLDGac/w83
cG+yDgOG+ScURYVGKq0Q1P2PPTUB+5EKUj4fKq8WpuC9CKZ0D0EkUSi5WmIPgG2aEwJ4g7p7t/yH
4gIo/dS0sHrEGSwzVNs4mx5Z7BUPiKMFTZ37A4v1Wf/U8PyiSQmMvI+UgeonvX54S3WDZ3q6A3yl
XZLZpVFy+LpCrQTCK4YlLRFibWU0U3KxDjxWBhPqRMyQJthtY+bN7neKJ1KKFA7R0kS3KDaYMyKY
OPEMdsev/2vsMEd4Hhst1SyTRWTnlswNBFNRitLYOeQzmB1fJnysLfLHTW5K4uvbkilYPQnksNvr
PXblz+U6Yg84coz3N3gzRSiIdEmBhN2SlNMh+avY1wzvH8XlZmiIteDJfC3ayyS0O5k6Z/STkhmi
dM+HNkrhJII/mwWaRJHMHNu4PVgJpxsOMwdH1DLeNau3JlKc9yxUkqUdF0uG14VW7WeRnloDXlJo
VY2tRwkDmYwss3AVx3Jq5wy7xFe/Pyt3ZFVUI762ux4CJD0HMHgcpj0/IcDA6sSiYE3gGJ6zE1zh
cIYlHqFchvL1bf36+oCr0el2jAj5yPxIj3HmLTB/XYzXPa01/Fu8Dyr36cRf7AtTffBplnLvcvGr
YCQaWn28c5bBcuphqljjipYjMLLQRfx7LNLNvx6wefsiD63vR8Fwerm5uda90cgVjyLVcGDcWX7s
TpBnRGdJpQnMB5HtbUSU6bj2zC5HxT7VgCNhetZzoavSB30OcwfxR/qEZ5E2D0V/4CDz4WYCEMvh
JmCzfQgV3Bc/L7mgaBhfq4gkTe5AoKxppvtHq7dEKHkCvGt1twSq4kjd3Z2fL/iwNyS4RGOWpH4B
YOqQWtQ+OvgDoafxAieR2QdLEnkKMPvPG0SRPDL9m9dcJF9LAX2aQ/Ev8bXV0uZ/e29sgDtk4jpR
XSpT8dNUhtAyAkMUKN1nNhKI6DqVf8p5xuwBTEM/N35a/kPjFnc9ZTCexU3vgO+I3v31UmBlz4ev
a9lW/rJb1aH35pr26VXIE6HIUdSSlKl5LfZg5BOXQpcQRZtTH3DQQOpPc/vWyQpW85DUaxVfssex
vQ9bQtwyo3LPqmjaY8nucxR6Msn0qp0wlPa4355f4sArzX4G+CdnW/CpXjuLvRbJu8vo7z5yf6Jb
3ruEkY3M8DY/cvzssVQWmz4R0BkxrfMTXty9omV2cY8idcWCcEvtCgokCu99mDYmruZBEm0ABrGD
aNdI6Y1UKUK3cWvyRrFPwqv1c7+AZi+WAohFKnqXLZjNkPoYjXxjy957rj6XAFAbm6X5oXTqzFIP
bepmpAvatSFZRs7g4NLm8dWCeFRy7ZTqbC9s91QGGvLl+fV9Ui8D+Is3Bh1GxUNCLHc9H0S2cmFY
g4dAB1uyMH/PvrbVg8mpG9sjVsLc5Ido8XnTbRjZOD9loVNDZRGpPiygfdSrOuufrhArIjIVrEut
EhKHmO7+dBny6RYJqA190xmIM4g1QdmB5jvHXTOusk1C2HEUcQvQmOGqyBZ6uT31Y82OqjZYu0JY
Mh7I8vccUxfWnVypiF2vETuCa7HGBasiJVaMO4Ke0apgMg8+sb4EQrq2TTfPEiip2fVuL0+IKhAr
d2iLZ9Glm1ydXmJZUAnlf5z629HB+T8kjJ+sQKLsVv1nREP2QSsHhIb8vNv3V06jrdCBZD/Zq012
WDRrzafR4YUdkJLl5metq90EnD8LHuSAea38hSCsk6uf/bm4VF79heXs5cyp9GrDwy1d3uTgseVC
cyTkpOoFPb6fQb1kHg97MJzXYaTJMn1mQAMrlQ/zoG9jXnj/TCuKEqVMIa7h4GckE+dyMdyE4hoX
zai/c9gp2IjEhQHIeMexnHRem4OYyKww9VPRl0h2fUPYOVos+URKnt80cri9b8zWKIHQ9hW1qP5Y
6ExcFyLB1nMOpyxTa5/TMGRceu4mWcf7pZEOomSwJOq1HDHe8FXVlQCfsNgj8bLKOECh9YOGTeVk
TFKx04uIJm0V9hAU6na+kyrWnI4BIxC+Wm3TobNLzWILY+MvkGIWc2x+3nJ67sXtzhr/rVbuIagu
ONclM8+H8r3ZFuaX5c5gsIX5Rz1xLPqfA9Mr2iTRpTs94IRsJnckTsUoXcJ3xLHhGJ96kvzAcIz/
uzjp/A23/4KuMB8wTpALlK7qgEBg0MvgDmWpfSdpx+m5zgv1gny6AnSD3t0IPmLRAJaaIK46rrsE
Sgnhdpdag1XkCZSEYcybFyv7LnlZVzZlQvXcnv84pQUe2ovIvLAKevVORiKS+kmn17hGZM1xxybP
981XvwHQbkkUaxVoY22bW8muAmUKPBnm6HJCGwxQJJbgVD9LtWvJOOvwuhQwLsQeWgsMWxwx8uPx
tLSfjNp02/DwX4LyJMzb/LVXYeRMP9f9TQq09PMm7lDymc8Po+CxkFVDFSuXq5ZyVZwGE8b0BBCV
dzoNzhrPMefkc5uryKdnlkKdABNR9zZbtz1hvCHbfWCW8Qr41gtq4ajxgYg/6enkBgGNBz1zb7EG
AR+P5BGx2E5X2OfH+BmDPSfqo0puyICNWYRF/QniPya4tesYgXuVzd2cWmxxyLXVhLa+KATmKM8X
um4As2+UysyaKRnbQC4hzDyLe9ea1AyIG690ztyGasrUREp8/JKzjY5UznD2t42UhQAOorS5RuM/
HPZz4kUJ8o7/W2Lu37SDcyEACFOiigJMbezILGuaBXjZu4TJxefGrL6PSykmtnJz8dwBGEcwKZD1
Foj3URO2wCe5+ER3qefY5M+dqZqsqE4LLo8lV+51fmEndO4sPvOeL5y8i98FB9Os/qezncZ2ybpp
kaHc1SoZbUGM+eWlSX20Jinp9p5I4RKLlYYQUSbeYmXISeraW0onkFQUu7srDRuGMOZKZzqmjZnB
R6gvy4Ty4U+hUmwmxp8NYrr5r3OX/5gGfhCTdyKHYwBrM2mPRTDQmw2KeiHN5VkSTaErQQDTNK4l
iGrfuC4HL7ugkU8xHd1GW5njK3zzQ1T37Db7h6b0w5jq9tNNhSUZ+5pHdAYPrLGoemeFj7dIzUUs
zv3cnbFexjyU93ORBWxZLMp4pOh1an4RtFPgKvooEWHlSO0gx8UcCpPXZR5oHWoZ9nMVftuUbWGq
D8Z56WwRahCcQQgi2OZCEsPrL5Vnp7uQ/7bBX9vGOTtWYDtggun5F0qZTV0adO0pff7XrK41kjmw
/MZboOqpzLR6tQf5ht3gHnxp9lO89KLv0miih9/xX+NIBna1q1+3doyQ6fqDh1gzqhTWv7nH4TPr
W3w4vj8iJ4j0GeVVx5TarWLGn4Md8eSY8MnmX/wx5COUgDVjojr4oVyRkucx76QFLLBx6bNwVnyq
xHK0TsfGn+BiXHsFnrfCsXKW4XYm9bv++82Lf+kXBCkuyBZY5pem3d+Y7JuTkwuYrK/OqwbWZyih
XUNaK26K90/zsfFkjkJTTNQVPbGPSsrJd5Mis8QTvoiAFkT83MVeRXX8bV598f0DGbCz4gPnWHxW
4bDVcNKa8a8kPQz4bgoiqmjyMVskmMFQGTMyYLWRmdn03Hw1uhx44Z9Zr8EB6GmElp46K0xbpnA+
QZu8EiM6n5t+kiWIrG5AvEIFkvkVgxV9A+b/Ynf2vjn46FIPD97oM9I58D81y4s9Gw3y53vaXwxZ
KibgtRa03Cg8c2f+Tx3ZQlH7WD6lCSgrUYBTttm1OtMnE+imxE/AXUfqJjMp0G+BDc2kCb5jrKLX
fODZWpXPd4+B8tK8X5jBUezKZRiL3vaN53EmPcQSrvyDZjWKGB5QU88nW6EZ/jXLD8ev+C1qj4P0
/dyYbOFdZY1GB5nrf0QIDl9F7gjtKlkoP3Z3VsBjVnFGaMKibqeW/aeQmBzbjZCr+S3uqd77+PXg
L4lpAxrC2nBxj6ounHGjF4mHxximbpF9NkFW6WzyLpICAi9E5VX9VjNlNgJFu2PSClDqbKrP+MS1
snCd1+2m6ReLYZ42/bUbmDp2MS9vCvY0vxMbvSs/Z6unymEW1HQ13sA0dTyPDYwC2CPXPGWMqXWm
yjQajyvyNi0k6vFXDZHJm0uJn1v6gfJIQiuDwCU4Mipy8tg1Vq25/ZBvNlYYiP72T2X4VzupFxVB
Sut2U5ONUrHxBotPf38rdhSahR/LMlmbJ0KXo5zOxZbHXbhTwq4ujXxcvP29XkpMSCd3Y42fHd8H
KOddBWHv8IlwZFCeVok73MaZDLovCN+vnQWhTbS0oXkSpM2YD8/lDzwth0dZrK27Sw3UvpDuZmXt
0ld6OtX57AsrdpW1YRWOsxI2eWZUyvMsfW2t9OJVZj6H1425Lwm+3zmiruVLVQoR7rM0ce7dCfvs
X4juvqxtcyoUAx4/ht7dcYXEbn3H3WG0WTFVIg0NRtPyrUgATn/9xxmKGUSefkM7HrAZkhwSq9/E
Kvjg6fp/QAXcHBS8XP6RXZD8ebtIATuefzO5SDBMbfKgcF6F2+ZECctYmN4B0KsVGRkuzJffxwug
Zat5QJW0LsNWO5gQt6q2on8fsOorlepDywxpsKQWrsFQG/7M0J0TsgnTbf4p9nlO7PPrKklZB9lB
mxkrxjdHtL8j9+K7iPKheN2K1r4aW8QqrxFN9utLqiih8ucGBPDNcRV1tgc3d2RDnC4o2wTCtqbb
a7dL6RIR51oKPvjO/5j6nbCPTqOQrJfbwTUJadxuZDWjpkm8GGv89ifXdXMFHV3q67D3kO2H0Svm
ogN9SP/rVd34DE71lnAzQjOLnb0vkmkJywoXHF73VLNgp+rchrK3lhsr9wwBfC+rovRjI9phYytz
rfFJTSLJxctOCYh0swVTMPTBDEkFT4TX/tJJixvecMpetCwvWp9tAh+Zwypgo949aOuuUD3PJkG3
xB3lASNLWkwAwgOZHFz1UElPuL4/IgZ1v1aM/8wedbKc4YtzpWdTNxQ5SuN6mWRF/5nOQ80VHYyh
tSTL965PpDAMXKTwMwHOJyHSSnDKqi+yCQQrJT2eavOd13Z/E2nlCnQlxPISaKgygRi97C3oFT+j
9T9VjlJQx519uG9ME+cVnvzUxXP178bYer5fjBMU6Jxpz6jHiLp6uwDdgTfo0bWVJbPJFoAM5Liy
QqmAR85fDBWoFpxzPhwqJai259z9RPFQ4WWk7Z0rLguQK7HFaz2AnAyns5EYDj54pIuSE/K6+DC/
4voXefU9KX5LvF8vboNIWNwgMABe/QGqCUVzDZBzbVWJrVb/mLKbwpbsULXIBWfaDsT2lsEwvzFE
09/k3BlKRB8MSP9Num49Jf2stQe66zCuA7QVuRy0o8LDayxIfJeq4vmP90Fx6ITYLLKZzo7QReAf
VUAodeB5Rsq8updCsZC3w9Vkux+5Hv+aFyQklEGxWOadq7bbzSNMlXNpRqxeIxakWlCXwdEfhssR
SVM6cNUIcKBDksRPg4adSg8IE1ueC96wrZbO+0Q7jIGd1hDcf6DRCY3DL7EKgpPFQB1HFRy7p3oV
QRrx9yyedyMzQcLJiQflyuIbTT03iFuwz5xqRfsrvjW4d72jPt2fHOpex2V13jhD3sVPmb/8jAfw
ZhoG62bie5PZRCrk7xUhxovDqQ6PfYVNk5qgKrSlb9vWtDT7qFopBVvJ3rbptICKoUL8uQyT39WX
xQ06ErG+sLZNMu2Kslhr1YvA9x3k9vn82b3y2NxaqJpsjKyPzEI+yMmZZggCkU3aEh1KHQOWtkU6
ESaQld2/c4Ci0ROD01tHyOE0I2i9lb9x73+vv5Y4lWQCCKxZmPAay26VvND/CmyvgxsQSlLQGSsK
cKa5VywK+dNH2h+ZIAglaJe/gqzp532tFq9Hh4jJGGzacJSenxPNFZZ3udeAlMvrvQrFKuM/LBw9
VhRI/REPAFMv0C0lwje34sDOO/pU7TBpvo0jgXF1iPNkjIjKaMu+Trvz5UneuGxkDpMkSy6yZK/L
Gv8gtrbwPVMQKTDy9ELuHEotAiiiFBjgC7EMpv6pgat3EJ6OO2Sbo4FNY39FItppgj8tGQ9+OZVn
yS1xqHaCag9YscWlsgnExkfMeeTG6J0CNFtjiEP3dMJ2N164aVG1QW8pKMuLE0oI8Si4RwvCurcx
uePnZgtCs+k02Y6l8vgoMBqlKmIunbqVksG8v0qlRKgXiMj4IDEfx9SAQZXBd0PYl4lVFLBz4I18
ZOcwWA+rVsuTHLjIiiCMASZPxtHmoyYyEd6mve97C8bmEM32xq9/rXUP5qqWy55OS/Di5bDWt8uh
9ma/10VqXWu4PpXbjjvNt16Klb70sZmE2l9yTeqSwIiVwtcrQWstfbwkrXgz3r5rNXYrsXSweoes
e5Z8sw+QXx/Pv8TLoD8HBA04kR18Hhqu/YVKiaNutH/n/uHzHmS+G+4swjhQr08oKXO+r1jsWjab
2QO9iVTxUM6yMid4bTbqZBvmp7DDRJYd+Phq3KX9uOJHSFKUfyeaEkVL1j8p94Sr7P1mutqrE9hj
AahJOBeZK71vkTuY2pi0+5QwJUgyE+NSYI6RdEq672ijcJPDHSPK7mfgKtTvmRM+jInoDeXvBWOO
XEWNAWqpoTDPd/9wCAvUftNF5bzuTUouxBhmTZbcB/KDJkanjLvdx8l8Sro6Uxszik5jCuSABnDr
9XYHCWuiMsZajqUCDeHpvf3zjQzsBHF5BNICmpQZwZc9Q9c2EZObKdt+Znw3ORwlXCebIp+4MisP
yAAdnGasrN1ZdR8CziSm2rqA8U4/rHPrvCSNbN13AarpxAh0zEvj/rTrLmFJhHuB+I1LFF17o/iK
nplxPtkTT5ehOh7IllY8Vo1PfrcQo6As+CWmw1YY79eF/zqZjXpm3vs5w69WOcgVPsAdWdypkqw5
tygsV6sm1BeMaTzQsQZOLkEM49UW04Fc3hxqktpFjTne04cEPd7ULqjG4atmonRkRocnilF2FhQd
IoDri0pA1WbqaCvAPufjXJuF6EqMnskMFXd/kVzlnokDvOJZK3ne60BYsddN/SYEx7AH2wdwjxdS
KTYwYaPwPdS5yhI4WArOJY4WPdftEvuxRQvVNPU9Td/fxcoXN5Aj+sindaa61D+Q1Jkb6LJrAOXP
hfpH+rViWBDHSicHbOWt1gK4cjoIU6b2DMp31ZYbEEVV2Eff5xUS3/0cnl2xY9MCTmbTDr31uWdD
BcdWPBVrBHkknteZf/FEUz4P0F1YBthUic+52Df4KldP5MscwcyDj0F0xmJcLZcKwuuNznM2ubSt
mzoEi3vHmiw2iJYwfp3LnRm/8sRUbqv0E44rDEtiUi2taO430nKFn4SOzwwQrPAkemSBX9iFNvWr
WR/gyWYRqUZIEZhU6dFW/pyBhRABBE42+cvi2GMXZYrfX1XtNUpDnerun+SI72bIv9VS9sS/ASZ1
VheGMZIPbm/giOcRRSDWpdejtl+rE5j364elXOdI3GXTczGM+jT8CkOFaNWb9WD/ZYUxYUH2Mc4A
2bkqJjVQswRNC63V0pEvxQXlM4xAu4nUPsH/ooY2HrFFPbYqQymJ9goi/KnbWw9v49ok6EhqAG6Z
0fTTs+vQEPBbGJJ01n/+bKxI7VEEdul2wwXRNK+ESXAOUGe5kA9YdalN9hxl4k6yZIKMZH6uzbZE
93DUiH9YRXx3MXg6zzVxpjfffb0jXBE4vvvCIOYduD32J9MrOwD/XaqKVptnbbj8jokCAbI2YbDO
jmNVZjhiY85sccsbD0JJwNUyGxEmrFrSSJrlHEL9VoiSQYbZEgASJ5oyvpoOKH9KWB01TpGjC+Jd
+88ciA1Y0rSHufXWofK0P755mwSa34h28Unk4FzsJAAq0r7EVYblVEWh+J9U09/hfRKphOjU4sp9
eSKYk64E8/V46jSDq/NrLYUiowpdgckNwCucbqAfvR9H8XHKZIaHTLXktRmONyrSW4KbHw/QfZzC
auXRoBFQOCP7qN9xv5d0nMOaf1nh3ZMoObxqDPYIlI1qD6BqUZ76MHoQHkU56AfM+0UplUwemwkY
cxQKBFaJslp1tYxncRAqTbANEfGZAkdLOCMQV7wPZWN0NPGKRxjvJdwDnd4XB4Jx0PEkbOFuZ7y+
evRnsENxhediqUs//utV2x8iueol2Kb1vFBsFwmZux197C5WXeWhYpzBEYlqhIJl36XPKwVaAmVc
fIhDof4wC5wvGdACPcK5IVxk5cE7rb3y6SQImfEypEObR9mmW0o0fnfb0NgftGk2y6Zq9u+4+WiD
qZPMJIYOOHa503Mi054ecptMOvgDXZXV769vObGfRKIQ7uT02jWIWl2goQ6G6QHODQacVvGiJRV8
ZPwI4CzpJuFGaCn1NgVhW7egUFzQaLvzANDbgxuTyJuf4L0d3hp1O7HYRbg6bMD43CFpeylwMlIb
7hEXjxY+QSCU4STEJcYtNcJyineRzRVycABaIEjyLaJashlrQ1odcViVGrR65yzlej1z7IjvevVo
3QRaFwW0h4d/Y9ebOZcHl0DJlfa29k5inM9dVFg9pTHgEDTlqbpRBp49cWrTMI+Rx5UbJdHi+a2O
OES5GcE51b9oDj6J4x+szGlFYLSCZKuibebjHGmWijwWSiis6WlxMMrYLfz8IkdJo0WQ2774PAFv
Dgops1ZfxNqkLu0Gcu5oGVDZMLYBoRryxBqoFSoTK4INFb1LDoOJYTV0Ncl07UOoZeEhJJIgjeEo
8rRwdsAiY4vcTAP4Q5bwVo5jqWbU7H3Buw7/ZEScmQk6s4QPAL1lxgUSpjngfh2jiDhkB5uCPwlv
umWHsCJvnjcpkAH1VTElR0+oqr+Bxyjj+CsVM/PIx2a5fwYRqFSelbhTxgX8po/TmWV5FqeOkeGf
lMB5LkKQMd1QergfIFcY7D59hOCCwoOcXl301bqRNaE8yK3oHm8UhmsBwDwzDA5u8n8FckDS/haH
mARg2ENlv6kMKUplCOmOO8bmArez52StpuMpCoE8ZIs6A+i4kk1puwTK6EwkSzfJ5MEtpUMYQ8vs
wjYcaeC/CyPaew2RbFdDHl5wCHkLvAjjKxGRIIDcwaaW33QXgHAxU7QXPNw4SSxvq5Vd7B7ycifn
1QZv/MSDqUAshBvIJc9ysgufMqwn2XZDMoj/eVF6ZNIyz7768W09Ozu5x8eCnPqCVpARHji0kc4P
qAEt/xqw5JASMKbYUO+OAfAuB/I1/4P50BWoASBbkOckmEw08JX0sqEi/aC+lG7XCS941sHKameV
XKeFOn1Pr+WCb134XWwFnZYV7K8nA5nnR4eYkMtuqZWQauu0HDC1Qa3ubaSd8MuwOTkHyyB+PelW
UuJklZIjqpSYrEPzC//6ZIaVH/5kZ14TPm34z71RWegFjWhf4WqIqG3bf4ZYrZCZRchCICTWT81P
Ur/KRe2d7JBWsTRLhrAPmihBiAS1BBYbDtHeqAi/TbDpoXV+Ur3Z664kYzFyaYW3UZaZAnYjJsRS
8ukWXB7Q6aig+igW9/xDJwog2u4+njpNYlxL1ws6TUj1HsD3Z3B2xENl66vUv5ENsVEe2uhRL95x
4kcVhDRdtrqBg2Yd5NgvqzmP1Mz0UzOrPs+WXJ+xdIpppzbin5/Irx8f6LCEPUOyxhNv4asgZc1x
5kizIs8mUoi//TOwaTIIKCzhzJ/jZwEVzSusU3p0Fm67ot6N4DxjWQDZ8iv+/h6RBuMsHxmtnF/e
5819nFhEqoec6YIGOqD1A3spDMXemuRFXMpuC5Mx+EEBW/16zQrD1JCQNqez4vQ/L4SavJnVFLk8
ObS1HhyHZccfxc0ndJEG0ANcf76ywVSvzIFF7eC+HliR6ZcNTSa6QWyTuVy5GYWw3AORxrUXD1J0
nuXDXuFFaMv52mReRjf9BubdmMtGDq3jB+2HEpKE9IrF9kM7OGOaZa8N+bLs3VfVnMD80cvwfTQA
xES2s5O0aMuDGzaVLAKeV/CSyMqnTGamzh1xL2+O+rIziPMyBqWOJjZcq4t0CjxiGMM7H/TtbL7v
gEM79gY/6tZPqaw2LrLENgUnpu11iYrRWFff5oRRCWQn/cCceyznRCsnXLOvKuNHZVHUah79MoP+
VwwAPMVMoCSp1mLp/wktuDhrglOq0S+i+4O0Naj2IDabR5Zi+T1tkaLHE3Pq7u0vONrjoDfzEEki
9UoDja5A7LEFvBtQBlQexpIDqo7rzkjIqo/Z//AbDV1NpgZW3few0JrqcbOzxfQLA+xGlyUx4r6l
9LYGnommJ/OFPuJqhmeSckNK4YvODsBp4spBt9uUL57VY/xQW5BOt/6JNvcujdJUKO5vv40/U2po
6xdTcLdDs7jZsXBAptxyHE7NJsi+d0lt5EhuVJDZrjwkNxtl08oKwQ+N+M43fpMo/ioZYr+Ozn1N
AqOi4bSdjlkgT45RJmzRQjlK0GPDC7lbERtdKIxbqVwZob0N5mpF5Rk1AdRADj+GA+E9hrxbszvc
SkLNglKrhj54dy7zpHsokgkqwM3GruHrQlXjKxwoKyHG1AQ0I6QReMb2PVcMkys81JSwAO15Sn3X
F+yDqdEZ3fKcG94oRe201Wqk7InfusGv++HC1GEUZtY81DuBjdbtZYuctkrbMjH1n2sgzuy4Mi3b
0FQ8NxrRwGsFHimeWxEdaoDemCJJ7PS2IpILI2hSiwq76QJzP5M64rg5H1S3XmmLGdKQu67TAmqM
oZu/KpI+E0YFvdKvT7cbvCrXPAVqMEWm+ytbVxhlASlpTJEkuKWILqBxZFRVjl/e0Ku/mJfVZN8l
HCSKWU+hSixvlH9UgWnTfuhk2+LXJfOvldMHEhAjnPitoqvls0Pf387EuOBlfNqoFjn6EdJCMSZ3
XZ+WsLRjfJ/Ns32n2VuBIIvPgAWDK/U0f0dJOnNhgZ9JGcZoSmfDJnaRmhx/gPkK85hLJw8VqFXS
CJiBdT4z1MNSLuEpYf/vQzaTTJmCAFPj6Pxqbte2kA5RQYrTHnkY4tNhmDqVsjiRq3Di18qfX8GQ
TKJDwkrxfdz4e2yaVCqGf4B4bhceplDRwpRphbPIzGsau2FBpKISngutVhpg5jRDzozxrs0TPkSf
MYfVg4WzsSfhsfIRtjnUa7fNCnD1GftsNEt5IFZk+OaozTeoH1Hlx/xuEPAdAq6lovJYU1mvsfN9
LG1fhUQsQga4le6nYEAKagobog2VdSV+OqwW3sPpX9jnTP/Prr+hxJ1AHqy9LzknGTM7mddyXJep
HkJSkEnDkVEvRktKWZoj2OJBONxRSPyghR7S5pXJF5RA8f5FeA2K7gU/L4ZFo3rXuE0lNbd1S/sH
enpc7wnqrd4YEUoK38ulyXKJBEm4gAZSgvi5kNENhpfv4PL6EeE8t0hwdz92gNso1oUpFztsfeN5
XQFEtxhsBI4pz8NFuzAFk6B2/Y73hKmHFWWOI8jpsqhQNIZZzSxmxCNe0/2JWZw6amGapsoSVfjZ
qG4ze8MOPE53uo2WtL+WG2en1U/oPHbb80ufyx01Cs1orP/fVmwAHo99Pvm3WOhFors7mWhamAIm
Xj2Fd0YW2ydmRJZRGLaDdUt9ZIlnH2YZQdWMDEzOSl0EwfL06OZkmc6cP3fqAHIwQvv+n8I8lo5p
WxfXWsb6PE0jFmjxfo8mVKe5/f29pn3zIoleGb9aWNPOavTc3zACahZhsJ3lYjKnnWXlMnrUnSZ4
9rMw9gcymkOayp4W+AK31fr/f8WMfwu4qqAoP2WXX/yqHAliYF6TAFEA+TMxgqzIGV7Jrp6mnmc3
m9ylF7jUS7sYFAuGRjXhKYeGl7pFpJUxroacwyBLKTL+NSuQeC5JC1MvMzpzc+fPW3ZypYdB53Fp
al9fwkzN6CHvb1gxRlD0zZL7VnROpLv5Rp2vrFDynmdLbmnLDgx/u29mzgZzRf4JZ+qpuUzX6hjW
Tbn0+D7PhUIJmFEauG0t7cKY2Vac9b/4deLim+1pHp7JF7GPeSJneI/jqkylxGuM4oERKnoKU86L
dGMGuy+lIJDrunRr/+JoA72xPRAHkWxWT0++TzJ5jQP6iKKYlw6g1kdX9WzwK4ePbGRjMt4tGXDP
ztNXEceNlHukAZhW3uhrGPSX5xChl6+zRmxXm5DeZHprwEJ9rFzRUYlF50Y7rQRXZsKOoZ2QeuOo
pXgiOLfnErdxxOYqFRI+zKoo3RHkD/QDZj+LnNt4gW6dNtnUfnlcpf5Ddi3W1LM7xSDNyxFVfYE3
qAhQbCJ9UURPL4Zd6a+oZ4Tw1idvkVx7IkTVooBJAVJ+iXS+FzCvv4KTTxEX3RIxfoMNrlTDqiIl
XM7d8ooSihUyowlk2f5MApD7aITeAHj2j4A5fzMp9dfnPewpu1+igchYvvKlhjwRpwQWYJhgkHyN
L17xYM6w2aW188i1RlGq08iw1MIsNNoEXcfeHm1tBYCLBh3wGxQVeL4UvaAyqJAhzXLHsZvxRtLG
jboaSmJbk1dIOuIVJAvEfpWrpXJvi4zJ4O7M9pLN3Qf4SNtTVhdW3WJEVf6d/TM1bXVqm/W9Gynn
PYKeZP0PJ38rgkjh59ybEagyVxZRYe1hMCVqeMZul3WbLKzUPRsw2X1XcHl1A1+c7iSXbtLRCqjC
H/hI4FNDYSDKKKjjp8vkWRUP+mPt5C665ymGYIATfh3722jZQCil4BRIb8W46qZefq+mYECB6toE
EjS4Ur3pkJKsgwzAD9Y4AEBonJHgNTRB+DbkSrdqAUi9NOOoDx7qTImNYsmPWqL8pF+axYDF+qnC
Z9S/XC6Dw9JkTPvQKtYOT7ByXvFndP0USTRHmTpdKranhHaP/XY8oFng2cU5fm/tK23fiTAwql4h
wr+ibXSITlDybc530QReBgixKVNoOfVs7TREQDIVJWCef6g0gpAo4HWM8v/9Ky5dAqFy+vJID2CZ
7jZxj+wpq99Okkb9aFy3kxTY2fds8ZTvdRW5H2ajRQo1ycTl5Nao+kLSg71XJYOvKFQ4W+cutdYO
wPw0audC6k6RJ5nUMM44djIwlgjE+6GcBBbcSdmCurwEIZdH4zQFpiMQGuwjIv0dAMSRzx51CcPp
Ensw8Rb+lY//ngP8LxKKFT1zzQjw4RO+ySeOnEyCmPJhistehx747N4ZOfLPlVyS9XAYe2U/gHsV
YKruQzd9A3zOs5s5jjXe3Tyj7iG7nlVgPq02qc2uX3OMxLbkwrRM3yNeFkAq/dQJskqsNwXFHj6p
50P3Zb6TsQMW1IQJYeaNSjbqqVGwtw4d/v1onAaBSpD/GYwNOTSIrQJCDS5JnONsrZwzNmgIzzPe
UZq/Z2Dh8f+ZXCLmODOJjkAFRbXcqazpo8ELb6IcudRP36/BxKCxg5KyWsSejoX4RTc3gJtk1lZG
9syVnC8CUrwEj9L9Xi5T0NdgCvPDvcxMaPvIUp1SHlA3St791Pzk0HFljpQvf3L8u1ySJ/qrcWfy
0a14bUriDDlG1QSeZlHCgbNavMlfnKWc1SffGhp4LVkURgrnJpH+Vlbm17QIP6oXqTBtfw5b0FPO
n2xQd/kyVMZrhUtAkIgFFnw53eFlhKo3qCjOMdFFKqp4A/OxeQQ6doK8zvvSZ9ol603E0Lj9qKlt
osrHYu6NcFjq8IW1UjaBEn7K0bn/v/5jfUwp5K24jt4ZLRwuy/SirEu7WOXnpZa2RlNOwjHbJLAe
6uqxv5FRfDl7ugYs8JfPgsfcAdHBC8KZmQgb/MgXBQxJbHG69IlcDUjvRsZ/3Iodq4HlGegj8XiN
u6Wo0elW8b93GDWtH8APpRqH4mrZ1ZLgCdrjPmWF4GhGatbMsArMzxXVw/qJ7eQYP9FMBG+kU2MA
zj/f3Ub4Z4q435i+FBEjhU3O7dSkVEZmF7vx0v81IRSFXL09bnkVpVovRr+r6YiFg8fq0O/Ei1KR
QwQS9KH4QbTzm9YKrpcIpEOFTgak4GnGDjR7qiTJVcuWaTvNs/thTywti0DcnnrcDZSSvHyQ461Z
rfTUrjQzkC6d83yNBLcyT5WKTxcyP43Yik8U9B6SACN1RJvtEk4rILgDsT4R6Rw8RajMpq58rGsQ
vAEfs18IJJN7cZD7FhETYcFzANAbNkPpW7NZFjWKJZLcz0iVSvZJ0RY2I3M1Js5+lDy2Aor3g91H
fH/t1H4xRp+qYjjaucj7gxAeVUgpPgOxq0S+WksXoz+yj/WQS1y/EzvofzzisR62jAIPUPycOh7z
cWr6rrtd7dhugr3DvobBdBXvCnqTFRggduIJW1zoWV4r4FMO9qaHTl+8qc+uw1qa3BliQm86AQo5
55LTPQx1IcU0FwQO60psiSVr1NhWMz4y+hzxy7AoP0TgHN75+K3yUOQZ99isQvT/tyah2WsA/Bzs
I3j1rzAVX0KM8DlZ2/ES8hSw8eLhhRMQOiHLfE70/VLObjD6BOoz350CdnccREpBSQcmopzurFhL
XKMD94REYs3B8T/9EEMATH+p4aoxSxrFqfszlp8C7YaLqcbND+mBWZEti6nDw1I30pHGf50bzhUS
LRiLsT5yxmqpQV+SwYfmCbGbk62kSyEA1R+4rY6nwxNHzlP1J3MgBtQtJmrdxZT9Hn1HIhxm31wW
TO+omS66em9T4MTzelCymqAtW1e7dkFLvujfOyDXG48ZY/jIB1h/9FV/EWQ/2B8+Hy/U+rfnh0VH
fQ/TogoutvS43KoX9iTJKJxjVycXTevISXQBqJchcI6xLkr2OaxDRRm2PunTzVhuirW5vVANbIGU
RLn5Lf86IxxPi5UpUQg9Y/tZmU5x5TnE74KC2qMv69L/Qxd1uuj6xWeXu0/3r+CA+14gJGJuHcpD
qBxbfif+kYdUg5pLoKXBwAb1D+Vq/dgp22NNVkC+m8o2h0kOvPO8tPxs4tUo0ntajwY9f+gN3ndV
uaFq0z+EnzTjMKWIklD8bwR+GI24skyaSdUbM7Me2hxkKup6ABOvq7jovtDB+P8eTwuPyErjvflJ
VmmME640FfzXC8kl8NwrFx3nyVf5GR8o5LhK8n/+VjbgRaHqXviUmraLkTqUDPr0NwUi0DFDGh/G
O6fGMJLN9COrYQq4Sg3ElFh7tjB5ZBueRb1a9nAm6o3gJBvffzNPGEd6fn33DMIsqD1ODt+FbJSC
WEJwCaWI7fuZaCi1r8Hq4YT9Jnza0UaUC5/iACr4AS+ehQKEjCC3zCNJircynmY0ToHS8vBzzeIC
u0Zba3l68UBK/I+Hn1mAttpgKpfMdI/BgD8hL/Z6huSN6+D+QHsKPAaywHF2zUE3R1hpQxM69wC+
jd5M6NlMiTohFKNLJBwSlbBm8zi5EyEoC8lVzoEQ3aaYb2nFcM1F2p4h8Djvzqe4nmvCEalk2rwB
wsyi4pTZgLdZXROSgxoup3krpqanRWgh1gdB0/MKLLDWHaEERZ5n6bHO6RorIyQ0eStvxXfsV8AQ
Fxs93++ItaxudFD1xOf4+VkPZ2pag/qHDfpE/XhM5tTIXTYI4niVdjF5RANEwn55Fq5mZ2+GNofK
DQZBMWo7tQUw1tEl5EoABpju4dN/+elWXn+jxNUNg4pGtBsmwnojchordXKuNRK7I8El2hrB+5uN
9IVZrGSn3fxp6NV2/D31nWosLKizRPtOu6iEYEW4TEeyL6cuujinkIzfOY0o3h++4Qfhqxv50d7G
T6yNmrLjUS0bCusCDELueXh74y+VWGDk/5zN0y+yCJw9bUWATs8jfe+nk1lEjcQM6fFk5h4dQtIl
aDRdMDWXbzRS5wSRy2H2uJ5Clt0WiSGz5GNmSGfhcLahmRYkJNTWlfuiTDYlxvvLm0QKttpV1ndm
N+KW1j3adidK/aGoLNCjtszH52BuL34dL4WFWUQcKw6M5sLAZw56s6pIcNcaFD8GOYJOa9wzfzvE
oSmWNetDbiR0V4QZ+BMfGlUzw4YI5FS4ffuBJ2oFr5i7TeqGVQOApCvJ2e+N+2GvUZrJVYa0WBjd
CyH1MeD+1vD6w9UI4j5a0+320QS1GCn6vz/0jFrjXaA9u/7VC7Ztaarzc/qGK85Bw12xS6ImiQTF
KSdYT5jEjQmZzNDPKLICsFdHbiqxExDbEcDo3cthMNNc3njYmBuR+wbnzcV81ho6eWz42kKge2Jg
dZsGNZ3/sMhqis914yoKQs/obhRkG07+tzxasGwnF/oIvbntK9Fh2GuPF2atF8WeR2h6DLGnS3BN
CFjCGeIhCBfIHVNVZxv98Si7gzHMKPsMubwVW5AXMnvF7WHNQJ0oiwH4VuCKpFRMG0GijMTvCv2U
j42FfxAdhOlep7XBBGf5L+QV9nKlS7psD8LVWpd7Gq0XRGYCR62YpYFCk8RgkFPDE2Xd3BBfYo3b
nqGxvl2GLtrkvXf1bm6woERwxwF6GzHLXlhTBec1OBzVwzh836PmKWchtXIcLb8Zr5fLCBrCh+2R
BFK4GhnXFhi8aHvFwgR7NC4RwqSoAz3Hfe64pslGtQLt0J0D8Rt9vGbCPwQltyfkiVse9C0DZdbW
xqWY7Ey+b2oFPC6pW4APS4DktiQDlelxi8tlI/8Crwd4FlFzscJuQ2Zs95UGCMfTYgDhFBNs7mY8
XEFbCE+z+Sk0iNd0wZrwPhWEtTfYL/MfbpvawubAxM7VyJbDa+s7nM0B9bWW8tWAowuZv/8s/X2X
r73EqEe7nBMl3PrzozADQcMyAzVA56PTfCa1AF2z6tV4AF0++8NIyiszFGFssHOBa9V/0rK4HZQV
V+PmuPTjXFnDc++5fSHFtcoyopMAJJFWWL+Esgpxo98qhbbxGEYP/aZLSOFH1OYb4PBegVxevH17
Xb+FcsPNGm3Sq+GTu0uLzEckOUcVbksghD2AT87ay6/BXteVd75zmVry1Z/+rp9kXjUxA8uegGGM
uJ64GywpRgOpPespatS2SIYNXmbi+OpesXyK6G4szkOCcU7By3d6d3azZNhWuG3XCTs4BPHmsR8b
Rwp+/C/BawG0gW2y6N8TM7zAUv2TP5NiK6hgebF4Dn6EjgUhpS3kmSY4cg1TTVOU+fcznJlWfw3K
SDFOs5S+Ncvrx5MeH062RzVwWs9vFzOE/0lO/pDjkOZA5DryKQX9R02hO/xKZ6tiopqxyn9iWvTX
8VZaTclZbANhfopNU745P/rBi9QSgo7kptlRwtBHpGkjUCVSCegeTydEWvzX57G9pUM8Q91tVItx
kQYPCJSOGxNMw6fFCjIX9wjORSkfIR/uQP4Go+qFPa5Toj5y1Z1IErHSbjy8IPaU4fOEsTRflhCY
WRKTFcej/8/tPwVqE7DzgNmkDdqBqIFRSu+caeM7NUgVuwb+X67lH+uxmRzE9M1IQj+p6z1VmWEv
ineIHB8PrzgajqVsuSF9wY7KAfXhgtjQkie+TJNSCvVGSI7C1F3DP0H8RQXtDOgpG8djjGVQYdNu
n3UDMna3OQpgLh7krxoTGmQac54RZuU7vb1RtgwS88qw8+oMMtS0k8w1fUuygETBj19v2oOk29C1
GgqsPUEr72qF+708sEyq14nqjX55lecz1Zb8/mNWSG7UNJ6UCxywFs9S5TcYMcSvX6tVaFog8M2z
VULiCiOPIlro4i4ZH5QLyIL9nOi/ENjPt9+Mcrr5MND+YKeuOLftmU/Ojla+8AgbtbffZm5PVc6p
jZausvrFfgfH30GtrsAjEkWAIEkbheZR+r3LMzVvvtKolkF0goio3O89UsAsv6iBWums6nS4c458
7EIW6DoC0LnRoSRZn20rogvVbxxT797ukYFG5jk7EiX6DBjB8+WqR4Fb3p03N5NQG0SqulqT+HgH
rey5oWJd9Z9dO9HVpjCawQhRLpQA5BpRmChios0YWi0FXQMbiPOqjGfc2UT4Whvjru/Qe8aNfKA0
SRc9aR6Xhj9w1Co6wY99KIquNTJSXAte3g/rOTaHUQLliX6bJtohMENKtP5LoMMZSlnX52EMEmV3
fVUL6CmB3I4IRW04OuA+WbFduf2kkgZ360q05t3c6RV4+OwHj83Y4e2lqlDvi52h5DFBWO7U5MHj
4RQnIOzRUWAGmNQqMvjO8sJPDk8dFgeJcEXxcQsCT6TA9tGYyEs5YYFdfimJuV/m8qbt105GOO57
XbZY4C/s0GZl21Uesmw5lfwGaDim+0HkFgdJRL183QlEJabsCzRw4dEoXil/tckg8YOwbd0Xbnmh
90o9RbFhgNMUXs3+2K2WEQAYnMLk5/iJkNI/g18E8u3Q7T1Zrh4j+wjFdG1PPEKeYrD8qHQtkELM
SYve5kPWhRxCV2U6JdtUOWCYP1snmUUt3l6ywpYl9ROg4dnIthpQLsnuEvGuVKq1iicEUNoWuJGY
fD6ToJc/AC70QcPiWJqKkCIbMCUwk7BUMXHYixpgPwckqKL9+AjZAqP3PfSp6WW+cNskRVBYiAnb
TqxVy8meNfdAIoNYj8T8+X7jdscVjZaZUZCQfTudiueP+MzXm399XYMuDvm382VsSuenFE3dn1tX
kHXx8OTonxoXDjl852aDk8a5d6a5PceLMt3oko53RCxDh910eEGpayHs0ZI2Obek7QomB1Y8+WbW
kFNsdVsGweDQfQZuRN7D+wwPG5ixymXFiXLr4zSmcYbXuH8huG89ZLe6JidmQqOutDJBzKWd0UFA
AV6j6lY2j7WTfTuA8VT8LYNLbA3JBJZtfqcKN6MyQWMqwaf3G4NWvt9aqboCPxRJ/HNrpUZ1+K3O
arw86GJdMu5P6tEDpIIQeJGWLTJ8pxkrYc5baqpNRsN0jCX62OLtTbwZtPCA8L+6VehSJT3BCPcW
rG+frpx7TYEC2Gf3LcEk4VgFtnLuemOdnL842ukMCXjDkRWdvZ/JYfsaRbGyc+BCnW/CmAHQ/BFk
1ygNal/X8LZt5nxT2pR3mv6Bx9j55Vfb8vZAewnUIw/OQ+KA6nfJc5WKH8bTh/aYByz27HzM2rrm
Ym2Jdmgmgw+kBqJgTtVP0FezPSEjG6N5EpWCK4bxY4x6cR0zTbxwCDro8HaDQPNk5GQc22MWyqWh
qG/tOiS5PKIWuuZNdF+H5MIKsIU0twkJZBf93j2SKo7asO0Is4bThj9nBMRZkpXwo8GGf8Tc6gTB
T2if9iy27JkacV7xuQoTlRqB7xEFbra7Du1/8rEOxGsI9GaqDpzmLSPcxbO4BuXq8hDEJSeIY+FB
E1p3i3iTKX6he07fZ6V6PaJ+sFfHX/SQDGuNQjGUUnzcDqFzrftuChfSwV8n/DEinWPbvbFF2b6K
1O01GWeZaSF/bnnvSpvxQIPA/CBhkZDGjSDtpZtjJbGZmWzRizrASvHY393v/JOJYwOoo/gHYXKi
j0WJ2BlW4vvBwAUktyoj4IV2w5ldZ2vTh+Xdk1t7Beukjy+Uk3WkUETRRgYW2SUSvXH6/aC/5kmk
tNrZVvkbzjcReEdGNVRNjh8Sj72a+wf7HHHlDT3jTLr4vGVaIH7Rvlxn7NRGjY7BtDROqhMg1VM/
bbiIEHjsgUFWzHrTj9vgqd5kK2OmNhSmxg4Wz8WTtHwu2OqU4ab1KpkFetIUgFoH/mzUJfzhTb/S
jvRUkRB0756f6qF8St/G1ZnmIYGgdZG2Qp+TvVr8EXfb+dAi9Ms2NwEobFESHo0gv9ljG8fauOGu
xX9DfECwM2kDsWKiCwNfmjG9eiINRONajd8G3dUHA9abpeImb7UIGge2WfQ/O3x5gQUi6jUGTLdK
7dk5sAVJPtPC7a8GpWsG7+1NODLIZmbwyTZWqY1fSTVA9ppOySujLNhyzdcKKCi2l8GAzZAxAk6l
kJS3XAo4vVvPTc3U2JaIxS9WQAxsz4mJtJBJPi/OLwgORqIB9JIk4NSO7h5FcaKspgHWjdKrCs7U
PlswQYEAxOMDdvGnh7DDVSbt8eHoqtf5eQhXsEB9wyuAIYdtMFEUOwhvfOQwShxrnO5sdZViuoDA
XecpBzuWZk97AYBRzmhAVz2Hb8t8BYdHtjag4QC0+vhfHP99DHLx3JYac9TGaIkCmoHMn8kXN4Nv
/Qk3h8UG0ZWR7pxtfcmA2M4K+sKeOPhwAMn+CnFCG11rkXY4GMcw7SNHk5MQfCupCu4pVT6+cRos
VaMTp5pUMDbJL6S7mKycq5uIybooi+1tmhLXK/WFpqsT6woEHbSUdAVG57xj27vyHePK8Rz3rGjE
YA0jtqd0LXRwqeAdVzWaVp32Bl9EwUgeV2NQ5I2ciVxd/wi7TTgUs+S1ZRmCCEABok65r/nIxLng
SXVsWDN0ybSdL1hWRwNyD8Z4d0CV+gAVHg57moHaiybNx7CKuQ99iDb2mGt0mrXllGrYKGRkil2V
sutfaZNDV54+fpH7quYJ4NtR2AgaArcZPHMgEyB0BYB5wa1+9hov8Tmgx18A4qyhPULx301VZawp
R+aofMAJSGEi7tqQuinRN49ouQcoq5rOLOlLmFbm4V5+MN6cF9Lx8vorDH6bnqIgaRfBZPegWEjm
dNB8iJW5bngwid3y1fp4XOGmMpkldUloHIgmtjlPvRaDApVeZ4mCK8L27MOvHx0+4JJH/ZsBUi4Y
fARkmBy7ly5cI6F+jkBPxcy5y89vGEm+GzYhnmxGF8vogEsQlIhU5AtfQ26xNTykSyFsqa05Uo1m
90P7QZEzGoEnP67URZQp2J9e210i0/nUavYPWylOMUI/OR6WPqKHtlO+vd3OcQgCUWtmih9qdehb
ABVVX4krzHR6SrnDo3lYbyhGZVpI/5qL9nul2U36lg0g3vE6esefZ+/xv52aKnfclgMbS15DI7W0
Y6BSE1Oh9RgbPZ8LiTfUbn2jkrM35PgcvFbR27+rIA+qDq/KeWhwokcu+KuX9VaOBziHE1lu6CyO
rJe6T6wAuNu1AVl21+aG+mOz/iB98hPBehqPnBjljEFOnTiU/ewNF4dM4UuT6nnEzMH/kS8F7r7T
nfFIeY4CgZVNKiebEEDHYxEFlBgNrHP7vu2DU2KTr+IwTtxIjt18Flr0+2Jay+WUXb+TI7rfcvin
f+/cjiAM/yKAPvdWPIWqHzr9PH3HXYT079n/YdrX+DKP8Kg3/xR0g7ZR1cfHHmaZ04c+ZojxoAB2
juWZFpft6lg5aPsnJVmVQSf19s6x5K+aiBwjGKCGonW2QcG6xADy4eDfz1FuJnlwyS6v6/VzQrYy
OXWG4Kvwy1weTLoxye1tiosoIPpHFC1ZXqVjNDzukuSJJCrGSm8veT7qZyPPCANL263nvE3KkrjZ
zdNB9avzECSyPOaa9Db1qEhT2v1KoNdSVMkFqw8KK325BdsYU4dD5SF7YLr5pc/6n5VPbbSCgnxF
uo3sk49IFPE7q52eCWETbixTu8B1dVvdDHsAdCdtHYZEGm/XzB6pRbR2M5AxkZxZmt+UC5J8+5hU
Wsp2ow0azbDu8I5GKs7S26XsWRi6onv7/PxnDaUMoaVIeA6kCuzWwsv9VkqDHAW+vbyUWWKawflx
SB6dTsBtKlQGqXKF+wOzRldUOTtuVurTAXbCLzBt1pQzIQRT48Ci+gz45o8gk/mxN60odVhPzChL
ZsUa1qx6uRGLjYGobjv/AW+r+3V3gYiAQS9JN57IWTuB4M6GO779ZjqOmJJexB2+zMog8WgB30Vi
u4Wqvoize6IIpST4B7na2TrKoR80j9putmA7bPceMBNMUvVEEKV2ZpB3NPALXSt4zGnVpSI9hx3e
aoGzDCZ02UNyc+ldFrAaiLDLA4P6GzG0hPsPUhSxBH8iBejcYhMnX/EOM8NudYIg1Tej/aVQrQTz
i59/JHlOvuj6B/FGYDjS737dfeSjlFRB/TQ027HhgYVtm1pUiunsKMG1DPVLIjdHAGEfkU/e46Db
oUfGStjR7FR4FgCP47tBA9nfueh+wEEu1ubVbSUVKSeW3nHsLzMoQUtNHFOCnTIth9LEBUj7LO+/
w46Wtbz9SlQ1Jy+PG2M9W7wTv1C6/R4tINygHkEtEoRenpO9DrTlhNLnS4CvUqXDX2zjTq3rbk8C
LXUbq4xkWKELl5xDVnH9yOAe757vCQsGGl0YXsrdWBAqCTSDPEtvTze5BWGhYNfYMfJLmSOiD5qQ
iGByBrtPA3xxbabQ2cICRqOZfyohrUT9gRH7Rr9shp76b5Adzn04+ozsmuu4oc+ssHp9pF84ad/5
5mc2vp7P3BCvtb7Udi1HfKkp2zF8n00gcKMIKODkCnSI9BeDG2P0G9z8/d15hC/iahQrKcDfr8iO
N1Mvu/PO8pKJRojcxa0mlylh8HWjc3kPQB6/Vu70oPKp+dot4brbWIyFnWf0OYbGU2QYLYPM417S
jTQ0WltkdS90J2mHb3nde7lrzfx/TFdIpGXPiiIsmtlaMc0GGqKQkqJfR4uySeOI5NmiEOjdpvvI
cv9oSkZWgopaLsXIuLppZqc1dih8yNbzKOzHyE18x46VgAMOrTAc6UgyZeno5gw+vWamx1iyUseO
zIpFyb9FrFxwzQOJy9q4Lhmrtv2J6GbnjlrgFVuL5cjLw7H0s9MKiCnWp3IUdOz65UVbvvrF9shg
kDXFH5wCQQs5nMuvhwPPVKjKFn7SQ0jV/lxjIOn4mIzjaC+cwLOauLxNqTYjK4/wSgA5DlbhKh/e
Ul3Os60jrvRgwRSD7rdIDoQ+wzoD2A1xvFedN5NQQ2z/b619jx/AxplcT6wnX/TAhjzCeFvA3If+
4HRaupIKz79AXV3PThNPDETaE3oY83Rtx/dOXtxzt1AAWuMfJyjgET21bGDVJ+EoZIxGpjc6uuZ4
URN0kHUAzG0NlTfFL/x/BLxaWxoU81shEEgJm7ZDo7f2LweRVDVh7E3a+S0sxO5ZjCB4SG+kbm83
aT2tLGTrE7g7D+qPq6IYY1cTinsxZHNXSb/Z9JmrDUO/cy1h286HiGwEU6RyMzi05pM5UREffety
86GDT/ABSPhPJbeZ+/RbE0DAi4nMmlJ/TEKhF/V5eivq6bFVxyvfQxsURZvMp3PXQZ5wcp5jrs92
JakF4tvLL7Jx00QhjQkVOD6UnRMuXgrBKwH1P2whDgXlmnfX7/72K/j7NKWamZUVF0tsWop/Ppkp
nmYIVQdyqY/+emdZDdOwHzX95W0AX7RfetZDBVKlENii1jsQ7QDzOkpq5pAtDgDQTqFIyF6YJYxR
NmN03reQb7O9ObJNnq3/r2SKUZ1VLR76SyrJR6YoKAXHKK2FOIKQY5BLyor/gbAuvpqvIthNv3ig
U2Cz5mr/+4OmCTnYwOYIgv9HchHloMRRIDtRsi/h+Q8kIUTMPcyvNuhNIwJ8mwqwuLikL8MrZWNK
eIBGkpZ4shUk8DOQLKWCpAM77oNGkVd0ZZ8Wa9bnRabUee2cM4liYm4/DzSaykBy+VNg/JP8dBRs
4AUyypgrHbh4Ny+GA8xDph8c0DdrCOKWmThSK0SMfI5sXx6pOT0+Z4NoVmi+ULKNJQDG5sD5xy8g
5/YFY2mM8gfumUupxcjaQ6NdHTYWNVttZte7uPa1c3iUvCBKOnqBcTTCWrFR0mCi7TXSkVlOvL4F
4wVF7j/Icoc50pm1M0E46mD1u2dCFMTCvl9SYx+CeIh5xmPR9WBafhUu52GsKnpdGxjDpA1gLMVL
3XYEQnuBE+0MxNn2ca4NonLtL67hNq1n4p8pZnlY1s7al9RvfahvLbuIBHC3XZHWMIv7MAzxZ3Z+
Z2azRIFEtAVqEq264qJT7Yq813vh6E7no7yrGoWm/I1knUJ1QMkOdSXbtbLqCNT0BI1ZXu8o0Wcb
63KvGP/qZ0+WEoYsuUUf9ErGiSxG6FTMCz7ipkJw378SU4FHEr2tK3xSf0iodmDUXUM6SMY7lm6o
R1TDpyJ+r0chbIGCAYCpP3ZmfhEo6cjPGp+Re9gWNPbtisNUn9d49huQ02SEvH7p4gGwYKBgUWF8
ifMeiAJjgB/gzSQ6rDxizYJoQ+QD2SIskbONr8rWzV8UZFeYeVp2oO5FwAQA2nE9tJlrKq+qvjLL
jVSjulvYFlnh0gXBW7DF2uC08fpCNGYRAPSgbvuzyVfZHQLr1XR7Oh6qac4eITEmunJjWgMSllpm
QQ9csTiOljgmON4V4Ad7ylB4TgvZRHD246gJ4Fsbz+eVkCwd7HxNocKmarV9o8uY69Su8gsGpomu
Txio4qmjdH74EQ3KUd5YSJaYuofSkqPa8PqkhecNs+yDqGHZOUb2+ccr4iFAnaplLEEtuiVv9O5A
J8x/Y6Zw5qythU5EGR4aj40r/73KJXtcnUTkNwLn7I7EeivGU5YAcktUEJ2T4FJLVB2dTUku4/7z
F6c0LwYGS2TEI8kmhOjt2oVLRjlby0OiJa8wjscxQSKEBrrISN8PBKihmx+K6MhsUSFUpMDB6Hgf
NDzzYszUL8EPDVMcxp89Qr7NJdfe0XkpNjsY7UnTTG5M9kesaYYRURjT5J/N0jqUT62w7SoYTJKo
y/kNHH8MO/zzxETqYBWjdogROrVc3tYBOILfksLT6IgMeoSlL82w/IU5rg0RJzQe4n0D5muKRiJC
yeEtA+DMWH4ippq10bffQ6z6LB1ZmoWxsm5vcG0XUotWYdE0u45yu92CGd5ifEYuJHGZ9Aeb9YV7
CfXBWGQoHxlwaRC38tsynMEdvAYQLN63nl9crOiN0KwdeeBbDewF9wb4j9YWYfEMFmHrAUG14xUR
T/GkMwMmBqm2cFimcvhJ9h146uYlb+pAFYRyJhZbSOiIx1sQdtjkUUKMACcn0+KPmUMG2eDHR8pl
BbuxnvzmlddOCC3H8zYILAIS/o52VV0RGcC+GlpUiF0dZF+W6w0Cjt+YRH11gFX57NecpeE8JLGg
SEbrlq8dUcz8GJOVqeDNRopq+wvDvILimAdVAj23gb7bsFGjN7BEDear3L9L0xx88/NEw/QH0qLo
vFd+34aIiqo0CJAh7mNDZgHWIPIZkRMpi310WiCuNLGNMg1D5cE/6LbZtHhIjGtZEAXZPI+K8KB5
Fq0Vm04PRLVuP3ZM/8mFt1YNxok/AKtDUIWwylYzFB5F1yHnz1xobUzANBclz/JxyQWc4bBip+ZO
sY6wgzgXbLA/W/m4TZA6mwC6tpPYTdmbsGMueOSMQP69bCwsIg2cj4/HaCWe8MwYJ65xa4ACIIiD
gyRTZL0rCFSFlw1uxV0LE5yLAkgoLnTt2d0XoFc6cY9VHVropmEGmyNLbpbH7UTNyxfDjGtWJyxA
fZDz9O6DEif34B/hCKpNNYTNGT70A/AkQM40ZAQPyGffodtuQw6HWyp2TFBlVJRSC+zTmk0f2CYz
zozm+gaAsXHNeFY+4QxktPZXMAQn2Qs07j3nX8/2S71J9IxgbbyN727/A3yJ13I3yfg6CD+vV+aJ
aHvH07mxrWONUObiMXXkCtY6ayq08myhOc30lmtVM9Pn9/0OLPDYON/EG6ct44NdcLDgQt19OypW
Y1SgmaX9ZSbr0EC4hoyP9JrWDxyT2xYhe1Jhr/aHYJN8ieefH0td0QLl/b7aX9fb2KP8t4SLDXpU
il6C47edG8NNTVWOdIDC5RWYkuRQK7rF/ID3inlaGOlMMLYvLRRYo6FOEdaTdArs4Ohpj2Dtt9J1
9JffEmspDrtHo3gAafzq13RefTEIZO88FdA/+qsCuSecXqR9/rdc631OM7KS277faY+Cb1jDC9S3
ZYUSrapRYLyTSFZwMsVfKWULzaBHIknNCaS+x+oysnfHruIASlyn1pwK+G2I7I+hrvvx4a9OocWr
MkY2u7KVoUcOSOHbz6Aj7B5oZ7jcbH/f+Q6smXYsrTy6XFPuFsAJd8JVo0ZtEzlOIvHeV9NvHcpR
rbxwpOuCtspdQtaFaW3rJVQVIwdMwwCyQNEAWbF4OJWGC+04XylsQeaxmHf30fXU537qhWTaDt3c
VVQKhHDXkF44egLK9EIZ28aJJFxFJnMAOVGHip11GAyr5I+LesCMcHEVlMuztwKmaeYlN2tB6zk4
Qf0XlWNLq4Bd8rGV/nX1flPrDZWsBbGUyJGXh8CGRVt8jgg6a/TH2Asb7Vk7Y7PT+Emgw2fd9ZcX
2Iyyt5utiF0xzZrHz1EWWYvdR9PsGyRhaFSEn+j6/ICWnoUYWJmn81DoMHVnJW1IG7v/LxBcKEfF
PAGc5WLdBYDSymDj6BES0oyapca0q4PUKA79RuCyOxqiTumkDJJIYpP5LbbjV0uioPDvyUSP5nNf
Zz6WbnlI/AuV20QhZaooCpcxIroo6/f+2dSytYY3q2/gyedWBSMixeATJTrtEBFUX+DaVzyhr4eu
oYSh9/l41fhu0Ex3WzqTpOtPHcPITUW0/CZAyltiL7A2jM38PATodPHV9VfhmVv5mt86ogtgB3cm
BIuciqIvC2hEm8HoP1JhCNV4w9EwA6QhFDWgp1ijPHNo/efnXrliSzdssrA0+YmAkqHF4vStiEz5
Nq69f8HLvqUXzcC2zFVMr4cS+dY9IpYoyzHcKDzKevE9nNJT/Osu+K2m/bZxHmWmbGzYKVxLImwM
k5FM2IMN7N9fJBmCs0u9by/0oIfT8+Ids1+M0Z1G/VCYxg3cT3XiwqvDv3+MG9XYlEao2Z23Bq/O
zfjqeHZDxA42qGOoTal2wSU85kZzhktVQFLPdPfI2lfD/K43C+jzwwnyZ2fZh5k9uSMS6/gvoZ69
df1nFOEQEdVmuO86yJxHBlkDw0OU0oSWLTZLkN/kqJfEu6euAa6SzxvFuaBXQtDLa9vi88XYovGu
P+AtwouLfxMwSlpU/sBQVeInfQOrbffY0zZ3na5UrsBXfviYZVF/3FDTTmsYdprvNNm5GQZnryFf
WQBIuKLPIU/Yoj7ezQz9tL7VCDDGCu3628N88NSez9pYNcyaC/qs3BVT84Ylp+ONBiDyaglQFe00
6hzmd4pVqAvMlqXapXbNfkoyuxvAbL/9BlvC75Fcojhwx5A6zJP1uoQqhAs6wcNJegBwkHzrDrTZ
1XgmTK1q81ZcG8ZBlKNjekxVi6T4ox9UZkMEoEBwpXO3pVHzlh1HTb8AY+gRo8+XKg8f7So16Aui
zC9HkLg+yUu9RxUZRyh2/nvCSNSaU+vz9FNqITe9LSKdxB50SbPffwowFyKUC4WwAn4MHw8zsD1V
cCu/KWb7BbWvg7/32xv1Wxl3ehqLiMMQ/Ejjmxm0OGE5WFQz7H3u3U17Qayl8p1GvyYJ+oG7EgLK
KYzb+j5mG5S9NJfGKcTjER8kNaY98OuaUYTXkHAbrBrurroZ+JqOF26dboEoCLbNkuWZfzmo5ZPh
xtqMF24hXxRXeHiC1jslZC2ayOJmEbw0nl3vN+4XFLItBnAEm4OHgOiWDPgwtItQzJR/pJfwYRAS
IYNU0vRYAwDA+uGQQLcvmeeIZCVVsGRC8Q1HbDssMTzNEwQJyWupgVrCQp9Y7e6T3z/I5Sh0tsUZ
FbsQm4QZI9S39OVfOpOZaZpPtR4RI9IvNE66u5zFoTScQO3koQv0+FP9Kaxl/uMiEPoOr9ILeKNG
zf20aNstKfvwLqswzXaMdQM4gjGs59pRAaNeodQyVHkxmoHp5XRqlRV7r4S3FnzBYVNGmHpTpHP4
IZq48PXG+b0n+0Ml+3sSa7dhBNO3SfqJjU050jv1FirWnUalBcTLlE44/RAMvAruea1CC/ioqjCC
iALkt3O1MPPm9uw3Of6GcN3J56V44l/V7VpYHLw1BF584VKsdq58a8ETFOFSjLu1iOfe2uiPex/9
mSkgaT//c0kxzb2ozJyVXp+dXu0Jepqom97uF6HT8LG+1bOtLsnJW7I+SFPO3tRSNYu+Px83efOt
1YqszBzHPHCT3ik5Sh50Su1qFYWqUgS2tPVDgRr4g+r4SCpuySl+sWDeDcmvyWSWFZrhW0HygAfZ
XKQrJP9JVFTKxSTmzRHuZ82dJiv5THHZthBOOnwbZc/nB+TQwF97i5hxHXVK7uQTQCMwOisC90Yk
1O9LH0XRnKB93+R+XR6rmR5crI0i8itkKVxoUGKIlQGWUbSWMU4AMwa/Ei3szlI3i7CBmrjvvjwh
VrkB129tjKurxLotEJUd4hp/V4ql3hS2QPHxhKcwVpIXdy7wZnanx5yX27pJXOpL2XGiQvOzz8u3
KGzhebyfvab7eVmS4u5JEiYdfA/7zGO4VklfV1PcIQTzfx4iEKkM7Bqo4gfhzOWFEvfXh1gA9ThR
1NvFNxzH1p0BjYRuI03fGj7W2+zh6wkOXD6jFs1ltYdwxaTSKZbcTbN0st86xPAWkG4nVus6Qvbz
8DsXJsqn8SDlqPkjFUDLAr3j6/b6AGhm5B0ib4JXM72++9911YDIpb6l0ynmn/9Y+CRvbKsuodLF
AKridFB4jYvePE64XdBbIAFcLDcwM/qO4h6ks+DmdsklxzBWquNy2Q0KwP+OSWjIBSBulJq2X2EM
cOScXG/s+Qb73M3AjRbljpz0ZdE8nhFkQodR3feDpaW5ol3w8KgfLJk5yeBRFHbSkmS9IWMv+it4
QAYz6pgR3W/V8wDe85UYV1JQK1yyQjf/vYvd4+gfbw454VBF+PmxDGmluHhdBzSKfWVVWauOw0ml
+yjH9qdPjjk4zxb8vTvaZKpNaKV632tbsroX/MFYAfdZwbtAEkGSLGnNT7dbPK0+ih0lrrGeMiiY
6i8eKRymZ53E/sd4cgFOh5y+S2WRK3iCtxCpil2vC33m8MhoH7EndQxDfasLs5jhfC3gCl7J2mVa
UAPnxrFJAZg8GwuPuJdU3/ONvgQfrX9YmjIMpbEQ2EHvIelRxICDBm93/I/DGiEKudofJekYWMuA
R2D1AszEGbRQkiUnXmuH8hA9Fa5r+FEf4SGMCsLXeAaFpOpefn12O444RCb8NwKH/tlBjRkOVkGy
qo28K1Hyww1aRalK5loRXBcOvzMUKyhQXqJxy1y2dnQieFS2yiKI5uuSWuj7Cqf7wObgJ/qiYUe7
FXnSGRc0+YS7v5UP2p6GGQhEKLnFYeiaCauXxQg/VJhn1yVfgcpRzgskH76gqKTM6wrhwrCxP12A
B55wKgZL42EZPgCbDL4DJ3ClYxMJWoalgbypK1Qra6/4Ki7cLwJmc+TuviauatsV9C8DGHC92tXY
mZe7c2t8+VqJwGceXsNJnxMGsvAJnPxtXVRvt3qDmHJN+prlQiGML6PeNJEdjcy471sS+UaCACz2
IXGre+LCgXSwXRLMQ4mnyL/64gCTHTYVctgFSRh4n8a1uJR+RiXPysn6I92ZhKGYhlIrB4SO8Zy2
C1mGXmlXsaFqjhDJCKDbD4OQ2sjcdO2ign5VYdQS5DgQ8BBdNY4g2nvVPEGnhK7/B2F9EF2281po
lCVkBGbXZgp6g/yUkQD6ozstkP4ih3q/utchSzPqNqhsjdrP4/fHsz5TdU41ntgk4caDMFH8QWxm
zXT/ssO7rQGN/W5BhcYIdaFXBRlbNYokbgTaE0BlPOuW55MnQQ1YW895vT9KAAU71WwbClJZU0ge
cC9ehgtMtf0p9iWY0Cq9CCe1PsNAMavacxYs72CRLxcISPJYk9kb6XBROk+8PUrb3SINRixdr8MS
TjKr8hCe9gJg1vb2BonNR11DWcw60DQ8ljcL5I7VYUglPw==
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
