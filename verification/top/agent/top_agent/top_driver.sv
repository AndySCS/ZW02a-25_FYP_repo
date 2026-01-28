class top_driver extends uvm_driver #(model_output_transaction);
    /*
    this class is responsible for generating top stimulus to the dut
    */

    virtual top_intf top_if;
    int send_cnt = 0;

    `uvm_component_utils(top_driver)
    
    function new(string name = "top_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task reset_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual function void final_phase(uvm_phase phase);

endclass //className extends superClass

function void top_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual top_intf)::get(this, "", "top_if", top_if))begin
        `uvm_fatal("top_driver", "top driver fail to get top if")
    end
endfunction

task top_driver::reset_phase(uvm_phase phase);

    super.reset_phase(phase);
    phase.raise_objection(phase);
    `uvm_info(get_name(), "reset phase begin", UVM_LOW);
    top_if.rst_n <= 0;
    top_if.start_vld <= 0;
    repeat ($urandom_range(100, 1)) @(posedge top_if.clk);
    top_if.rst_n <= 1;
    `uvm_info(get_name(), "reset phase ends", UVM_LOW);
    phase.drop_objection(phase);
        
endtask

task top_driver::main_phase(uvm_phase phase);
    model_output_transaction tr;
    
    super.main_phase(phase);
    while(1) begin
        seq_item_port.get_next_item(tr);
        send_cnt++;
        while(1)begin
            @(posedge top_if.clk);
            if(top_if.wfi)begin
                top_if.start_vld <= 1;
                top_if.start_addr <= 0;
                @(posedge top_if.clk);
                top_if.start_vld <= 0;
                seq_item_port.item_done();
		break;
            end
        end
    end
        
endtask

function void top_driver::final_phase(uvm_phase phase);
    super.final_phase(phase);
    `uvm_info("top_drv", $sformatf("enter fianl phase, top_drv send cnt is %d", send_cnt), UVM_LOW);
endfunction

