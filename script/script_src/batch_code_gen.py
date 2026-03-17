import configparser
from dataclasses import dataclass
import os
import copy
from io import TextIOWrapper
import math

wram_start_addr = 0b0100_0000_0000_0000
iram_start_addr = 0b0000_0000_0000_0000
oram_start_addr = 0b0010_0000_0000_0000

load_wdata_for_loop_cnt = 0
load_idata_for_loop_cnt = 0
perceptron_for_loop_cnt = 0
fc_layer_for_loop_cnt = 0
oram_st_for_loop_cnt = 0
load_cnn_idata_for_loop_cnt = 0
cnn_mm_for_loop_cnt = 0

load_wdata_for_loop_thd_reg = 1
load_wdata_for_loop_iter_reg = 2
wdata_size_reg = 3

load_idata_for_loop_thd_reg = 4
load_idata_for_loop_iter_reg = 5
idata_size_reg = 6
idata_bias_reg = 7

fc_layer_for_loop_thd_reg = 8
fc_layer_for_loop_iter_reg = 9

dram_idata_addr_reg = 10
dram_wdata_addr_reg = 11

sram_idata_addr_reg = 12
sram_wdata_addr_reg = 13

perceptron_for_loop_iter_reg = 14
perceptron_for_loop_thd_reg = 15
perceptron_input_len_reg = 16
perceptron_input_width_reg = 17
perceptron_input_col_reg = 18
perceptron_input_last_row_reg = 19
perceptron_dram_wdata_addr_reg = 20

fc_layer_wdata_dram_inc_reg = 21
fc_dram_wdata_addr_reg = 22

oram_addr_reg = 23

fc_oram_col_reg = 24
fc_last_row_reg = 25

st_dram_addr_reg = 26

dram_addr_tmp_reg = 27

tmp_data_reg = 30
first_iter_reg = 31

load_cnn_idata_dest_reg = idata_size_reg
load_cnn_idata_dram_reg = idata_bias_reg
load_cnn_idata_for_loop_inner_thd_reg = load_wdata_for_loop_thd_reg
load_cnn_idata_for_loop_inner_iter_reg = load_wdata_for_loop_iter_reg
load_cnn_idata_for_loop_inner_dest_update_thd_reg = wdata_size_reg
load_cnn_idata_for_loop_inner_dram_update_thd_reg = wdata_size_reg

cnn_perceptron_for_loop_iter_reg   = perceptron_for_loop_iter_reg  
cnn_perceptron_for_loop_thd_reg    = perceptron_for_loop_thd_reg   
cnn_perceptron_input_len_reg       = perceptron_input_len_reg      
cnn_perceptron_input_width_reg     = perceptron_input_width_reg    
cnn_perceptron_input_col_reg       = perceptron_input_col_reg      
cnn_perceptron_input_last_row_reg  = perceptron_input_last_row_reg 
cnn_perceptron_dram_wdata_addr_reg = sram_wdata_addr_reg

cnn_mm_for_loop_thd_reg = load_wdata_for_loop_thd_reg
cnn_mm_for_loop_iter_reg = load_wdata_for_loop_iter_reg

@dataclass
class ldt_info:
    num: int
    len: int
    stride: int
    dest_addr_reg: int
    dram_addr_reg: int

    def __post_init__(self):
        assert self.num > 0 and self.num <= 256, "num should be in range (0, 256]"
        assert self.len > 0 and self.len <= 16, "len should be in range (0, 256]"
        assert self.stride > 0 and self.stride <= 32, "stride should be in range (0, 256]"
        assert self.dest_addr_reg >= 0 and self.dest_addr_reg <= 31, "dest_addr_reg should be in range [0, 31]"
        assert self.dram_addr_reg >= 0 and self.dram_addr_reg <= 31, "dram_addr_reg should be in range [0, 31]"

@dataclass
class perceptron_info:
    input_len: int
    input_width: int
    dram_wdata_addr: int
    perceptron_size: int

@dataclass
class fc_layer_info:
    perceptron_cnt: int
    input_size: int
    dram_idata_addr: int
    dram_wdata_addr: int
    relu: bool

@dataclass
class cnn_input_info:
    img_width: int
    img_len: int
    cnn_window_width: int
    cnn_window_len: int
    relu: bool

@dataclass
class cnn_layer_info(fc_layer_info):
    cnn_perceptron_cnt: int
    st_dram_addr: int

def gen_load_data(f: TextIOWrapper, info: ldt_info) -> None:
    transform_dict = {
        1: 0,
        2: 1,
        4: 2,
        8: 3,
        16: 4,
        32: 5
    }
    len_trasform = transform_dict[info.len]
    stride_transform = transform_dict[info.stride]
    f.write(f"LDT x{info.dest_addr_reg}, x{info.dram_addr_reg}, {info.num-1}, {len_trasform}, {stride_transform}\n")

def gen_set_data(f: TextIOWrapper, data: int, reg: int) -> None:
    global tmp_data_reg

    if data > 0x7ff:
        upper_imm = (data + 0x800) >> 12
        lower_imm = data & 0xfff
        f.write(f"lui x{reg}, {upper_imm}\n")
        f.write(f"addi x{reg}, x{reg}, {lower_imm}\n")
    else:
        f.write(f"addi x{reg}, x0, {data}\n")

def gen_load_wdata_for_loop(f: TextIOWrapper, perceptron_cnt: int, ldt_info: ldt_info, wdata_size:int) -> None:
    global load_wdata_for_loop_cnt
    global load_wdata_for_loop_iter_reg
    global load_wdata_for_loop_thd_reg
    global wdata_size_reg
    global wram_start_addr
    global dram_idata_addr_reg
    
    legal_len = [16, 8, 4, 2, 1]
    legal_stride = [32, 16, 8, 4, 2, 1]

    if ldt_info.stride not in legal_stride:
