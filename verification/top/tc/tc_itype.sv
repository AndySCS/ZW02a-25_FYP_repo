`ifndef TC_ITYPE_SV
`define TC_ITYPE_SV

`define tc_name tc_itype

class `tc_name extends tc_base;
    `uvm_component_utils(`tc_name)
   	extern function new(string name="tc_itype", uvm_component parent=null);
   	extern function void build_phase(uvm_phase phase);
   	extern task run_phase(uvm_phase phase);
endclass

function `tc_name::new(string name="tc_itype", uvm_component parent=null);
    super.new(name, parent);
endfunction

function void `tc_name::build_phase(uvm_phase phase);
   	super.build_phase(phase);
endfunction

task `tc_name::run_phase(uvm_phase phase);
    itype_seq itype_test = itype_seq::type_id::create("itype_test");
    itype_test.start(null);
endtask

`undef tc_name
`endif
