class env extends uvm_env;

    top_agent top_agt;
    axi_wr_agent axi_wr_agt;
    axi_rd_agent axi_rd_agt;
    top_rm rm;
    top_sc sc;
    force_agent force_agt;
    uvm_tlm_analysis_fifo #(model_output_transaction) agt_rm_fifo;
    uvm_tlm_analysis_fifo #(model_output_transaction) agt_sc_fifo;
    uvm_tlm_analysis_fifo #(model_output_transaction) rm_sc_fifo;

    uvm_tlm_analysis_fifo #(rf_output_transaction) rf_agt_rm_fifo;
    uvm_tlm_analysis_fifo #(rf_output_transaction) rf_agt_sc_fifo;
    uvm_tlm_analysis_fifo #(rf_output_transaction) rf_rm_sc_fifo;

    uvm_tlm_analysis_fifo #(rf_output_q_transaction) rf_q_rm_sc_fifo;


    uvm_tlm_analysis_fifo #(start_preload_transaction) start_agt_rm_fifo;

    function new(string name = "env", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

    `uvm_component_utils(env)

endclass //env extends superClass

function void env::build_phase(uvm_phase phase);
    `uvm_info(get_name(), "build phase begins", UVM_LOW);
    super.build_phase(phase);
    top_agt = top_agent::type_id::create("top_agt", this);
    axi_wr_agt = axi_wr_agent::type_id::create("axi_wr_agt", this);
    axi_rd_agt = axi_rd_agent::type_id::create("axi_rd_agt", this);
    rm = top_rm::type_id::create("rm", this);
    sc = top_sc::type_id::create("sc", this);
    force_agt = force_agent::type_id::create("force_agt", this);
    
    agt_rm_fifo = new("agt_rm_fifo",this);
    agt_sc_fifo = new("agt_sc_fifo",this);
    rm_sc_fifo = new("rm_sc_fifo",this);

    rf_agt_rm_fifo = new("rf_agt_rm_fifo",this);
    rf_agt_sc_fifo = new("rf_agt_sc_fifo",this);
    rf_rm_sc_fifo = new("rf_rm_sc_fifo",this);

    rf_q_rm_sc_fifo = new("rf_q_rm_sc_fifo",this);

    start_agt_rm_fifo = new("start_agt_rm_fifo",this);

    `uvm_info(get_name(), "build phase ends", UVM_LOW);

endfunction

function void env::connect_phase(uvm_phase phase);
    `uvm_info(get_name(), "connect phase begins", UVM_LOW);
    super.connect_phase(phase);

    top_agt.ap.connect(agt_rm_fifo.analysis_export);
    rm.port.connect(agt_rm_fifo.blocking_get_export);

    axi_wr_agt.ap.connect(agt_sc_fifo.analysis_export);
    sc.act_port.connect(agt_sc_fifo.blocking_get_export);
    
    rm.ap.connect(rm_sc_fifo.analysis_export);
    sc.exp_port.connect(rm_sc_fifo.blocking_get_export);

    //For riscv
    top_agt.rf_ap.connect(rf_agt_rm_fifo.analysis_export);
    rm.rf_port.connect(rf_agt_rm_fifo.blocking_get_export);
 
    rm.rf_ap.connect(rf_rm_sc_fifo.analysis_export);
    sc.rf_exp_port.connect(rf_rm_sc_fifo.blocking_get_export);

    rm.rf_q_ap.connect(rf_q_rm_sc_fifo.analysis_export);
    sc.rf_q_exp_port.connect(rf_q_rm_sc_fifo.blocking_get_export);

    //top_agt.rf_ap_test.connect(rf_agt_sc_fifo.analysis_export);
    //sc.rf_act_port.connect(rf_agt_sc_fifo.blocking_get_export);

    top_agt.start_ap.connect(start_agt_rm_fifo.analysis_export);
    rm.start_port.connect(start_agt_rm_fifo.blocking_get_export);

    `uvm_info(get_name(), "connect phase ends", UVM_LOW);

endfunction

task env::main_phase(uvm_phase phase);
    super.main_phase(phase);
endtask
