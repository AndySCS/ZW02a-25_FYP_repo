class top_monitor extends uvm_monitor;

    virtual top_intf top_if;
    uvm_analysis_port #(model_output_transaction) ap;

    `uvm_component_utils(top_monitor)
    function new(string name = "top_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
endclass //top_input_monitor extends superClass

function void top_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual top_intf)::get(this, "", "top_if", top_if))begin
        `uvm_fatal(get_name(), "top input_monitor fail to get top if")
    end
    ap = new("ap", this);
endfunction

task top_monitor::main_phase(uvm_phase phase);
    
    model_output_transaction tr;
   // top_tr tr_send;

    tr = top_tr::type_id::create();
//    tr_send = top_tr::type_id::create("imon_top_tr_send");

    while (1) begin 

        while(1)begin
            @(posedge top_if.clk)
            if(top_if.start_vld) begin
                break;
            end
        end
        
        ap.write(tr);

    end

endtask

