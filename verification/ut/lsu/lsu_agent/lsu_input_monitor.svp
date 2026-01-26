class lsu_input_monitor extends uvm_monitor;

    virtual lsu_intf lsu_if;
    virtual tpu_intf tpu_if;
    uvm_analysis_port #(lsu_tr) ap;

    `uvm_component_utils(lsu_input_monitor)
    function new(string name = "lsu_input_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    //extern virtual task collect_matrix_in(ref lsu_tr tr);

endclass //lsu_input_monitor extends superClass

function void lsu_input_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual tpu_intf)::get(this, "", "tpu_if", tpu_if))begin
        `uvm_fatal("lsu_input_monitor", "mxu input_monitor fail to get tpu if")
    end
    ap = new("ap", this);
endfunction

task lsu_input_monitor::main_phase(uvm_phase phase);
    
    lsu_tr tr;
    lsu_tr tr_send;

    tr = lsu_tr::type_id::create("imon_lsu_tr");
    tr_send = lsu_tr::type_id::create("imon_lsu_tr_send");

    while (1) begin 

        //tr.clear();
        
        //this.collect_matrix_in(tr);
	//tr_send.deep_copy(tr);
        //ap.write(tr_send);

        `uvm_info("lsu_input_monitor", "write input to iap", UVM_NONE)
        `uvm_info("lsu_input_monitor", "matrix L", UVM_NONE)
        //tr_send.print_L();
        `uvm_info("lsu_input_monitor", "matrix_R", UVM_NONE)
        //tr_send.print_R();
	break;
    end

endtask