#        perceptron_cnt = ldt_info.num
        ldt_info.num = 1
        ldt_info.stride = 1

    gen_set_data(f = f, data = wram_start_addr, reg = ldt_info.dest_addr_reg)
    gen_set_data(f = f, data = 0, reg = load_wdata_for_loop_iter_reg)
    gen_set_data(f = f, data = perceptron_cnt, reg = load_wdata_for_loop_thd_reg)
    gen_set_data(f = f, data = wdata_size, reg = wdata_size_reg)
    f.write(f"load_wdata_for_loop_{load_wdata_for_loop_cnt}:\n")
    if ldt_info.len not in legal_len:
        f.write(f"add x{dram_addr_tmp_reg}, x0, x{ldt_info.dram_addr_reg}\n")
        for i in legal_len:
            if ldt_info.len - i >= 0:
                new_ldt_info = copy.deepcopy(ldt_info)
                new_ldt_info.len = i
                gen_load_data(f = f, info = new_ldt_info)
                f.write(f"addi x{ldt_info.dest_addr_reg}, x{ldt_info.dest_addr_reg}, {i}\n")
                f.write(f"addi x{ldt_info.dram_addr_reg}, x{ldt_info.dram_addr_reg}, {i}\n")
                ldt_info.len -= i
        f.write(f"add x{ldt_info.dram_addr_reg}, x0, x{dram_addr_tmp_reg}\n")
        f.write(f"andi x{ldt_info.dest_addr_reg}, x{ldt_info.dest_addr_reg}, 4080\n")
    else:
        gen_load_data(f = f, info = ldt_info)
    f.write(f"addi x{ldt_info.dest_addr_reg}, x{ldt_info.dest_addr_reg}, 16\n")
    f.write(f"add x{ldt_info.dram_addr_reg}, x{ldt_info.dram_addr_reg}, x{wdata_size_reg}\n")
    f.write(f"addi x{load_wdata_for_loop_iter_reg}, x{load_wdata_for_loop_iter_reg}, 1\n")
    f.write(f"blt x{load_wdata_for_loop_iter_reg}, x{load_wdata_for_loop_thd_reg}, load_wdata_for_loop_{load_wdata_for_loop_cnt}\n")
    load_wdata_for_loop_cnt += 1
    
def gen_load_idata_for_loop(f: TextIOWrapper, idata_size: int, info: ldt_info) -> None:
    global load_idata_for_loop_cnt
    global idata_bias_reg
    global load_idata_for_loop_iter_reg
    global load_idata_for_loop_thd_reg

    idata_last_size = idata_size % 256
    idata_thd = math.ceil(idata_size / 256)
    gen_set_data(f = f, data = iram_start_addr, reg = info.dest_addr_reg)
    gen_set_data(f = f, data = 0, reg = load_idata_for_loop_iter_reg)
    gen_set_data(f = f, data = idata_thd, reg = load_idata_for_loop_thd_reg)
    f.write(f"load_idata_for_loop_{load_idata_for_loop_cnt}:\n")
    f.write(f"addi x{load_idata_for_loop_iter_reg}, x{load_idata_for_loop_iter_reg}, 1\n")
    if idata_last_size == 0:
        gen_load_data(f = f, info = info)
    else:
        f.write(f"beq x{load_idata_for_loop_iter_reg}, x{load_idata_for_loop_thd_reg}, load_idata_for_loop_{load_idata_for_loop_cnt}_else_br\n")
        f.write(f"load_idata_for_loop_{load_idata_for_loop_cnt}_if_br:\n")
        gen_load_data(f = f, info = info)
        f.write(f"jal x0, {load_idata_for_loop_cnt}_if_end:\n")
        f.write(f"load_idata_for_loop_{load_idata_for_loop_cnt}_else_br:\n")
        gen_load_data(f = f, info = info)
        f.write(f"load_idata_for_loop_{load_idata_for_loop_cnt}_if_end:\n")
    f.write(f"addi x{info.dest_addr_reg}, x{info.dest_addr_reg}, 1\n")
    f.write(f"addi x{info.dram_addr_reg}, x{info.dram_addr_reg}, 256\n")
    f.write(f"blt x{load_idata_for_loop_iter_reg}, x{load_idata_for_loop_thd_reg}, load_idata_for_loop_{load_idata_for_loop_cnt}\n")
    bias_addr = idata_last_size * 16 + idata_thd - 1
    gen_set_data(f = f, data = bias_addr, reg = idata_bias_reg)
    f.write(f"sb x{first_iter_reg}, x{idata_bias_reg}, 0\n")
    load_idata_for_loop_cnt += 1

def gen_load_cnn_idata_inner_for_loop(f: TextIOWrapper, ldt_info: ldt_info, cnn_input_info: cnn_input_info, cnn_cnt: int) -> None:
    global load_cnn_idata_for_loop_cnt
    global idata_bias_reg
    global load_cnn_idata_for_loop_inner_iter_reg
    global load_cnn_idata_for_loop_inner_thd_reg

    idata_thd = cnn_input_info.cnn_window_len

    gen_set_data(f = f, data = 0, reg = load_cnn_idata_for_loop_inner_iter_reg)
    gen_set_data(f = f, data = idata_thd, reg = load_cnn_idata_for_loop_inner_thd_reg)

    f.write(f"load_cnn_idata_for_loop_inner_{cnn_cnt}:\n")
    f.write(f"addi x{load_cnn_idata_for_loop_inner_iter_reg}, x{load_cnn_idata_for_loop_inner_iter_reg}, 1\n")
    gen_load_data(f = f, info = ldt_info)
    f.write(f"addi x{ldt_info.dest_addr_reg}, x{ldt_info.dest_addr_reg}, {cnn_input_info.cnn_window_width * 16}\n")
    f.write(f"addi x{ldt_info.dram_addr_reg}, x{ldt_info.dram_addr_reg}, {cnn_input_info.img_width}\n")
    f.write(f"blt x{load_cnn_idata_for_loop_inner_iter_reg}, x{load_cnn_idata_for_loop_inner_thd_reg}, load_cnn_idata_for_loop_{load_cnn_idata_for_loop_cnt}\n")
    f.write(f"sb x{first_iter_reg}, x{ldt_info.dest_addr_reg}, 0\n")

