import subprocess as subps
import re
import json
import argparse
import random
import datetime
import sys
from multiprocessing import Pool
import signal

total_num = 0;
finish_num = 0;
pass_num = 0;
fail_num = 0;
invalid_num = 0;

fail_case_list = []
reg_tc_list    = []
result_tc_list = {}

reg_mode = 'pre_sim'
code_cov = "off"
func_cov = "off"

rpt_file = "default.rpt"
reg_datetime = "None"
cmpt_opt     = "None"


def regtask(tc_name):
    result = 0
    seed = random.randint(1,10000000)
    cmd = "make regress tc=" + tc_name + " seed=" + str(seed) + " mode=" + reg_mode + " ccov=" +  code_cov + " fcov=" + func_cov
    print(cmd)

    sim_result = subps.getstatusoutput(cmd)
    for line in sim_result:
        #print(line)
        if(type(line) == str):
            if(re.search("TC PASS", line)):
                result = "PASS"
            elif (re.search("TC ERROR", line)):
                result = "FAIL"
            else:
                result = "PASS"
    return result, cmd, tc_name; 

def write_rpt():
    #print(result_tc_list)
    with open(rpt_file, "w") as f:
        f.write("Date: "           + str(reg_datetime)+ "\n")
        f.write("Compile Option: " + str(cmp_opt)     + "\n")
        f.write("Total Number: "   + str(total_num)   + "\n")
        f.write("Finish Number: "  + str(finish_num)  + "\n")
        f.write("PASS Number: "    + str(pass_num)    + "\n")
        f.write("FAIL Number: "    + str(fail_num)    + "\n")
        f.write("\n")
        f.write("Summary \n")
        f.write("{:^40} | {:^10} | {:^10} | {:^10} | {:^10} | {:^10} \n"
                    .format("TEST CASE", "TOTAL", "PASS", "FAIL", "INVALID", "PASS RATE"))
        for tc in result_tc_list.items():
            f.write("{:^40} | {:^10} | {:^10} | {:^10} | {:^10} | {:^10.2%} \n".format(
                    tc[0], tc[1][3], tc[1][0], tc[1][1], tc[1][2], tc[1][0] / tc[1][3]))

        f.write("\n")
        f.write("Invalid Number: " + str(invalid_num) + "\n")
        for line in fail_case_list:
            f.write(line + " \n")
        f.close()

if __name__ == '__main__':
    try: 
        #Open log file
        reg_datetime = datetime.datetime.now().strftime('%Y%m%d_%H%M%S') 
        rpt_file = "regr" + reg_datetime + ".rpt"

        #get input 
        parser = argparse.ArgumentParser()
        parser.add_argument('--list', dest='regr_list_path', type=str, default="regression/regression_list.py")
        parser.add_argument('--ccov', dest='code_cov'      , type=str, default="off")
        parser.add_argument('--fcov', dest='func_cov'      , type=str, default="off")
        args = parser.parse_args()
        code_cov = args.code_cov
        func_cov = args.func_cov

        #Open Json File
        f = open(args.regr_list_path) 
        reglist = json.load(f)
        f.close()

        #Get Mode and compile 
        reg_mode = reglist.pop(0)['mode']
        cmp_opt = f'make cmp mode={reg_mode} ccov={code_cov} fcov={func_cov}'
        print(cmp_opt)
        cmpout = subps.getstatusoutput(cmp_opt)
        #Check any compile error
        for line in cmpout:
            if(type(line) == str):
                if(re.search("Error", line)):
                    print("Compile Error!!!!")
                    print("Exit Regression")
                    exit()
        print("Success Compile!!!!")
        print("Start Regression!!!!")

        for tc in reglist:
            total_num += tc['num'] 
            for i in range(tc['num']):
                reg_tc_list.append(tc['tc_name']) 
            result_tc_list[tc['tc_name']] = [0, 0, 0, tc['num']]
        
        random.shuffle(reg_tc_list)

        #Pool
        pool = Pool(processes=30)

        for result in pool.imap(regtask, reg_tc_list):
            finish_num += 1
            if(result[0] == "PASS"):
                pass_num += 1 
                result_tc_list[result[2]][0] += 1
            elif(result[0] == "FAIL"):
                fail_num += 1 
                print(f"!!!!! FAIL: {result[1]} !!!!!") 
                fail_case_list.append(result[1])
                result_tc_list[result[2]][1] += 1
            elif(result[0] == "INVALID"):
                invalid_num += 1 
                print(f"***** INVALID: {result[1]} *****") 
                fail_case_list.append(result[1])
                result_tc_list[result[2]][2] += 1
            print("=================================")
            print("Total TC Number: " + str(total_num))
            print("Finish Number: "   + str(finish_num))
            print("PASS Number: "     + str(pass_num))
            print("FAIL Number: "     + str(fail_num))
            print("Invalid Number: "  + str(invalid_num))
            print("=================================")
        pool.close()
        pool.join()
        print("Regression Finish")
    except KeyboardInterrupt:
        print("Abort")
    write_rpt()


