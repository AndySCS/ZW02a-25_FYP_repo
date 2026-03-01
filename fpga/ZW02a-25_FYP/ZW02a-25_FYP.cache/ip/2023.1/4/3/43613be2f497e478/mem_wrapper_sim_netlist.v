// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Feb 28 21:49:12 2026
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
  (* C_USE_DEFAULT_DATA = "1" *) 
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
