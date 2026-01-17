class axi_rd_driver extends uvm_driver #(axi_rd_tr); 

    virtual axi_rd_intf axi_rd_if;

    `uvm_component_utils(axi_rd_driver)
    
    function new(string name = "axi_rd_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

endclass //className extends superClass

function void axi_rd_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual axi_rd_intf)::get(this, "", "axi_rd_if", axi_rd_if))begin
        `uvm_fatal("axi_rd_driver", "axi_rd driver fail to get axi_rd if")
    end
endfunction

task axi_rd_driver::main_phase(uvm_phase phase); 
    super.main_phase(phase);
endtask