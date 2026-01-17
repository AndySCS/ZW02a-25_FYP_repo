class axi_wr_monitor extends uvm_monitor;

    virtual axi_wr_intf axi_wr_if;
    uvm_analysis_port #(axi_wr_tr) ap;

    `uvm_component_utils(axi_wr_input_monitor)
    function new(string name = "axi_wr_input_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
endclass //axi_wr_input_monitor extends superClass

function void axi_wr_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual axi_wr_intf)::get(this, "", "axi_wr_if", axi_wr_if))begin
        `uvm_fatal("axi_wr_input_monitor", "axi_wr input_monitor fail to get axi_wr if")
    end
    ap = new("ap", this);
endfunction

task axi_wr_monitor::main_phase(uvm_phase phase);
    super.main_phase(phase);    
endtask
