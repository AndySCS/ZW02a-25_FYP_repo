#Default Variable
seed := $(shell perl -e "print int(rand(10000000))")
tc = tc_base
mode = sim_test
printlv = UVM_LOW
#fsdb_file_name = $(tc)_$(seed)
csrc_folder_name = $(mode)"_csrc"      
ccov = off
fcov = off
sim_ccov_opts = 
sim_fcov_opts = 0
dbname = cov
riscdv_test = ""
riscdv_folder = "bin"
flash_depth = 2048 
max_chk = 15000 

fsdb_file_name = $(tc)_$(riscdv_test)_$(seed)
#TC Name
#ifeq ($(tc), tc_riscdv)
#	fsdb_file_name = $(tc)_$(riscdv_test)_$(seed)
#endif
#ifeq ($(tc), tc_riscdv)
#	fsdb_file_name = $(tc)_$(riscdv_test)_$(seed)
#endif

#Command
GEN_MODE = mkdir -p $(mode) $(mode)/log $(mode)/wave $(mode)/cov
VCS = vcs -sverilog 	 		          \
          -ntb_opts uvm-1.2               \
          -timescale=1ns/1ns              \
          +vpi 					          \
          -debug_access                   \
          -debug_region=cell+lib          \
          -debug_all                      \
          -full64                         \
          -f ../cfg/file_list.f        \
          -top harness 		              \
          -Mdir=$(csrc_folder_name)       \
          -l $(mode)/log/uvm_compile.log  \
		  -o $(mode)/simv                 \
          -cm line+cond+tgl+assert        \
          -cm_cond allops                 \
          -cm_count                       \
          -cm_dir $(mode)/cov/simv.vdb    \
          -cm_log $(mode)/cov/cm.log      \
          -cm_name $(fsdb_file_name)      \
          +riscdv_tc=$(riscdv_test)       \
          +riscdv_folder=$(riscdv_folder) \
          +max_chk=$(max_chk)             \
          +define+FLASH_DEPTH=$(flash_depth)       

#Make Mode
ifeq ($(ccov), on)
	sim_ccov_opts = -cm line+cond+tgl+assert\
                    -cm_cond allops         \
                    -cm_count
endif
ifeq ($(fcov), on)
	sim_fcov_opts = 1
endif



#=======================================================================
cmp: 
	$(GEN_MODE)
	$(VCS) 

sim: 
	./$(mode)/simv +UVM_TESTNAME=$(tc)                  \
                   +ntb_random_seed=$(seed)             \
				   +UVM_VERBOSITY=$(printlv)            \
                   +fsdb+autoflush                      \
                   -ucli -i ../cfg/dump_fsdb.tcl        \
                   -l $(mode)/log/$(fsdb_file_name).log \
                   -cm_name $(fsdb_file_name)           \
                   -cg_coverage_control=$(sim_fcov_opts)\
                   $(sim_ccov_opts)                     \
                   +riscdv_tc=$(riscdv_test)            \
                   +riscdv_folder=$(riscdv_folder)      \
                   +max_chk=$(max_chk)                  \
                   +define+FLASH_DEPTH=$(flash_depth)       

regress: 
	./$(mode)/simv +UVM_TESTNAME=$(tc)                  \
                   +ntb_random_seed=$(seed)             \
				   +UVM_VERBOSITY=UVM_NONE              \
                   -cm_name $(fsdb_file_name)           \
                   -cg_coverage_control=$(sim_fcov_opts)\
                   $(sim_ccov_opts)                     \
                   +riscdv_tc=$(riscdv_test)            \
                   +riscdv_folder=$(riscdv_folder)      \
                   +max_chk=$(max_chk)                  \
                   +define+FLASH_DEPTH=$(flash_depth)       

run: cmp sim

cov:
	verdi -cov &

verdi: 
	verdi -f ../cfg/file_list.f &

clean: 
	rm -rf core *_csrc simv* vc_hdrs.h ucli.key urg* *.log *.fsdb novas.* verdiLog vdCovLog *.rpt

merge:
	urg -full64 -parallel -show tests -dir $(mode)/cov/simv.vdb -dbname $(dbname).vdb &

#For TCL script
export wave = 
export dump_fsdb_name = $(mode)/wave/$(fsdb_file_name)

#Maybe can use for IP
#+define+tc=$(tc_name) 
