# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /dfs/usrhome/twipaa/Documents/uart/ZW02a-25_FYP_repo/UART/Zedboard/platform.tcl
# 
# OR launch xsct and run below command.
# source /dfs/usrhome/twipaa/Documents/uart/ZW02a-25_FYP_repo/UART/Zedboard/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Zedboard}\
-hw {/usr/eelocal/xilinx/Vitis/2023.1/data/embeddedsw/lib/fixed_hwplatforms/zed.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/dfs/usrhome/twipaa/Documents/uart/ZW02a-25_FYP_repo/UART}

platform write
platform generate -domains 
platform active {Zedboard}
platform generate