def gen_load_cnn_idata_for_loop(f: TextIOWrapper, ldt_info: ldt_info, cnn_input_info: cnn_input_info, load_thd: int) -> None:
    global load_cnn_idata_for_loop_cnt
    global idata_bias_reg
    global load_idata_for_loop_iter_reg
    global load_idata_for_loop_thd_reg
    global load_cnn_idata_dest_reg
    global load_cnn_idata_dram_reg
    global load_cnn_idata_for_loop_inner_dest_update_thd_reg
    global load_cnn_idata_for_loop_inner_dram_update_thd_reg

    idata_thd = load_thd
    cnn_window_size = cnn_input_info.cnn_window_len * cnn_input_info.cnn_window_width
    load_cnn_idata_for_loop_inner_dram_update_thd = cnn_input_info.img_width - math.floor(cnn_input_info.img_width / 2)

    gen_set_data(f = f, data = iram_start_addr, reg = load_cnn_idata_dest_reg)
    gen_set_data(f = f, data = 0, reg = load_idata_for_loop_iter_reg)
    gen_set_data(f = f, data = idata_thd, reg = load_idata_for_loop_thd_reg)
    gen_set_data(f = f, data = 16, reg = load_cnn_idata_for_loop_inner_dest_update_thd_reg)
    gen_set_data(f = f, data = load_cnn_idata_for_loop_inner_dram_update_thd, reg = load_cnn_idata_for_loop_inner_dram_update_thd_reg)

    f.write(f"load_cnn_idata_for_loop_{load_cnn_idata_for_loop_cnt}:\n")

    f.write(f"addi x{load_idata_for_loop_iter_reg}, x{load_idata_for_loop_iter_reg}, 1\n")
    f.write(f"addi x{ldt_info.dest_addr_reg},  x{load_cnn_idata_dest_reg}, 0\n")
    f.write(f"addi x{ldt_info.dram_addr_reg},  x{load_cnn_idata_dram_reg}, 0\n")

    gen_load_cnn_idata_inner_for_loop(f = f, ldt_info = ldt_info, cnn_input_info = cnn_input_info, cnn_cnt = load_cnn_idata_for_loop_cnt)

    f.write(f"beq x{load_idata_for_loop_iter_reg}, x{load_cnn_idata_for_loop_inner_dest_update_thd_reg}, load_cnn_idata_for_loop_{load_cnn_idata_for_loop_cnt}_dest_update_else_br\n")
    f.write(f"addi x{load_cnn_idata_dest_reg}, x{load_cnn_idata_dest_reg}, 1\n")
    f.write(f"jal x0, load_cnn_idata_for_loop_{load_cnn_idata_for_loop_cnt}_dest_update_if_end:\n")

    f.write(f"load_cnn_idata_for_loop_{load_cnn_idata_for_loop_cnt}_dest_update_else_br:\n")
    f.write(f"addi x{load_cnn_idata_dest_reg}, x{load_cnn_idata_dest_reg}, {1 + 16*(cnn_window_size + 1)}\n")
    f.write(f"addi x{load_cnn_idata_for_loop_inner_dest_update_thd_reg}, x{load_cnn_idata_for_loop_inner_dest_update_thd_reg}, 16\n")
    f.write(f"load_cnn_idata_for_loop_{load_cnn_idata_for_loop_cnt}_if_dest_update_end:\n")
    
    f.write(f"beq x{load_idata_for_loop_iter_reg}, x{load_cnn_idata_for_loop_inner_dram_update_thd_reg}, load_cnn_idata_for_loop_{load_cnn_idata_for_loop_cnt}_dram_update_else_br\n")
    f.write(f"addi x{load_cnn_idata_dram_reg}, x{load_cnn_idata_dram_reg}, 1\n")
    f.write(f"jal x0, load_cnn_idata_for_loop_{load_cnn_idata_for_loop_cnt}_dram_update_if_end:\n")

    f.write(f"load_cnn_idata_for_loop_{load_cnn_idata_for_loop_cnt}_dram_update_else_br:\n")
    f.write(f"addi x{load_cnn_idata_dram_reg}, x{load_cnn_idata_dram_reg}, {cnn_input_info.cnn_window_width}\n")
    f.write(f"addi x{load_cnn_idata_for_loop_inner_dram_update_thd_reg}, x{load_cnn_idata_for_loop_inner_dram_update_thd_reg}, {load_cnn_idata_for_loop_inner_dram_update_thd}\n")
    f.write(f"load_cnn_idata_for_loop_{load_cnn_idata_for_loop_cnt}_dram_update_if_end:\n")

    f.write(f"blt x{load_idata_for_loop_iter_reg}, x{load_idata_for_loop_thd_reg}, load_cnn_idata_for_loop_{load_cnn_idata_for_loop_cnt}\n")

    load_cnn_idata_for_loop_cnt += 1

