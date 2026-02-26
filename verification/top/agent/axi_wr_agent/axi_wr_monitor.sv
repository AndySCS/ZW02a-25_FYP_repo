class axi_wr_monitor extends uvm_monitor;

    virtual axi_wr_intf axi_wr_if;
    virtual top_intf top_if;

    int waddr;
    int wsize;
    int wdata_len;
    int wnum;
    int alloc_ptr;
    bit tc_clip = $test$plusargs("ffn_clip");

    uvm_analysis_port #(model_output_transaction) ap;
    uvm_analysis_port #(model_output_transaction) axi_wr_port;

    `uvm_component_utils(axi_wr_monitor)
    function new(string name = "axi_wr_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern function void mon_first_layer(model_output_transaction tr);
    extern function void mon_second_layer(model_output_transaction tr);
    
endclass //axi_wr_input_monitor extends superClass

function void axi_wr_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual axi_wr_intf)::get(this, "", "axi_wr_if", axi_wr_if))begin
        `uvm_fatal(get_name(), "axi_wr_monitor fail to get axi_wr if")
    end
    if(!uvm_config_db#(virtual top_intf)::get(this, "", "top_if", top_if))begin
        `uvm_fatal(get_name(), "axi_wr_monitor fail to get top_if")
    end
    ap = new("ap", this);
    axi_wr_port = new("axi_wr_port", this);
endfunction

task axi_wr_monitor::main_phase(uvm_phase phase);
    model_output_transaction tr;
    int wdata_len;
    int alloc_ptr;
    int output_num = 10;
    bit[1:0] mon_fsm;

    super.main_phase(phase);   
    
    while(1)begin
        @(posedge axi_wr_if.clk);
        if(top_if.start_vld) begin
            mon_fsm++;
            tr = new();
            if(mon_fsm == 2'b01 & tc_clip) wnum = 56;
            else if(mon_fsm == 2'b10 | ~tc_clip) wnum = 10;
        end
        if(mon_fsm == 2'b01)begin
            if($test$plusargs("ffn_clip")) mon_first_layer(tr);
            else mon_second_layer(tr);
        end
        else if(mon_fsm == 2'b10)begin
            mon_second_layer(tr);
        end
    end

endtask

function void axi_wr_monitor::mon_first_layer(model_output_transaction tr);
    if(axi_wr_if.AWVALID & axi_wr_if.AWREADY)begin
        waddr = axi_wr_if.AWADDR;
        wdata_len = axi_wr_if.AWLEN + 1;
        wsize = 1 << axi_wr_if.AWSIZE;
    end
    if(axi_wr_if.WVALID & axi_wr_if.WREADY)begin
        alloc_ptr = (waddr - 784)/2;
        tr.model_first_layer_output_int16[alloc_ptr] = axi_wr_if.WDATA;
        wnum--;
        waddr++;
        if(wnum == 0) begin
            ap.write(tr);
            axi_wr_port.write(tr);
        end
    end
endfunction

function void axi_wr_monitor::mon_second_layer(model_output_transaction tr);
    if(axi_wr_if.AWVALID & axi_wr_if.AWREADY)begin
        waddr = axi_wr_if.AWADDR;
        wdata_len = axi_wr_if.AWLEN + 1;
        wsize = 1 << axi_wr_if.AWSIZE;
    end
    if(axi_wr_if.WVALID & axi_wr_if.WREADY)begin
        alloc_ptr = (waddr - 50672)/2;
        tr.model_output_int16[alloc_ptr] = axi_wr_if.WDATA;
        `uvm_info(get_name(), $sformatf("received wdata, alloc_ptr = %0d, wdata = %0d", alloc_ptr, axi_wr_if.WDATA),UVM_NONE);
        wnum--;
        waddr++;
        if(wnum == 0) ap.write(tr);
    end
endfunction
