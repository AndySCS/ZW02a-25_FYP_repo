class mxu_agent extends uvm_agent;
    
    mxu_driver mxu_drv;
    mxu_sequencer mxu_sqr;
    mxu_input_monitor mxu_imon; //input monitor
    mxu_output_monitor mxu_omon; //output monitor
    uvm_analysis_port #(mxu_tr) iap;
    uvm_analysis_port #(mxu_tr) oap;

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
    mxu_sqr = mxu_sequencer::type_id::create("mxu_sqr", this);
endfunction

function void mxu_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    iap = mxu_imon.ap;
    oap = mxu_omon.ap;
    mxu_drv.seq_item_port.connect(mxu_sqr.seq_item_export);
endfunction
