class mxu_sequencer extends uvm_sequencer # (mxu_tr);

    virtual mxu_intf mxu_if;

    function new (string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    `uvm_component_utils(mxu_sequencer)
    
    extern virtual task main_phase(uvm_phase phase);

endclass

task mxu_sequencer::main_phase(uvm_phase phase);
    mxu_seqeunce mxu_seq;
    int phase_cnt;
    mxu_seq = mxu_seqeunce::type_id::create("mxu_seq");

    super.main_phase(phase);
    phase.raise_objection(phase);

    mxu_seq.start(this);
    
    while(1)begin
        @(posedge mxu_if.clk)begin
	    phase_cnt++;
	end
        if(phase_cnt >= 2000) phase.drop_objection(phase);
    end
     
endtask
