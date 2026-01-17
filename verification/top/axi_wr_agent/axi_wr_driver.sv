class axi_wr_driver extends uvm_driver #(axi_wr_tr); 

    virtual axi_wr_intf axi_wr_if;

    `uvm_component_utils(axi_wr_driver)
    
    function new(string name = "axi_wr_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

endclass //className extends superClass

function void axi_wr_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual axi_wr_intf)::get(this, "", "axi_wr_if", axi_wr_if))begin
        `uvm_fatal("axi_wr_driver", "axi_wr driver fail to get axi_wr if")
    end
endfunction

task axi_wr_driver::main_phase(uvm_phase phase); 
    super.main_phase(phase);
endtask