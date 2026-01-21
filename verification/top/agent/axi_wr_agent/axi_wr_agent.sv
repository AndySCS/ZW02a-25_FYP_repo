class axi_wr_agent extends uvm_agent;
    
    axi_wr_driver axi_wr_drv;
    axi_wr_sequencer axi_wr_sqr;
    axi_wr_output_monitor axi_wr_mon; //output monitor
    uvm_analysis_port #(axi_wr_tr) ap;

    function new(string name = "axi_wr_agent", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);

    `uvm_component_utils(axi_wr_agent)

endclass //className extends superClass

function void axi_wr_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    axi_wr_drv = axi_wr_driver::type_id::create("axi_wr_drv", this);
    axi_wr_mon = axi_wr_output_monitor::type_id::create("axi_wr_omon", this);
    axi_wr_sqr = axi_wr_sequencer::type_id::create("axi_wr_sqr", this);
endfunction

function void axi_wr_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    ap = axi_wr_mon.ap;
    axi_wr_drv.seq_item_port.connect(axi_wr_sqr.seq_item_export);
endfunction