def gen_perceptron_for_loop(f: TextIOWrapper, info: perceptron_info) -> None:
    global perceptron_for_loop_cnt
    global dram_idata_addr_reg
    global dram_wdata_addr_reg
    global sram_idata_addr_reg
    global sram_wdata_addr_reg
    global perceptron_for_loop_iter_reg
    global perceptron_for_loop_thd_reg
    global perceptron_input_len_reg
    global perceptron_input_width_reg
    global perceptron_input_col_reg
    global perceptron_input_last_row_reg
    global perceptron_dram_wdata_addr_reg

    wdata_len = info.input_len + 1
    perceptron_iter_thd = math.ceil(wdata_len/ 16)
    last_iter_input_size = 16 if wdata_len % 16 == 0 else wdata_len % 16
    perceptron_wdata_for_loop_cnt = 1 if perceptron_iter_thd == 1 else info.perceptron_size
    input_last_row = 256*15
    non_last_ldt_info = ldt_info(
        num = 1, 
        len = 16, 
        stride = 16, 
        dest_addr_reg = sram_wdata_addr_reg, 
        dram_addr_reg = dram_wdata_addr_reg
    )
    last_ldt_info = ldt_info(
        num = info.perceptron_size if perceptron_iter_thd == 1 else 1,
        len = last_iter_input_size, 
        stride = last_iter_input_size, 
        dest_addr_reg = sram_wdata_addr_reg, 
        dram_addr_reg = dram_wdata_addr_reg
    )
    wdata_len = info.input_len + 1
    print(f"perceptron iter thd: {perceptron_iter_thd}, last iter input size: {last_iter_input_size}")

    gen_set_data(f = f, data = 0, reg = perceptron_for_loop_iter_reg)
    gen_set_data(f = f, data = perceptron_iter_thd, reg = perceptron_for_loop_thd_reg)

    gen_set_data(f = f, data = info.input_width, reg = perceptron_input_width_reg)
    gen_set_data(f = f, data = 0, reg = perceptron_input_col_reg)
    gen_set_data(f = f, data = input_last_row, reg = perceptron_input_last_row_reg)

    #gen_set_data(f = f, data = info.dram_wdata_addr, reg = perceptron_dram_wdata_addr_reg) 
    f.write(f"add x{dram_wdata_addr_reg}, x{perceptron_dram_wdata_addr_reg}, x0\n")

    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}:\n")

    f.write(f"addi x{perceptron_for_loop_iter_reg}, x{perceptron_for_loop_iter_reg}, 1\n")
    f.write(f"beq x{perceptron_for_loop_iter_reg}, x{perceptron_for_loop_thd_reg}, perceptron_for_loop_{perceptron_for_loop_cnt}_last_iter_br\n")
    f.write(f"beq x{perceptron_for_loop_iter_reg}, x{first_iter_reg}, perceptron_for_loop_{perceptron_for_loop_cnt}_first_iter_br\n")

    gen_load_wdata_for_loop(f = f, perceptron_cnt = info.perceptron_size, ldt_info = non_last_ldt_info, wdata_size = wdata_len)
    gen_set_data(f = f, data = wram_start_addr, reg = sram_wdata_addr_reg)
    f.write(f"MM x{sram_idata_addr_reg}, x{sram_wdata_addr_reg}, 15, {info.input_width - 1}, {info.perceptron_size - 1}, 0\n")
    f.write(f"jal x0, perceptron_for_loop_{perceptron_for_loop_cnt}_end\n")

    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}_last_iter_br:\n")
    gen_load_wdata_for_loop(f = f, perceptron_cnt = perceptron_wdata_for_loop_cnt, ldt_info = last_ldt_info, wdata_size = wdata_len)
    gen_set_data(f = f, data = wram_start_addr, reg = sram_wdata_addr_reg)
    if perceptron_iter_thd == 1:
        f.write(f"MM x{sram_idata_addr_reg}, x{sram_wdata_addr_reg}, {info.input_len - 1}, {info.input_width - 1}, {info.perceptron_size - 1}, 1\n")
    else:
        f.write(f"MM x{sram_idata_addr_reg}, x{sram_wdata_addr_reg}, {last_iter_input_size - 1}, {info.input_width - 1}, {info.perceptron_size - 1}, 0\n")    
    f.write(f"jal x0, perceptron_for_loop_{perceptron_for_loop_cnt}_end\n")

    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}_first_iter_br:\n")
    gen_load_wdata_for_loop(f = f, perceptron_cnt = info.perceptron_size, ldt_info = non_last_ldt_info, wdata_size = wdata_len)
    gen_set_data(f = f, data = wram_start_addr, reg = sram_wdata_addr_reg)
    f.write(f"MM x{sram_idata_addr_reg}, x{sram_wdata_addr_reg}, 15, {info.input_width - 1}, {info.perceptron_size - 1}, 1\n")
    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}_end:\n")

    f.write(f"bge x{sram_idata_addr_reg}, x{perceptron_input_last_row_reg}, perceptron_for_loop_{perceptron_for_loop_cnt}_iram_sp_update\n")

    f.write(f"addi x{sram_idata_addr_reg}, x{sram_idata_addr_reg}, 256\n") 
    f.write(f"jal x0, perceptron_for_loop_{perceptron_for_loop_cnt}_iram_update_end\n")

    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}_iram_sp_update:\n") 
    f.write(f"add x{perceptron_input_col_reg}, x{perceptron_input_col_reg}, x{perceptron_input_width_reg}\n") 
    f.write(f"add x{sram_idata_addr_reg}, x0, x{perceptron_input_col_reg}\n") 

    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}_iram_update_end:\n")

    f.write(f"addi x{dram_wdata_addr_reg}, x{perceptron_dram_wdata_addr_reg}, 16\n")
    f.write(f"addi x{perceptron_dram_wdata_addr_reg}, x{perceptron_dram_wdata_addr_reg}, 16\n")

    f.write(f"blt x{perceptron_for_loop_iter_reg}, x{perceptron_for_loop_thd_reg}, perceptron_for_loop_{perceptron_for_loop_cnt}\n")

    perceptron_for_loop_cnt += 1

