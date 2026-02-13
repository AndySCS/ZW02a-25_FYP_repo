class mxu_agent extends uvm_agent;
    
    mxu_monitor mxu_mon; //output monitor

    function new(string name = "mxu_agent", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);

    `uvm_component_utils(mxu_agent)

endclass //className extends superClass

function void mxu_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    mxu_mon = mxu_monitor::type_id::create("mxu_mon", this);
endfunction

function void mxu_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
endfunction
