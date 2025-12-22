class lsu_input_monitor extends uvm_monitor;

    virtual lsu_intf lsu_if;
    uvm_analysis_port #(lsu_tr) ap;

    `uvm_component_utils(lsu_input_monitor)
    function new(string name = "lsu_input_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
    extern virtual task collect_matrix_in(lsu_tr tr);

endclass //lsu_input_monitor extends superClass

function void lsu_input_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual lsu_intf)::get(this, "", "lsu_if", lsu_if))begin
        `uvm_fatal("lsu_input_monitor", "lsu input_monitor fail to get lsu if")
    end
    ap = new("ap", this);
endfunction

task lsu_input_monitor::main_phase(uvm_phase phase);
    lsu_tr tr;

    tr = new("tr");

    while (1) begin 
        this.collect_matrix_in(tr);
        ap.write(tr);
        `uvm_info("lsu_input_monitor", "write input to iap", UVM_NONE)
    end

endtask

task lsu_input_monitor::collect_matrix_in(lsu_tr tr);

    /*
    collect data input from lsu to lsu and store in tr
    */
    

    bit collect_begin;

    `uvm_info("lsu_input_monitor", "enter collect matrix", UVM_NONE)

    while(1)begin
        @(posedge lsu_if.clk);
        if(lsu_if.idu_lsu_vld & lsu_if.lsu_idu_rdy) break;
    end
    
    `uvm_info("lsu_input_monitor", "leave collect matrix", UVM_NONE)

endtask     
