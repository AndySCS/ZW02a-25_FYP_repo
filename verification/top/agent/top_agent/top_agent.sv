class top_agent extends uvm_agent;
    
    top_driver top_drv;
    top_sequencer top_sqr;
    top_monitor top_mon; //input monitor
    uvm_analysis_port #(model_output_transaction) ap;
    uvm_analysis_port #(rf_output_transaction) rf_ap;
    uvm_analysis_port #(start_preload_transaction) start_ap;

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
    top_mon = top_monitor::type_id::create("top_mon", this);
endfunction

function void top_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), "connect phase begins", UVM_LOW);
    super.connect_phase(phase);
    ap = top_mon.ap;
    rf_ap = top_mon.rf_ap;
    start_ap = top_mon.start_ap;
    top_drv.seq_item_port.connect(top_sqr.seq_item_export);
    `uvm_info(get_name(), "connect phase ends", UVM_LOW);
endfunction
