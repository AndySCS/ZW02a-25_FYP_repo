class lsu_agent extends uvm_agent;
    
    lsu_driver lsu_drv;
    lsu_input_monitor lsu_imon; //input monitor
    lsu_output_monitor lsu_omon; //output monitor
    uvm_analysis_port #(lsu_tr) iap;
    uvm_analysis_port #(lsu_tr) oap;

    function new(string name = "lsu_agent", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);

    `uvm_component_utils(lsu_agent)

endclass //className extends superClass

function void lsu_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    lsu_drv = lsu_driver::type_id::create("lsu_drv", this);
    lsu_imon = lsu_input_monitor::type_id::create("lsu_imon", this);
    lsu_omon = lsu_output_monitor::type_id::create("lsu_omon", this);
endfunction

function void lsu_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    iap = lsu_imon.ap;
    oap = lsu_omon.ap;
endfunction