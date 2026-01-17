class axi_wr_sequencer extends uvm_sequencer # (axi_wr_tr);

    function new (string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    `uvm_component_utils(axi_wr_sequencer)
    
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

endclass

function void axi_wr_sequencer::build_phase(uvm_phase phase);
    super.build_phase(phase);
endfunction

task axi_wr_sequencer::main_phase(uvm_phase phase);
    super.main_phase(phase);
     
endtask
