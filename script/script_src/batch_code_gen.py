import configparser
from dataclasses import dataclass
import os
import copy
from io import TextIOWrapper
import math

wram_start_addr = 0x2000
iram_start_addr = 0x0000

load_wdata_for_loop_cnt = 0
load_idata_for_loop_cnt = 0
perceptron_for_loop_cnt = 0
fc_layer_for_loop_cnt = 0
oram_st_for_loop_cnt = 0

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

dram_adr_tmp_reg = 27

first_iter_reg = 31

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
    if data > 0x7ff:
        upper_imm = (data >> 11) & 0xfffff
        lower_imm = data & 0x7ff
        f.write(f"addi x{reg}, x0, {lower_imm}\n")
        f.write(f"lui x{reg}, 0\n")
        f.write(f"lui x{reg}, {upper_imm}\n")
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
        perceptron_cnt = ldt_info.num
        ldt_info.num = 1
        ldt_info.stride = 1

    gen_set_data(f = f, data = wram_start_addr, reg = ldt_info.dest_addr_reg)
    gen_set_data(f = f, data = 0, reg = load_wdata_for_loop_iter_reg)
    gen_set_data(f = f, data = perceptron_cnt, reg = load_wdata_for_loop_thd_reg)
    gen_set_data(f = f, data = wdata_size, reg = wdata_size_reg)
    f.write(f"load_wdata_for_loop_{load_wdata_for_loop_cnt}:\n")
    if ldt_info.len not in legal_len:
        f.write(f"add x{dram_adr_tmp_reg}, x0, x{ldt_info.dram_addr_reg}\n")
        for i in legal_len:
            if ldt_info.len - i >= 0:
                new_ldt_info = copy.deepcopy(ldt_info)
                new_ldt_info.len = i
                gen_load_data(f = f, info = new_ldt_info)
                f.write(f"addi x{ldt_info.dest_addr_reg}, x{ldt_info.dest_addr_reg}, {i}\n")
                f.write(f"addi x{ldt_info.dram_addr_reg}, x{ldt_info.dram_addr_reg}, {i}\n")
                ldt_info.len -= i
        f.write(f"add x{ldt_info.dram_addr_reg}, x0, x{dram_adr_tmp_reg}\n")
        f.write(f"andi x{ldt_info.dest_addr_reg}, x{ldt_info.dram_addr_reg}, 4080\n")
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
    bias_addr = idata_last_size * 16 + idata_thd
    gen_set_data(f = f, data = bias_addr, reg = idata_bias_reg)
    load_idata_for_loop_cnt += 1

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

    perceptron_iter_thd = math.ceil(info.input_len+1 / 16)
    last_iter_input_size = 16 if (info.input_len + 1) % 16 == 0 else (info.input_len + 1) % 16
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

    gen_set_data(f = f, data = 0, reg = perceptron_for_loop_iter_reg)
    gen_set_data(f = f, data = perceptron_iter_thd, reg = perceptron_for_loop_thd_reg)
    gen_set_data(f = f, data = 1, reg = first_iter_reg)

    gen_set_data(f = f, data = 0, reg = sram_idata_addr_reg)
    gen_set_data(f = f, data = info.input_width, reg = perceptron_input_width_reg)
    gen_set_data(f = f, data = 0, reg = perceptron_input_col_reg)
    gen_set_data(f = f, data = input_last_row, reg = perceptron_input_last_row_reg)
    gen_set_data(f = f, data = info.dram_wdata_addr, reg = perceptron_dram_wdata_addr_reg)
    
    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}:\n")

    f.write(f"add x{dram_wdata_addr_reg}, x{perceptron_dram_wdata_addr_reg}, {dram_wdata_addr_reg}\n")

    f.write(f"addi x{perceptron_for_loop_iter_reg}, x{perceptron_for_loop_iter_reg}, 1\n")
    f.write(f"beq x{perceptron_for_loop_iter_reg}, x{perceptron_for_loop_thd_reg}, perceptron_for_loop_{perceptron_for_loop_cnt}_last_iter_br\n")
    f.write(f"beq x{perceptron_for_loop_iter_reg}, x{first_iter_reg}, perceptron_for_loop_{perceptron_for_loop_cnt}_first_iter_br\n")

    gen_load_wdata_for_loop(f = f, perceptron_cnt = info.perceptron_size, ldt_info = non_last_ldt_info, wdata_size = wdata_len)
    gen_set_data(f = f, data = 0, reg = sram_wdata_addr_reg)
    f.write(f"MM x{sram_idata_addr_reg}, x{sram_wdata_addr_reg}, 15, {info.input_width - 1}, {info.perceptron_size - 1}, 0\n")
    f.write(f"jal x0, perceptron_for_loop_{perceptron_for_loop_cnt}_end\n")

    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}_last_iter_br:\n")
    gen_load_wdata_for_loop(f = f, perceptron_cnt = perceptron_wdata_for_loop_cnt, ldt_info = last_ldt_info, wdata_size = wdata_len)
    gen_set_data(f = f, data = 0, reg = sram_wdata_addr_reg)
    if perceptron_iter_thd == 1:
        f.write(f"MM x{sram_idata_addr_reg}, x{sram_wdata_addr_reg}, {info.input_len}, {info.input_width - 1}, {info.perceptron_size - 1}, 1\n")
    else:
        f.write(f"MM x{sram_idata_addr_reg}, x{sram_wdata_addr_reg}, {last_iter_input_size}, {info.input_width - 1}, {info.perceptron_size - 1}, 0\n")    
    f.write(f"jal x0, perceptron_for_loop_{perceptron_for_loop_cnt}_end\n")

    f.write(f"perceptron_for_loop_{perceptron_for_loop_cnt}_first_iter_br:\n")
    gen_load_wdata_for_loop(f = f, perceptron_cnt = info.perceptron_size, ldt_info = non_last_ldt_info, wdata_size = wdata_len)
    gen_set_data(f = f, data = 0, reg = sram_wdata_addr_reg)
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

    fc_layer_for_loop_thd = math.ceil(fc_layer_info.perceptron_cnt / 16)
    dram_wdata_last_addr = fc_layer_info.dram_wdata_addr + 16 * fc_layer_info.input_size * (fc_layer_for_loop_thd - 1)
    dram_wdata_last_addr_qual = fc_layer_info.dram_wdata_addr if fc_layer_for_loop_thd == 1 else dram_wdata_last_addr
    fc_layer_wdata_dram_inc = 16 * fc_layer_info.input_size
    fc_last_row = 512*15
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
    
    gen_set_data(f = f, data = 0, reg = oram_addr_reg)

    if fc_layer_for_loop_thd == 1:
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

    f.write(f"add x{fc_dram_wdata_addr_reg}, x{dram_wdata_addr_reg}, x0\n")
    f.write(f"fc_layer_for_loop_{fc_layer_for_loop_cnt}:\n")
    f.write(f"addi x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_iter_reg}, 1\n")
    f.write(f"beq x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_thd_reg}, fc_layer_for_loop_{fc_layer_for_loop_cnt}_last_iter_br\n")
    
    gen_perceptron_for_loop(f = f, info = perceptron_non_last_info)
    f.write(f"add x{dram_wdata_addr_reg}, x{fc_dram_wdata_addr_reg}, x{fc_layer_wdata_dram_inc_reg}\n")
    f.write(f"add x{fc_dram_wdata_addr_reg}, x{fc_dram_wdata_addr_reg}, x{fc_layer_wdata_dram_inc_reg}\n")
    if fc_layer_info.relu:
        f.write(f"act 0\n")
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

    gen_set_data(f = f, data = 0, reg = oram_addr_reg)
    gen_set_data(f = f, data = 0, reg = fc_layer_for_loop_iter_reg)
    gen_set_data(f = f, data = st_cnt, reg = fc_layer_for_loop_thd_reg)
    gen_set_data(f = f, data = st_dram_addr, reg = st_dram_addr_reg)

    f.write(f"oram_st_for_loop_{oram_st_for_loop_cnt}:\n")
    f.write(f"addi x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_iter_reg}, 1\n")
    f.write(f"STT x{oram_addr_reg}, x{st_dram_addr_reg},  0, 1, 0, 1\n")
    f.write(f"addi x{st_dram_addr_reg}, x{st_dram_addr_reg}, 32\n")
    f.write(f"blt x{fc_layer_for_loop_iter_reg}, x{fc_layer_for_loop_thd_reg}, oram_st_for_loop_{oram_st_for_loop_cnt}\n")
    f.write("WFI\n")
    oram_st_for_loop_cnt += 1

if __name__ == "__main__":
    config = configparser.ConfigParser()
    config.read(os.path.join(os.path.dirname(__file__), "batch_code_gen/config.ini"))
    output_dir = config["FILE_PATH"]["output_dir"]
    f = open(output_dir, "w")
    for i in range(int(config["MODEL_CONFIG"]["num_layers"])):

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
        fc_info = fc_layer_info(
            perceptron_cnt = output_num,
            input_size = input_size,
            dram_idata_addr = dram_idata_addr,
            dram_wdata_addr = dram_wdata_addr,
            relu = True
        )
        gen_fc_layer_for_loop(f = f, fc_layer_info = fc_info)

        st_dram_addr = int(config["OUTPUT_DRAM_ADDR"][f"layer{i}_output_addr"])
        gen_oram_st_for_loop(f = f, st_cnt = output_num, st_dram_addr = st_dram_addr)

    f.close()
        