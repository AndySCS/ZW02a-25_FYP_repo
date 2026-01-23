class axi_wr_monitor extends uvm_monitor;

    virtual axi_wr_intf axi_wr_if;
    uvm_analysis_port #(model_output_transaction) ap;

    `uvm_component_utils(axi_wr_monitor)
    function new(string name = "axi_wr_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
endclass //axi_wr_input_monitor extends superClass

function void axi_wr_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual axi_wr_intf)::get(this, "", "axi_wr_if", axi_wr_if))begin
        `uvm_fatal("axi_wr_monitor", "axi_wr_monitor fail to get axi_wr if")
    end
    ap = new("ap", this);
endfunction

task axi_wr_monitor::main_phase(uvm_phase phase);
    model_output_transaction tr;
    int wdata_len;
    int alloc_ptr;
    int output_num = 10;

    super.main_phase(phase);   
    
    while(1)begin
        @(posedge axi_wr_if.clk);
        if(axi_wr_if.AWVALID & axi_wr_if.AWREADY)begin
            tr = new();
            wdata_len = axi_wr_if.AWLEN + 1;
        end
        if(axi_wr_if.WVALID & axi_wr_if.WREADY)begin
            tr.model_output[alloc_ptr] = axi_wr_if.WDATA;
            output_num -= wdata_len;
            alloc_ptr += wdata_len;
            if(output_num == 0) ap.write(tr);
        end
    end

endtask
