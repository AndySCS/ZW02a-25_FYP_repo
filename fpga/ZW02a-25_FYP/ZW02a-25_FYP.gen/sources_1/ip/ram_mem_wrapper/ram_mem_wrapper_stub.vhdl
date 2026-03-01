-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Sun Mar  1 21:54:53 2026
-- Host        : ecelvd711.ece.local running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /dfs/usrhome/twipaa/Documents/fpga/ZW02a-25_FYP_repo/fpga/ZW02a-25_FYP/ZW02a-25_FYP.gen/sources_1/ip/ram_mem_wrapper/ram_mem_wrapper_stub.vhdl
-- Design      : ram_mem_wrapper
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ram_mem_wrapper is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 127 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end ram_mem_wrapper;

architecture stub of ram_mem_wrapper is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[15:0],addra[7:0],dina[127:0],douta[127:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_6,Vivado 2023.1";
begin
end;
