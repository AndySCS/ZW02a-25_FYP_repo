import argparse
import os
import re

def get_dir():
    parser = argparse.ArgumentParser()
    parser.add_argument("-srcDir", help = "dir of source code")
    parser.add_argument("-binDir", help = "dir of binary file")
    args = parser.parse_args()
    src_dir = args.srcDir
    bin_dir = args.binDir
    if os.path.isfile(src_dir):
        return src_dir, bin_dir
    else:
        exit

def convert_src2list(src_dir):
    f_list = []
    with open(src_dir) as f:
        for line in f:
            line = line.split('//')[0].strip()
            if line:
                f_list.append(line)
    return f_list

def convert_list2hash(f_list):
    addr_hash = {}
    line_hash = {}
    addr_cnt = 0
    for line in f_list:
        if ':' in line:
            addr_hash[line.replace(':', '').replace(' ','')] = addr_cnt + 1
        else:
            line_hash[addr_cnt] = line
            addr_cnt += 4
    return addr_hash, line_hash

def process_line(line):
    line_elem = re.split('\s|\,', line)
    line_elem = [elem for elem in line_elem if elem]
    line_elem[0] = line_elem[0].lower()
    return line_elem

def convert_reg2bin(reg_addr):
    return format(int(reg_addr.replace('x', '')), "05b")

def convert_func32bin(operator):
    func3_dict = {
        # Jumps
        "jalr"   : "000",

        # Branches
        "beq"    : "000",
        "bne"    : "001",
        "blt"    : "100",
        "bge"    : "101",
        "bltu"   : "110",
        "bgeu"   : "111",

        # Loads
        "lb"     : "000",
        "lh"     : "001",
        "lw"     : "010",
        "lbu"    : "100",
        "lhu"    : "101",

        # Stores
        "sb"     : "000",
        "sh"     : "001",
        "sw"     : "010",

        # Immediate ALU
        "addi"   : "000",
        "slti"   : "010",
        "sltiu"  : "011",
        "xori"   : "100",
        "ori"    : "110",
        "andi"   : "111",
        "slli"   : "001",
        "srli"   : "101",
        "srai"   : "101",

        # Register ALU
        "add"    : "000",
        "sub"    : "000",
        "sll"    : "001",
        "slt"    : "010",
        "sltu"   : "011",
        "xor"    : "100",
        "srl"    : "101",
        "sra"    : "101",
        "or"     : "110",
        "and"    : "111",
    }
    return func3_dict.get(operator, None)  # returns None if operator not found

def convert_func72bin(operator):
    func7_dict = {
        "add"   : "0000000",
        "sub"   : "0100000",
        "sll"   : "0000000",     
        "slt"   : "0000000",
        "sltu"  : "0000000",
        "xor"   : "0000000",
        "srl"   : "0000000",
        "sra"   : "0100000",
        "or"    : "0000000",
        "and"   : "0000000",
        "slli"  : "0000000",
        "srli"  : "0000000",
        "srai"  : "0100000",
    }
    return func7_dict.get(operator, None)

def convert_opcode2bin(operator):
    opcode_dict = {
        # Loads / Stores
        "lb"    : "0000011", 
        "lh"    : "0000011", 
        "lw"    : "0000011",
        "lbu"   : "0000011", 
        "lhu"   : "0000011",
        "sb"    : "0100011", 
        "sh"    : "0100011", 
        "sw"    : "0100011",

        # Branches
        "beq"   : "1100011", 
        "bne"   : "1100011",
        "blt"   : "1100011", 
        "bge"   : "1100011",
        "bltu"  : "1100011", 
        "bgeu"  : "1100011",

        # Jumps
        "jal"   : "1101111",
        "jalr"  : "1100111",

        # Upper immediates
        "lui"   : "0110111",
        "auipc" : "0010111",

        # Immediate ALU
        "addi"  : "0010011", 
        "slti"  : "0010011", 
        "sltiu" : "0010011",
        "xori"  : "0010011", 
        "ori"   : "0010011", 
        "andi"  : "0010011",
        "slli"  : "0010011", 
        "srli"  : "0010011", 
        "srai"  : "0010011",     

        # Register ALU
        "add"   : "0110011", 
        "sub"   : "0110011",
        "sll"   : "0110011", 
        "slt"   : "0110011", 
        "sltu"  : "0110011",
        "xor"   : "0110011", 
        "srl"   : "0110011", 
        "sra"   : "0110011",
        "or"    : "0110011", 
        "and"   : "0110011",

        #self define
        "ldt"   : "0000000",
        "stt"   : "0000001",
        "stmt"  : "0000010",
        "mm"    : "0001100",
        "act"   : "0000100",
        "wfi"   : "1111111"
    }
    return opcode_dict.get(operator, None)