def gen_fc_layer_for_loop(f: TextIOWrapper, fc_layer_info: fc_layer_info) -> None:
    global fc_layer_for_loop_iter_reg
    global fc_layer_for_loop_thd_reg
    global dram_wdata_addr_reg
    global fc_layer_wdata_dram_inc_reg
    global fc_layer_for_loop_cnt
    global oram_addr_reg
    global fc_dram_wdata_addr_reg
    global fc_oram_col_reg
    global fc_last_row_reg
    global sram_idata_addr_reg
    global iram_start_addr
    global oram_start_addr

    fc_layer_for_loop_thd = math.ceil(fc_layer_info.perceptron_cnt / 16)
    dram_wdata_last_addr = fc_layer_info.dram_wdata_addr + 16 * (fc_layer_info.input_size + 1) * (fc_layer_for_loop_thd - 1)
    dram_wdata_last_addr_qual = fc_layer_info.dram_wdata_addr if fc_layer_for_loop_thd == 1 else dram_wdata_last_addr
    fc_layer_wdata_dram_inc = 16 * (fc_layer_info.input_size + 1)
    fc_last_row = 512*15 | oram_start_addr
    perceptron_last_info = perceptron_info(
        input_len = fc_layer_info.input_size,
        input_width = 1,
        dram_wdata_addr = dram_wdata_last_addr_qual,
        perceptron_size = 16 if fc_layer_info.perceptron_cnt % 16 == 0 else fc_layer_info.perceptron_cnt % 16
    )
    perceptron_non_last_info = perceptron_info(
        input_len = fc_layer_info.input_size,
        input_width = 1,
        dram_wdata_addr= fc_layer_info.dram_wdata_addr,
        perceptron_size = 16 if fc_layer_for_loop_thd > 1 else fc_layer_info.perceptron_cnt 
    )
    
    gen_set_data(f = f, data = oram_start_addr, reg = oram_addr_reg)

    if fc_layer_for_loop_thd == 1:
        gen_set_data(f = f, data = perceptron_last_info.dram_wdata_addr, reg = perceptron_dram_wdata_addr_reg) 
        gen_set_data(f = f, data = iram_start_addr, reg = sram_idata_addr_reg)
        gen_set_data(f = f, data = dram_wdata_last_addr_qual, reg = dram_wdata_addr_reg)
        gen_perceptron_for_loop(f = f, info = perceptron_last_info)
        if fc_layer_info.relu:
            f.write(f"act 0\n")
        f.write(f"STMT x{oram_addr_reg}, x0, 0, {fc_layer_info.perceptron_cnt - 1}, 0\n")
        fc_layer_for_loop_cnt += 1
        return
    
    gen_set_data(f = f, data = 0, reg = fc_layer_for_loop_iter_reg)
    gen_set_data(f = f, data = fc_layer_for_loop_thd, reg = fc_layer_for_loop_thd_reg)
    gen_set_data(f = f, data = dram_wdata_addr, reg = fc_dram_wdata_addr_reg)
    gen_set_data(f = f, data = fc_layer_wdata_dram_inc, reg = fc_layer_wdata_dram_inc_reg)

    gen_set_data(f = f, data = 0, reg = fc_oram_col_reg)
    gen_set_data(f = f, data = fc_last_row, reg = fc_last_row_reg)

    f.write(f"fc_layer_for_loop_{fc_layer_for_loop_cnt}:\n")
    f.write(f"add x{perceptron_dram_wdata_addr_reg}, x{fc_dram_wdata_addr_reg}, x0\n")
    gen_set_data(f = f, data = iram_start_addr, reg = sram_idata_addr_reg)
    f.write(f"addi x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_iter_reg}, 1\n")
    f.write(f"beq x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_thd_reg}, fc_layer_for_loop_{fc_layer_for_loop_cnt}_last_iter_br\n")
    
    gen_perceptron_for_loop(f = f, info = perceptron_non_last_info)
    if fc_layer_info.relu:
        f.write(f"act 0\n")
#    f.write(f"add x{perceptron_dram_wdata_addr_reg}, x{fc_dram_wdata_addr_reg}, x{fc_layer_wdata_dram_inc_reg}\n")
    f.write(f"add x{fc_dram_wdata_addr_reg}, x{fc_dram_wdata_addr_reg}, x{fc_layer_wdata_dram_inc_reg}\n")
    f.write(f"STMT x{oram_addr_reg}, x0, 0, 15, 0\n")
    f.write(f"bge x{oram_addr_reg}, x{fc_last_row_reg}, fc_layer_for_loop_{fc_layer_for_loop_cnt}_oram_update_sp\n")
    f.write(f"addi x{oram_addr_reg}, x{oram_addr_reg}, 512\n")
    f.write(f"jal x0, fc_layer_for_loop_{fc_layer_for_loop_cnt}_end\n")
    f.write(f"fc_layer_for_loop_{fc_layer_for_loop_cnt}_oram_update_sp:\n")
    f.write(f"addi x{oram_addr_reg}, x{fc_oram_col_reg}, 1\n")
    f.write(f"addi x{fc_oram_col_reg}, x{fc_oram_col_reg}, 1\n")
    f.write(f"jal x0, fc_layer_for_loop_{fc_layer_for_loop_cnt}_end\n")

    f.write(f"fc_layer_for_loop_{fc_layer_for_loop_cnt}_last_iter_br:\n")
    gen_perceptron_for_loop(f = f, info = perceptron_last_info)
    if fc_layer_info.relu:
        f.write(f"act 0\n")
    f.write(f"STMT x{oram_addr_reg}, x0, 0, {perceptron_last_info.perceptron_size - 1}, 0\n")
    f.write(f"fc_layer_for_loop_{fc_layer_for_loop_cnt}_end:\n")

    f.write(f"blt x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_thd_reg}, fc_layer_for_loop_{fc_layer_for_loop_cnt}\n")

    fc_layer_for_loop_cnt += 1

