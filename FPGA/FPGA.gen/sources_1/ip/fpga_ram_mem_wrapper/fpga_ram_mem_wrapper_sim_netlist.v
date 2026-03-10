// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Mar  9 23:28:02 2026
// Host        : ecelvd711.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim
//               /dfs/usrhome/twipaa/Documents/big_ram/ZW02a-25_FYP_repo/FPGA/FPGA.gen/sources_1/ip/fpga_ram_mem_wrapper/fpga_ram_mem_wrapper_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52192)
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
