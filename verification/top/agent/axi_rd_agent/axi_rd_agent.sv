class axi_rd_agent extends uvm_agent;
    
    axi_rd_driver axi_rd_drv;
    uvm_analysis_port #(model_output_transaction) axi_wr_port;

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
endfunction

function void axi_rd_agent::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), "connect phase begins", UVM_LOW);
    super.connect_phase(phase);
    axi_wr_port = axi_rd_drv.axi_wr_port;
    `uvm_info(get_name(), "connect phase begins", UVM_LOW);
endfunction