def gen_oram_st_for_loop(f: TextIOWrapper, st_cnt: int, st_dram_addr: int) -> None:
    global oram_addr_reg
    global fc_oram_col_reg
    global fc_last_row_reg
    global fc_layer_for_loop_iter_reg
    global fc_layer_for_loop_thd_reg
    global oram_st_for_loop_cnt
    global st_dram_addr_reg

    gen_set_data(f = f, data = oram_start_addr, reg = oram_addr_reg)
    gen_set_data(f = f, data = 0, reg = fc_layer_for_loop_iter_reg)
    gen_set_data(f = f, data = st_cnt, reg = fc_layer_for_loop_thd_reg)
    gen_set_data(f = f, data = st_dram_addr, reg = st_dram_addr_reg)

    f.write(f"oram_st_for_loop_{oram_st_for_loop_cnt}:\n")
    f.write(f"addi x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_iter_reg}, 1\n")
    f.write(f"STT x{oram_addr_reg}, x{st_dram_addr_reg},  0, 1, 0, 1\n")
    f.write(f"addi x{st_dram_addr_reg}, x{st_dram_addr_reg}, 2\n")
    f.write(f"addi x{oram_addr_reg}, x{oram_addr_reg}, 32\n")
    f.write(f"blt x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_thd_reg}, oram_st_for_loop_{oram_st_for_loop_cnt}\n")
    f.write("WFI\n")
    oram_st_for_loop_cnt += 1

def gen_oram_cnn_st_for_loop(f: TextIOWrapper, st_cnt: int, st_dram_addr: int) -> None:
    global oram_addr_reg
    global fc_oram_col_reg
    global fc_last_row_reg
    global fc_layer_for_loop_iter_reg
    global fc_layer_for_loop_thd_reg
    global oram_st_for_loop_cnt
    global st_dram_addr_reg
    
    legal_len = {16:4, 8:3, 4:2, 2:1, 1:0}

    st_num = math.floor(st_cnt / 16)
    last_iter_st_cnt = 16 if st_cnt % 16 == 0 else st_cnt % 16

    gen_set_data(f = f, data = oram_start_addr, reg = oram_addr_reg)
    gen_set_data(f = f, data = 0, reg = fc_layer_for_loop_iter_reg)
    gen_set_data(f = f, data = st_cnt, reg = fc_layer_for_loop_thd_reg)
    gen_set_data(f = f, data = st_dram_addr, reg = st_dram_addr_reg)
    
    f.write(f"STT x{oram_addr_reg}, x{st_dram_addr_reg},  {st_num}, 5, 5, 1\n")
    f.write(f"addi x{st_dram_addr_reg}, x{st_dram_addr_reg}, {st_num * 16 * 2}\n")
    if last_iter_st_cnt == 16:
        return
    
    f.write(f"addi x{oram_addr_reg}, x{oram_addr_reg}, x{st_dram_addr_reg}\n")
    if last_iter_st_cnt not in legal_len:
        for i in legal_len:
            if last_iter_st_cnt - i >= 0:
                f.write(f"STT x{oram_addr_reg}, x{st_dram_addr_reg},  0, {legal_len[i]}, 0, 1\n")
                f.write(f"addi x{st_dram_addr_reg}, x{st_dram_addr_reg}, {i * 2}\n")
                f.write(f"addi x{oram_addr_reg}, x{oram_addr_reg}, {i}\n")
                last_iter_st_cnt -= i
    else:
        f.write(f"STT x{oram_addr_reg}, x{st_dram_addr_reg},  {last_iter_st_cnt}, 0, {legal_len[last_iter_st_cnt]}, 1\n")
        f.write(f"addi x{st_dram_addr_reg}, x{st_dram_addr_reg}, {last_iter_st_cnt * 2}\n")

    oram_st_for_loop_cnt += 1

def gen_cnn_mm_for_loop(f: TextIOWrapper, cnn_perceptron_cnt: int, input_cnt: int, cnn_input_info: cnn_input_info) -> None:
    global cnn_mm_for_loop_cnt
    global cnn_mm_for_loop_iter_reg
    global cnn_mm_for_loop_thd_reg
    global sram_idata_addr_reg
    global sram_wdata_addr_reg
    global iram_start_addr
    global wram_start_addr
    global oram_addr_reg
    global oram_start_addr

    cnn_mm_for_loop_thd = math.ceil(input_cnt / 16)
    cnn_last_iter_input_cnt = 16 if input_cnt % 16 == 0 else input_cnt % 16
    cnn_wgt_size = cnn_input_info.cnn_window_len * cnn_input_info.cnn_window_width + 1

    gen_set_data(f = f, data = 0, reg = cnn_mm_for_loop_iter_reg)
    gen_set_data(f = f, data = cnn_mm_for_loop_thd, reg = cnn_mm_for_loop_thd_reg)

    gen_set_data(f = f, data = iram_start_addr, reg = sram_idata_addr_reg)
    gen_set_data(f = f, data = wram_start_addr, reg = sram_wdata_addr_reg)
    gen_set_data(f = f, data = oram_start_addr, reg = oram_addr_reg)

    f.write(f"cnn_mm_for_loop_{cnn_mm_for_loop_cnt}:\n")
    f.write(f"addi x{cnn_mm_for_loop_iter_reg}, x{cnn_mm_for_loop_iter_reg}, 1\n")

    f.write(f"beq x{cnn_mm_for_loop_iter_reg}, x{cnn_mm_for_loop_thd_reg}, cnn_mm_for_loop_{cnn_mm_for_loop_cnt}_last_iter_br\n")
    f.write(f"MM x{sram_idata_addr_reg}, x{sram_wdata_addr_reg}, {cnn_wgt_size - 1}, 15, {cnn_perceptron_cnt - 1}, 1\n")
    if cnn_input_info.relu:
        f.write(f"act 0\n")
    f.write(f"STMT x{oram_addr_reg}, x0, 15, {cnn_wgt_size - 1}, 0\n")
    f.write(f"addi x{sram_idata_addr_reg}, x{sram_idata_addr_reg}, {cnn_wgt_size * 16}\n")
    f.write(f"addi x{oram_addr_reg}, x{oram_addr_reg}, 16\n")
    f.write(f"jal x0, cnn_mm_for_loop_{cnn_mm_for_loop_cnt}_end\n")

    f.write(f"cnn_mm_for_loop_{cnn_mm_for_loop_cnt}_last_iter_br:\n")
    f.write(f"MM x{sram_idata_addr_reg}, x{sram_wdata_addr_reg}, {cnn_last_iter_input_cnt - 1}, {cnn_wgt_size - 1}, {cnn_perceptron_cnt - 1}, 1\n")
    f.write(f"STMT x{oram_addr_reg}, x0, {cnn_last_iter_input_cnt - 1}, {cnn_wgt_size - 1}, 0\n")
    f.write(f"cnn_mm_for_loop_{cnn_mm_for_loop_cnt}_end:\n")

    f.write(f"blt x{cnn_mm_for_loop_iter_reg}, x{cnn_mm_for_loop_thd_reg}, cnn_mm_for_loop_{cnn_mm_for_loop_cnt}\n")

    cnn_mm_for_loop_cnt += 1

