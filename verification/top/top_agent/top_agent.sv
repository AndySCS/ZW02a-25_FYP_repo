class top_agent extends uvm_agent;
    
    top_driver top_drv;
    top_sequencer top_sqr;

    function new(string name = "top_agent", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);

    `uvm_component_utils(top_agent)

endclass //className extends superClass

function void top_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    top_drv = top_driver::type_id::create("top_drv", this);
    top_sqr = top_sequencer::type_id::create("top_sqr", this);
endfunction

function void top_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    iap = top_imon.ap;
    oap = top_omon.ap;
    top_drv.seq_item_port.connect(top_sqr.seq_item_export);
endfunction
