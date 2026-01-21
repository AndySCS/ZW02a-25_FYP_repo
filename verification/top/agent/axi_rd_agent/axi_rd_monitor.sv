class axi_rd_monitor extends uvm_monitor;

    virtual axi_rd_intf axi_rd_if;
    uvm_analysis_port #(axi_rd_tr) ap;

    `uvm_component_utils(axi_rd_input_monitor)
    function new(string name = "axi_rd_input_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
endclass //axi_rd_input_monitor extends superClass

function void axi_rd_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual axi_rd_intf)::get(this, "", "axi_rd_if", axi_rd_if))begin
        `uvm_fatal("axi_rd_input_monitor", "axi_rd input_monitor fail to get axi_rd if")
    end
    ap = new("ap", this);
endfunction

task axi_rd_monitor::main_phase(uvm_phase phase);
    super.main_phase(phase);    
endtask
