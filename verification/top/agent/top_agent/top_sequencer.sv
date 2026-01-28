class top_sequencer extends uvm_sequencer # (model_output_transaction);

    virtual top_intf top_if;

    function new (string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    `uvm_component_utils(top_sequencer)
    
    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

endclass

function void top_sequencer::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual top_intf)::get(this, "", "top_if", top_if))begin
        `uvm_fatal("top_sqr", "top sqr fail to get top if")
    end
endfunction

task top_sequencer::main_phase(uvm_phase phase);
    top_seqeunce top_seq;
    int phase_cnt;
    top_seq = top_seqeunce::type_id::create("top_seq");

    super.main_phase(phase);
    `uvm_info(get_name(), "main phase begin", UVM_LOW);
    phase.raise_objection(phase);

    top_seq.start(this);
    
    while(1)begin
        @(posedge top_if.clk)begin
	    phase_cnt++;
	end
        if(phase_cnt >= 10000) phase.drop_objection(phase);
    end
    `uvm_info(get_name(), "main phase ends", UVM_LOW);
     
endtask
