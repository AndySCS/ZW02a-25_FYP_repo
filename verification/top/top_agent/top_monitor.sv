class top_monitor extends uvm_monitor;

    virtual top_intf top_if;
    uvm_analysis_port #(top_tr) ap;

    `uvm_component_utils(top_monitor)
    function new(string name = "top_input_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
    extern virtual task collect_matrix_in(ref top_tr tr);

endclass //top_input_monitor extends superClass

function void top_input_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual top_intf)::get(this, "", "top_if", top_if))begin
        `uvm_fatal("top_input_monitor", "top input_monitor fail to get top if")
    end
    ap = new("ap", this);
endfunction

task top_input_monitor::main_phase(uvm_phase phase);
    
    top_tr tr;
   // top_tr tr_send;

    tr = top_tr::type_id::create("imon_top_tr");
//    tr_send = top_tr::type_id::create("imon_top_tr_send");

    while (1) begin 

        while(1)begin
            @negedge(top_if.clk)
            if(top_if.start_vld) begin
                tr.start_addr = top_if.start_addr;
                break;
            end
        end
        
        ap.write(tr);

    end

endtask

