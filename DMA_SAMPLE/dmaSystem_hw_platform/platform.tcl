# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /dfs/usrhome/twipaa/Documents/uart/ZW02a-25_FYP_repo/DMA_SAMPLE/dmaSystem_hw_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /dfs/usrhome/twipaa/Documents/uart/ZW02a-25_FYP_repo/DMA_SAMPLE/dmaSystem_hw_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {dmaSystem_hw_platform}\
-hw {/staff/ee/twipaa/Documents/uart/ZW02a-25_FYP_repo/DMA_SAMPLE/DMA_SYSTEM/dmaSystem_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/dfs/usrhome/twipaa/Documents/uart/ZW02a-25_FYP_repo/DMA_SAMPLE}

platform write
platform generate -domains 
platform active {dmaSystem_hw_platform}
bsp reload
domain active {zynq_fsbl}
bsp reload
