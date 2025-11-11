class env extends uvm_env;

    mxu_agent mxu_agt;
    mxu_rm rm;
    uvm_tlm_analysis_fifo #(mxu_tr) mxu_fifo;

    function new(string name = "env", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);

    `uvm_component_utils(env)

endclass //env extends superClass

function void env::build_phase(uvm_phase phase);
    super.build_phase(phase);
    mxu_agt = mxu_agent::type_id::create("mxu_agt", this);
endfunction

function void env::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    mxu_agt.ap.connect(mxu_fifo.analysis_export);
    rm.port.connect(mxu_fifo.blocking_get_export);
endfunction