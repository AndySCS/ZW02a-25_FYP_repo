#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/usr/eelocal/xilinx/Vitis/2023.1/bin:/usr/eelocal/xilinx/Vivado/2023.1/ids_lite/ISE/bin/lin64:/usr/eelocal/xilinx/Vivado/2023.1/bin
else
  PATH=/usr/eelocal/xilinx/Vitis/2023.1/bin:/usr/eelocal/xilinx/Vivado/2023.1/ids_lite/ISE/bin/lin64:/usr/eelocal/xilinx/Vivado/2023.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/dfs/usrhome/twipaa/Documents/uart/ZW02a-25_FYP_repo/DMA_SAMPLE/DMA_SYSTEM/DMA_SYSTEM.runs/dmaSystem_auto_pc_1_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log dmaSystem_auto_pc_1.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source dmaSystem_auto_pc_1.tcl