def convert_itype2bin(line_elem, addr_hash, addr):
    imm12 = format(int(line_elem[3]) & 0xFFF, "012b")
    rs1 = convert_reg2bin(line_elem[2])
    func3 = convert_func32bin(line_elem[0])
    rd = convert_reg2bin(line_elem[1])
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = imm12 + rs1 + func3 + rd + opcode
    return machine_code

def convert_itypesp2bin(line_elem, addr_hash, addr):
    shamt = format(int(line_elem[3]), "05b")
    func7 = convert_func72bin(line_elem[0])
    rs1 = convert_reg2bin(line_elem[2])
    func3 = convert_func32bin(line_elem[0])
    rd = convert_reg2bin(line_elem[1])
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = func7 + shamt + rs1 + func3 + rd + opcode
    return machine_code

def convert_rtype2bin(line_elem, addr_hash, addr):
    func7 = convert_func72bin(line_elem[0])
    rs2 = convert_reg2bin(line_elem[3])
    rs1 = convert_reg2bin(line_elem[2])
    func3 = convert_func32bin(line_elem[0])
    rd = convert_reg2bin(line_elem[1])
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = func7 + rs2 + rs1 + func3 + rd + opcode
    return machine_code

def convert_stype2bin(line_elem, addr_hash, addr):
    imm12 = format(int(line_elem[3]) & 0xFFF, "012b")[::-1]
    rs2 = convert_reg2bin(line_elem[1])
    rs1 = convert_reg2bin(line_elem[2])
    func3 = convert_func32bin(line_elem[0])
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = imm12[5:12][::-1] + rs2 + rs1 + func3 + imm12[0:5][::-1] + opcode
    return machine_code

def convert_utype2bin(line_elem, addr_hash, addr):
    imm20 = format(int(line_elem[2]) & 0xFF_FFFF, "020b")
    rd = convert_reg2bin(line_elem[1])
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = imm20 + rd + opcode
    return machine_code

def convert_btype2bin(line_elem, addr_hash, addr):
    target_addr = addr_hash.get(line_elem[3], None)
    if target_addr is None:
        raise Exception(f"{line_elem[3]} is not found in addr_hash")
    addr_diff = (int(target_addr) - addr) & 0x1FFF
    imm13 = format(addr_diff, "013b")[::-1]
    rs1 = convert_reg2bin(line_elem[1])
    rs2 = convert_reg2bin(line_elem[2]) 
    func3 = convert_func32bin(line_elem[0])
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = imm13[12] + imm13[5:11][::-1] + rs2 + rs1 + func3 + imm13[1:5][::-1] + imm13[11] + opcode
    return machine_code

def convert_jtype2bin(line_elem, addr_hash, addr):
    target_addr = addr_hash.get(line_elem[2], None)
    if target_addr is None:
        raise Exception(f"{line_elem[2]} is not found in addr_hash")
    addr_diff = int(target_addr) - addr
    imm21 = format(addr_diff & 0x1FF_FFFF, "021b")[::-1]
    rd = convert_reg2bin(line_elem[1])
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = imm21[20] + imm21[1:11][::-1] + imm21[11] + imm21[12:20][::-1] + rd + opcode
    return machine_code

def convert_self_def_ldt2bin(line_elem, addr_hash, addr):
    #print(line_elem)
    num = format(int(line_elem[3]), "08b")
    len = format(int(line_elem[4]), "03b")
    stride = format(int(line_elem[5]), "03b")
    rs1 = convert_reg2bin(line_elem[1])
    rs2 = convert_reg2bin(line_elem[2])
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = '0' + num[0:6] + rs2 + rs1 + num[6:8] + len + stride + opcode
    return machine_code

def convert_self_def_stt2bin(line_elem, addr_hash, addr):
    low = format(int(line_elem[6]), "01b")
    num = format(int(line_elem[3]), "08b")
    len = format(int(line_elem[4]), "03b")
    stride = format(int(line_elem[5]), "03b")
    rs1 = convert_reg2bin(line_elem[1])
    rs2 = convert_reg2bin(line_elem[2])
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = low + num[0:6] + rs2 + rs1 + num[6:8] + len + stride + opcode
    return machine_code

def convert_self_def_stmt2bin(line_elem, addr_hash, addr):
    low = format(int(line_elem[5]), "01b")
    row_len = format(int(line_elem[4]), "04b")
    col_len = format(int(line_elem[3]), "04b")
    rs1 = convert_reg2bin(line_elem[1])
    rs2 = convert_reg2bin(line_elem[2])
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = low + "000000" + rs2 + rs1 + row_len + col_len + opcode
    return machine_code

def convert_self_def_mm2bin(line_elem, addr_hash, addr):
    clr = format(int(line_elem[6]), "01b")
    wram_row_len = format(int(line_elem[5]), "04b")
    iram_col_len = format(int(line_elem[4]), "04b")
    iram_row_len = format(int(line_elem[3]), "04b")
    rs1 = convert_reg2bin(line_elem[1])
    rs2 = convert_reg2bin(line_elem[2])
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = clr + "00" + wram_row_len + rs2 + rs1 + iram_row_len + iram_col_len + opcode
    return machine_code

