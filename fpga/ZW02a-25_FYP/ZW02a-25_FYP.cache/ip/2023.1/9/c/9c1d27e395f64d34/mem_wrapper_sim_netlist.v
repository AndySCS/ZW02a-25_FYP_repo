// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Feb 28 21:41:41 2026
// Host        : ecelvd711.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mem_wrapper_sim_netlist.v
// Design      : mem_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mem_wrapper,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [127:0]douta;
  wire ena;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     12.7408 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "mem_wrapper.mem" *) 
  (* C_INIT_FILE_NAME = "mem_wrapper.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52080)
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
