class lsu_output_monitor extends uvm_monitor;

    virtual lsu_intf lsu_if;
    uvm_analysis_port #(lsu_tr) ap;

    `uvm_component_utils(lsu_output_monitor)
    function new(string name = "lsu_output_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
    extern virtual task collect_matrix_out(lsu_tr tr);

endclass //lsu_output_monitor extends superClass

function void lsu_output_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual lsu_intf)::get(this, "", "lsu_if", lsu_if))begin
        `uvm_fatal("lsu_output_monitor", "lsu output_monitor fail to get lsu if")
    end
    ap = new("ap", this);
endfunction

task lsu_output_monitor::main_phase(uvm_phase phase);
    lsu_tr tr;

    tr = new("tr");

    while (1) begin 
        this.collect_matrix_out(tr);
        ap.write(tr);
    end

endtask

task lsu_output_monitor::collect_matrix_out(lsu_tr tr);

    while(1)begin
        @(posedge lsu_if.clk);
        if(lsu_if.lsu_lsu_vld) break;
    end

    //tr.clear_result();
    //@(posedge lsu_if.clk);
    //wait(lsu_if.lsu_lsu_data_rdy) 
endtask
