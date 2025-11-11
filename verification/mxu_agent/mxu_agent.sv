class mxu_agent extends uvm_agent;
    
    mxu_driver mxu_drv;
    mxu_input_monitor mxu_imon; //input monitor
    mxu_output_monitor mxu_omon; //output monitor
    uvm_analysis_port #(mxu_tr) ap;

    function new(string name = "mxu_agent", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);

    `uvm_component_utils(mxu_agent)

endclass //className extends superClass

function void mxu_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    mxu_drv = mxu_driver::type_id::create("mxu_drv", this);
    mxu_imon = mxu_input_monitor::type_id::create("mxu_imon", this);
    mxu_omon = mxu_output_monitor::type_id::create("mxu_omon", this);
endfunction

function void mxu_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    ap = mxu_imon.ap;
endfunction