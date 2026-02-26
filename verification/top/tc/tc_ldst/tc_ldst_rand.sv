`ifndef TC_LDST_RAND_SV
`define TC_LDST_RAND_SV

`define tc_name tc_ldst_rand

class `tc_name extends tc_base;
    `uvm_component_utils(`tc_name)
   	extern function new(string name="tc_ldst_rand", uvm_component parent=null);
   	extern function void build_phase(uvm_phase phase);
   	extern task run_phase(uvm_phase phase);
endclass

function `tc_name::new(string name="tc_ldst_rand", uvm_component parent=null);
    super.new(name, parent);
endfunction

function void `tc_name::build_phase(uvm_phase phase);
   	super.build_phase(phase);
endfunction

task `tc_name::run_phase(uvm_phase phase);
    ldst_rand_seq ldst_rand_test = ldst_rand_seq::type_id::create("ldst_rand_test");
    ldst_rand_test.start(null);
endtask

`undef tc_name
`endif
