`ifndef TC_MIX_SV
`define TC_MIX_SV

`define tc_name tc_mix

class `tc_name extends tc_base;
    `uvm_component_utils(`tc_name)
   	extern function new(string name="tc_mix", uvm_component parent=null);
   	extern function void build_phase(uvm_phase phase);
   	extern task run_phase(uvm_phase phase);
endclass

function `tc_name::new(string name="tc_mix", uvm_component parent=null);
    super.new(name, parent);
endfunction

function void `tc_name::build_phase(uvm_phase phase);
   	super.build_phase(phase);
endfunction

task `tc_name::run_phase(uvm_phase phase);
    mix_seq mix_test = mix_seq::type_id::create("mix_test");
    mix_test.start(null);
endtask

`undef tc_name
`endif