def convert_self_def_act2bin(line_elem, addr_hash, addr):
    act = format(int(line_elem[1]), "02b")
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = "0"*23 + act + opcode
    return machine_code

def convert_self_def_wfi2bin(line_elem, addr_hash, addr):
    opcode = convert_opcode2bin(line_elem[0])
    machine_code = "0"*25 + opcode
    return machine_code

def convert_line2bin(line_pkt, operator, addr_hash):
    inst2bin = {
        # Loads / Stores
        "lb"    : convert_itype2bin, 
        "lh"    : convert_itype2bin, 
        "lw"    : convert_itype2bin,
        "lbu"   : convert_itype2bin, 
        "lhu"   : convert_itype2bin,
        "sb"    : convert_stype2bin, 
        "sh"    : convert_stype2bin, 
        "sw"    : convert_stype2bin,

        # Branches
        "beq"   : convert_btype2bin, 
        "bne"   : convert_btype2bin,
        "blt"   : convert_btype2bin, 
        "bge"   : convert_btype2bin,
        "bltu"  : convert_btype2bin, 
        "bgeu"  : convert_btype2bin,

        # Jumps
        "jal"   : convert_jtype2bin,
        "jalr"  : convert_itype2bin,

        # Upper immediates
        "lui"   : convert_utype2bin,
        "auipc" : convert_utype2bin,

        # Immediate ALU
        "addi"  : convert_itype2bin, 
        "slti"  : convert_itype2bin, 
        "sltiu" : convert_itype2bin,
        "xori"  : convert_itype2bin, 
        "ori"   : convert_itype2bin, 
        "andi"  : convert_itype2bin,
        "slli"  : convert_itypesp2bin, 
        "srli"  : convert_itypesp2bin, 
        "srai"  : convert_itypesp2bin,     

        # Register ALU
        "add"   : convert_rtype2bin, 
        "sub"   : convert_rtype2bin,
        "sll"   : convert_rtype2bin, 
        "slt"   : convert_rtype2bin, 
        "sltu"  : convert_rtype2bin,
        "xor"   : convert_rtype2bin, 
        "srl"   : convert_rtype2bin, 
        "sra"   : convert_rtype2bin,
        "or"    : convert_rtype2bin, 
        "and"   : convert_rtype2bin,

        #self define
        "ldt"   : convert_self_def_ldt2bin,
        "stt"   : convert_self_def_stt2bin,
        "stmt"  : convert_self_def_stmt2bin,
        "mm"    : convert_self_def_mm2bin,
        "act"   : convert_self_def_act2bin,
        "wfi"   : convert_self_def_wfi2bin
    }
    machine_code = inst2bin[operator](line_pkt["elem"], addr_hash, line_pkt["addr"])
    if len(machine_code) != 32:
        raise Exception(f"line {line_pkt['addr']} : {line_pkt['line']} machine code is not 32\
                        \nlen is {len(machine_code)}:\
                        \nmachine code is {machine_code}")
    return machine_code

def convert_hash2bin(addr_hash, line_hash):
    bin_list = []
    for addr, line in line_hash.items():
        line_elem = process_line(line)
        #print(line)
        operator = line_elem[0].lower()
        line_pkt = {
            "elem" : line_elem,
            "addr" : addr,
            "line" : line
        }
        machine_code = convert_line2bin(line_pkt, operator, addr_hash)
        bin_list.append(machine_code)
    return bin_list

def convert_bin2ram(bin_list):
    ram_inst = []
    inst_cnt = 4
    ram_cnt = 256
    ram_line = ""
    for bin in bin_list:
        ram_line = bin + ram_line
        inst_cnt -= 1
        if inst_cnt == 0:
            ram_cnt -= 1
            ram_inst.append(ram_line)
            inst_cnt = 4
            ram_line = ""
    if inst_cnt != 4:
        ram_line = "0"*32*inst_cnt + ram_line
        ram_inst.append(ram_line)
        ram_cnt -= 1
    for _ in range(ram_cnt):
        ram_inst.append("0"*32*4)
    return ram_inst

def convert_src2bin(src_dir):
    f_list = convert_src2list(src_dir)
    addr_hash, line_hash = convert_list2hash(f_list)
    with open("addr_hash.txt", 'w') as f:
        for addr, line in line_hash.items():
            f.write(f"addr: {addr}, line: {line}\n")
    bin_list = convert_hash2bin(addr_hash, line_hash)
    return bin_list

def write_bin2file(ram_inst, bin_dir):
    with open(bin_dir, 'w') as f:
        for inst in ram_inst:
            f.write(f"{inst}\n")

if __name__ == '__main__':
    src_dir, bin_dir= get_dir()
    bin_list = convert_src2bin(src_dir)
    ram_inst = convert_bin2ram(bin_list)
    write_bin2file(ram_inst, bin_dir)
    ##print(reshaped_img_data.shape)