def gen_cnn_window_for_loop(f: TextIOWrapper, cnn_input_info: cnn_input_info, cnn_perceptron_cnt: int, st_dram_addr: int) -> None:    
    global cnn_perceptron_for_loop_iter_reg   
    global cnn_perceptron_for_loop_thd_reg    
    global cnn_perceptron_input_len_reg       
    global cnn_perceptron_input_width_reg     
    global cnn_perceptron_input_col_reg       
    global cnn_perceptron_input_last_row_reg  
    global cnn_perceptron_dram_wdata_addr_reg 

    cnn_wgt_size = cnn_input_info.cnn_window_len * cnn_input_info.cnn_window_width + 1
    input_col_cnn_wgt_cnt = math.floor(256 / cnn_wgt_size)
    input_total_cnn_wgt_cnt = 16 * input_col_cnn_wgt_cnt
    total_cnn_wgt_cnt = (cnn_input_info.img_width - 2) * (cnn_input_info.img_len - 2)
    cnn_perceptron_thd = math.ceil(total_cnn_wgt_cnt / input_total_cnn_wgt_cnt)
    last_iter_cnn_wgt_cnt_tmp = total_cnn_wgt_cnt % input_total_cnn_wgt_cnt
    last_iter_cnn_wgt_cnt = input_total_cnn_wgt_cnt if last_iter_cnn_wgt_cnt_tmp == 0 else last_iter_cnn_wgt_cnt_tmp

    perceptron_ldt_input_info = ldt_info(
        num = cnn_input_info.cnn_window_width, 
        len = 1, 
        stride = 1, 
        dest_addr_reg = sram_wdata_addr_reg, 
        dram_addr_reg = dram_wdata_addr_reg
    )
    perceptron_ldt_wgt_info = ldt_info(
        num = 1, 
        len = cnn_wgt_size, 
        stride = 1, 
        dest_addr_reg = sram_wdata_addr_reg, 
        dram_addr_reg = dram_wdata_addr_reg
    )

    gen_set_data(f = f, data = 0, reg = perceptron_for_loop_iter_reg)
    gen_set_data(f = f, data = cnn_perceptron_thd, reg = perceptron_for_loop_thd_reg)

    #gen_set_data(f = f, data = info.dram_wdata_addr, reg = perceptron_dram_wdata_addr_reg) 
    f.write(f"add x{dram_wdata_addr_reg}, x{perceptron_dram_wdata_addr_reg}, x0\n")
    gen_load_wdata_for_loop(f = f, perceptron_cnt = cnn_perceptron_cnt, ldt_info = perceptron_ldt_wgt_info, wdata_size = cnn_wgt_size)

    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}:\n")

    f.write(f"addi x{perceptron_for_loop_iter_reg}, x{perceptron_for_loop_iter_reg}, 1\n")
    f.write(f"beq x{perceptron_for_loop_iter_reg}, x{perceptron_for_loop_thd_reg}, perceptron_for_loop_{perceptron_for_loop_cnt}_last_iter_br\n")

    gen_load_cnn_idata_for_loop(f = f, ldt_info = perceptron_ldt_input_info, cnn_input_info = cnn_input_info, load_thd = cnn_perceptron_thd)
    gen_cnn_mm_for_loop(f = f, cnn_perceptron_cnt = cnn_perceptron_cnt, input_cnt = input_total_cnn_wgt_cnt, cnn_input_info = cnn_input_info)
    gen_oram_cnn_st_for_loop(f = f, st_cnt = input_total_cnn_wgt_cnt, st_dram_addr = st_dram_addr)
    f.write(f"jal x0, perceptron_for_loop_{perceptron_for_loop_cnt}_end\n")

    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}_last_iter_br:\n")
    gen_load_cnn_idata_for_loop(f = f, ldt_info = perceptron_ldt_input_info, cnn_input_info = cnn_input_info, load_thd = cnn_perceptron_thd)
    gen_cnn_mm_for_loop(f = f, cnn_perceptron_cnt = cnn_perceptron_cnt, input_cnt = last_iter_cnn_wgt_cnt, cnn_input_info = cnn_input_info)
    gen_oram_cnn_st_for_loop(f = f, st_cnt = last_iter_cnn_wgt_cnt, st_dram_addr = st_dram_addr)
    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}_end:\n")

    f.write(f"blt x{perceptron_for_loop_iter_reg}, x{perceptron_for_loop_thd_reg}, perceptron_for_loop_{perceptron_for_loop_cnt}\n")

    perceptron_for_loop_cnt += 1

