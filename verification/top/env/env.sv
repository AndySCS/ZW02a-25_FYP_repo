class env extends uvm_env;

    top_agent top_agt;
    axi_wr_agent axi_wr_agt;
    axi_rd_agent axi_rd_agt;
    //mxu_agent    mxu_agt;
    top_rm rm;
    top_sc sc;
    force_agent force_agt;
    model_reader model_rd;
    cmd_handler cmd_hdlr;
    ram_block ram_blk;

    uvm_tlm_analysis_fifo #(ffn_operator) agt_rm_fifo;
    uvm_tlm_analysis_fifo #(ffn_operator) agt_sc_fifo;
    uvm_tlm_analysis_fifo #(ffn_operator) rm_sc_fifo;

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

    set_report_max_quit_count(10);

    cmd_hdlr = cmd_handler::type_id::create("cmd_hdlr", this);
    uvm_config_db#(cmd_handler)::set(this, "rm", "cmd_hdlr", cmd_hdlr);
    uvm_config_db#(cmd_handler)::set(this, "sc", "cmd_hdlr", cmd_hdlr);
    uvm_config_db#(cmd_handler)::set(this, "model_rd", "cmd_hdlr", cmd_hdlr);
    uvm_config_db#(cmd_handler)::set(this, "axi_wr_agt.axi_wr_mon", "cmd_hdlr", cmd_hdlr);

    
    ram_blk = ram_block::type_id::create("ram_blk", this);
    //ram_blk.build();
    uvm_config_db#(ram_block)::set(this, "model_rd", "ram_blk", ram_blk);
    uvm_config_db#(ram_block)::set(this, "axi_wr_agt.axi_wr_mon", "ram_blk", ram_blk);
    uvm_config_db#(ram_block)::set(this, "axi_rd_agt.axi_rd_drv", "ram_blk", ram_blk);

    model_rd = model_reader::type_id::create("model_rd", this);
    uvm_config_db#(model_reader)::set(this, "rm", "model_rd", model_rd);
    

    top_agt = top_agent::type_id::create("top_agt", this);
    axi_wr_agt = axi_wr_agent::type_id::create("axi_wr_agt", this);
    axi_rd_agt = axi_rd_agent::type_id::create("axi_rd_agt", this);
    //mxu_agt    = mxu_agent::type_id::create("mxu_agt", this);
    rm = top_rm::type_id::create("rm", this);
    sc = top_sc::type_id::create("sc", this);
    force_agt = force_agent::type_id::create("force_agt", this);

    
    agt_rm_fifo = new("agt_rm_fifo",this);
    agt_sc_fifo = new("agt_sc_fifo",this);
    rm_sc_fifo = new("rm_sc_fifo",this);


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
    `uvm_info(get_name(), "connect phase ends", UVM_LOW);

endfunction

task env::main_phase(uvm_phase phase);
    super.main_phase(phase);
endtask
