class axi_rd_agent extends uvm_agent;
    
    axi_rd_driver axi_rd_drv;
    axi_rd_sequencer axi_rd_sqr;
    axi_rd_output_monitor axi_rd_mon; //output monitor
    uvm_analysis_port #(axi_rd_tr) ap;

    function new(string name = "axi_rd_agent", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);

    `uvm_component_utils(axi_rd_agent)

endclass //className extends superClass

function void axi_rd_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);
    axi_rd_drv = axi_rd_driver::type_id::create("axi_rd_drv", this);
    axi_rd_mon = axi_rd_output_monitor::type_id::create("axi_rd_omon", this);
    axi_rd_sqr = axi_rd_sequencer::type_id::create("axi_rd_sqr", this);
endfunction

function void axi_rd_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    ap = axi_rd_mon.ap;
    axi_rd_drv.seq_item_port.connect(axi_rd_sqr.seq_item_export);
endfunction
