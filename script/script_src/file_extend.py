import argparse
import os
import glob
import re

parser = argparse.ArgumentParser()
parser.add_argument("-dir", help = "directory or folder of the file")
args = parser.parse_args()

dir = args.dir

def check_is_for_loop(read_content, line_num):
    in_for_loop = False
    start_idx = 0
    end_idx = 0
    loop_var = 0
    read_idx = line_num
    line = read_content[read_idx]
    check_line = line.replace(' ','')
    for_loop_content_tmp = []
    for_loop_content = []
    
    if re.match(r"//:for\(\$\w*=\d*;\$\w*\<\d*;\$\w*\+\+\){", check_line):
        line_seg = re.split(r'(\(|;|\))',check_line)
        in_for_loop = True
        start_idx = line_seg[2].split('=')[1]
        end_idx = line_seg[4].split('<')[1]
        loop_var = line_seg[2].split('=')[0]
        read_idx += 1
    else:
        return False, False
    
    while in_for_loop:
        nest_loop_content, nest_read_idx = check_is_for_loop(read_content, read_idx)
        line = read_content[read_idx]
        check_line = line.replace(' ','')
        if nest_loop_content:
            for_loop_content_tmp = for_loop_content_tmp + nest_loop_content
            read_idx = nest_read_idx
        elif re.match("//:}", check_line):
            read_idx += 1
            in_for_loop = False
            for i in range (int(start_idx), int(end_idx)):
                for content in for_loop_content_tmp:
                    for_loop_content.append(content.replace(loop_var,str(i)))
            return for_loop_content, read_idx
        else:
            for_loop_content_tmp.append(line)
            read_idx += 1


def extend_file(file):

    generate_file_dir = file[:-1]
    write_content = []
    for_loop_content = []
    read_content = []

    with open(file, "r") as rd_file:
        for line in rd_file:
            read_content.append(line)
    
    line_num = 0
    while line_num < len(read_content):
        for_loop_content, read_idx = check_is_for_loop(read_content, line_num)
        if for_loop_content:
            for_loop_content_append = []
            for content in for_loop_content:
                formated_line =  eval(f'f"{content}"'.replace('\n',''))
                for_loop_content_append.append(f'{formated_line}\n')
            write_content += for_loop_content_append
            line_num = read_idx
        else:
            write_content.append(read_content[line_num])
            line_num += 1

    with open(generate_file_dir, 'w') as wr_file:
        for content in write_content:
            wr_file.write(content)

if os.path.isfile(dir):
    if not re.match(r'.*\.\w*p$', dir):
        print(f"Error: input file is not extendable, file name is:\n{dir}")
    else:
        extend_file(dir)
elif os.path.isdir(dir):
    file_list = glob.glob(f"{dir}*.*p", recursive=True)
    for file in file_list:
        extend_file(file)
else:
    print(f"Error: input dir is neither foler nor dir, dir is:\n{dir}")