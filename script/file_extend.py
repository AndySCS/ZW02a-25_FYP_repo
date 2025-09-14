import argparse
import os
import glob
import re

parser = argparse.ArgumentParser()
parser.add_argument("-dir", help = "directory or folder of the file")
args = parser.parse_args()

dir = args.dir

def extend_file(file):
    in_for_loop = False
    generate_file_dir = file[:-1]
    write_content = []
    for_loop_content = []
    start_idx = 0
    end_idx = 1
    loop_var = ''
    with open(file, "r") as rd_file:
        for line in rd_file:
            check_line = line.replace(' ','')
            if re.match("//:for\(\$\w*=\d*;\$\w*\<\d*;\$\w*\+\+\){", check_line):
                for_loop_content = []
                line_seg = re.split('(\(|;|\))',check_line)
                in_for_loop = True
                start_idx = line_seg[2].split('=')[1]
                end_idx = line_seg[4].split('<')[1]
                loop_var = line_seg[2].split('=')[0]
                continue
            if in_for_loop:
                if re.match("//:}", check_line):
                    in_for_loop = False
                    for i in range (int(start_idx), int(end_idx)):
                        for content in for_loop_content:
                            write_content.append(content.replace(loop_var,str(i)))
                    continue
                for_loop_content.append(line)
            else:
                write_content.append(line)

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