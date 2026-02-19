`ifndef TC_UTYPE_SV
`define TC_UTYPE_SV

`define tc_name tc_utype

class `tc_name extends tc_base;
    `uvm_component_utils(`tc_name)
   	extern function new(string name="tc_utype", uvm_component parent=null);
   	extern function void build_phase(uvm_phase phase);
   	extern task run_phase(uvm_phase phase);
endclass

function `tc_name::new(string name="tc_utype", uvm_component parent=null);
    super.new(name, parent);
endfunction

function void `tc_name::build_phase(uvm_phase phase);
   	super.build_phase(phase);
endfunction

task `tc_name::run_phase(uvm_phase phase);
    utype_seq utype_test = utype_seq::type_id::create("utype_test");
    utype_test.start(null);
endtask

`undef tc_name
`endif