def gen_cnn_layer_for_loop(f: TextIOWrapper, cnn_input_info: cnn_input_info, cnn_layer_info: cnn_layer_info) -> None:
    global fc_layer_for_loop_cnt
    global dram_wdata_addr_reg
    global fc_layer_for_loop_iter_reg
    global fc_layer_for_loop_thd_reg
    global oram_addr_reg
    global fc_dram_wdata_addr_reg
    global fc_oram_col_reg
    global fc_last_row_reg
    global sram_idata_addr_reg
    global iram_start_addr
    global wram_start_addr

    fc_layer_for_loop_thd = math.ceil(cnn_layer_info.perceptron_cnt / 16)
    last_iter_cnn_perceptron_cnt = 16 if cnn_layer_info.perceptron_cnt % 16 == 0 else cnn_layer_info.perceptron_cnt % 16

    gen_set_data(f = f, data = oram_start_addr, reg = oram_addr_reg)
    gen_set_data(f = f, data = 0, reg = fc_layer_for_loop_iter_reg)
    gen_set_data(f = f, data = fc_layer_for_loop_thd, reg = fc_layer_for_loop_thd_reg)
    gen_set_data(f = f, data = cnn_layer_info.dram_wdata_addr, reg = fc_dram_wdata_addr_reg)

    f.write(f"fc_layer_for_loop_{fc_layer_for_loop_cnt}:\n")
    f.write(f"addi x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_iter_reg}, 1\n")
    f.write(f"beq x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_thd_reg}, fc_layer_for_loop_{fc_layer_for_loop_cnt}_last_iter_br\n")
    gen_cnn_window_for_loop(f = f, cnn_input_info = cnn_input_info, cnn_perceptron_cnt = 16, st_dram_addr = cnn_layer_info.st_dram_addr)
    f.write(f"jal x0, fc_layer_for_loop_{fc_layer_for_loop_cnt}_end\n")
    gen_cnn_window_for_loop(f = f, cnn_input_info = cnn_input_info, cnn_perceptron_cnt = last_iter_cnn_perceptron_cnt, st_dram_addr = cnn_layer_info.st_dram_addr)
    f.write(f"fc_layer_for_loop_{fc_layer_for_loop_cnt}_end:\n")
    f.write(f"blt x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_thd_reg}, fc_layer_for_loop_{fc_layer_for_loop_cnt}\n")
    
    fc_layer_for_loop_cnt += 1

def gen_fc_layer(f: TextIOWrapper, config: configparser.ConfigParser, i: int) -> None:
    
    input_size = int(config["INPUT_SIZE"][f"layer{i}_input_size"])
    input_num  = 256 if input_size > 256 else input_size
    dram_idata_addr = int(config["INPUT_DRAM_ADDR"][f"layer{i}_input_addr"])
    input_info = ldt_info(
        num = input_num,
        len = 1,
        stride = 1,
        dest_addr_reg = sram_idata_addr_reg,
        dram_addr_reg = dram_idata_addr_reg
    )
    gen_set_data(f = f, data = dram_idata_addr, reg = dram_idata_addr_reg)
    gen_load_idata_for_loop(f = f, idata_size = input_size, info = input_info)
        
    output_num = int(config["OUTPUT_SIZE"][f"layer{i}_output_size"])
    dram_wdata_addr = int(config["WEIGHT_DRAM_ADDR"][f"layer{i}_wgt_addr"])
    relu = config.getboolean("ACT_SETUP", f"layer{i}_relu")
    fc_info = fc_layer_info(
        perceptron_cnt = output_num,
        input_size = input_size,
        dram_idata_addr = dram_idata_addr,
        dram_wdata_addr = dram_wdata_addr,
        relu = relu
    )
    gen_fc_layer_for_loop(f = f, fc_layer_info = fc_info)

    st_dram_addr = int(config["OUTPUT_DRAM_ADDR"][f"layer{i}_output_addr"])
    gen_oram_st_for_loop(f = f, st_cnt = output_num, st_dram_addr = st_dram_addr)

def gen_cnn_layer(f: TextIOWrapper, config: configparser.ConfigParser, i: int) -> None:
    
    input_size = int(config["INPUT_SIZE"][f"layer{i}_input_size"])
    input_num  = 256 if input_size > 256 else input_size
    dram_idata_addr = int(config["INPUT_DRAM_ADDR"][f"layer{i}_input_addr"])
    output_num = int(config["OUTPUT_SIZE"][f"layer{i}_output_size"])
    dram_wdata_addr = int(config["WEIGHT_DRAM_ADDR"][f"layer{i}_wgt_addr"])
    relu = config.getboolean("ACT_SETUP", f"layer{i}_relu")
    st_dram_addr = int(config["OUTPUT_DRAM_ADDR"][f"layer{i}_output_addr"])

    cnn_input = cnn_input_info(
        img_width = int(config["CNN_INPUT_INFO"][f"layer{i}_img_width"]),
        img_len = int(config["CNN_INPUT_INFO"][f"layer{i}_img_len"]),
        cnn_window_width = int(config["CNN_INPUT_INFO"][f"layer{i}_cnn_window_width"]),
        cnn_window_len = int(config["CNN_INPUT_INFO"][f"layer{i}_cnn_window_len"])
    )
    cnn_layer = cnn_layer_info(
        perceptron_cnt = int(config["OUTPUT_SIZE"][f"layer{i}_output_size"]),
        dram_wdata_addr = int(config["WEIGHT_DRAM_ADDR"][f"layer{i}_wgt_addr"]),
        st_dram_addr = int(config["OUTPUT_DRAM_ADDR"][f"layer{i}_output_addr"]),
        perceptron_cnt = output_num,
        input_size = input_size,
        dram_idata_addr = dram_idata_addr,
        dram_wdata_addr = dram_wdata_addr,
        relu = relu
    )
    gen_cnn_layer_for_loop(f = f, cnn_input_info = cnn_input, cnn_layer_info = cnn_layer)

gen_layer = {
    "fc": gen_fc_layer,
    "cnn": gen_cnn_layer
}

if __name__ == "__main__":
    config = configparser.ConfigParser()
    config.read(os.path.join(os.path.dirname(__file__), "batch_code_gen/config.ini"))
    output_dir = config["FILE_PATH"]["output_dir"]
    f = open(output_dir, "w")
    
    gen_set_data(f = f, data = 1, reg = first_iter_reg)

    for i in range(int(config["MODEL_CONFIG"]["num_layers"])):

        input_type = config["INPUT_TYPE"][f"layer{i}_input_type"]
        gen_layer[input_type](f = f, config = config, i = i)

    f.close()
        
