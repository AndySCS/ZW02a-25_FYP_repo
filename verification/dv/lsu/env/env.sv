class env extends uvm_env;

    lsu_agent lsu_agt;
    lsu_rm rm;
    lsu_sc sc;
    uvm_tlm_analysis_fifo #(lsu_tr) agt_rm_fifo;
    uvm_tlm_analysis_fifo #(lsu_tr) agt_sc_fifo;
    uvm_tlm_analysis_fifo #(lsu_tr) rm_sc_fifo;

    function new(string name = "env", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

    `uvm_component_utils(env)

endclass //env extends superClass

function void env::build_phase(uvm_phase phase);
    super.build_phase(phase);
    lsu_agt = lsu_agent::type_id::create("lsu_agt", this);
    rm = lsu_rm::type_id::create("rm", this);
    sc = lsu_sc::type_id::create("sc", this);
    
    agt_rm_fifo = new("agt_rm_fifo",this);
    agt_sc_fifo = new("agt_sc_fifo",this);
    rm_sc_fifo = new("rm_sc_fifo",this);

endfunction

function void env::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    lsu_agt.iap.connect(agt_rm_fifo.analysis_export);
    rm.port.connect(agt_rm_fifo.blocking_get_export);

    lsu_agt.oap.connect(agt_sc_fifo.analysis_export);
    sc.act_port.connect(agt_sc_fifo.blocking_get_export);
    
    rm.ap.connect(agt_sc_fifo.analysis_export);
    sc.exp_port.connect(agt_sc_fifo.blocking_get_export);

endfunction

task env::main_phase(uvm_phase phase);
    int phase_cnt;

    super.main_phase(phase);

    phase.raise_objection(phase);
    
    while(1)begin
        @(posedge lsu_agt.lsu_drv.lsu_if.clk)begin
	    phase_cnt++;
	end
        if(phase_cnt >= 2000) phase.drop_objection(phase);
    end
    
endtask
