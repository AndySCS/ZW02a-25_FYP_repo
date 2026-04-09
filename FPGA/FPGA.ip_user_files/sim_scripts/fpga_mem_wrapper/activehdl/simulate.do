transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fpga_mem_wrapper  -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_12 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fpga_mem_wrapper xil_defaultlib.glbl

do {fpga_mem_wrapper.udo}

run 1000ns

endsim

quit -force
