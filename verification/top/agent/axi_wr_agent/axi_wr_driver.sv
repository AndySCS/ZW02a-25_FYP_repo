class axi_wr_driver extends uvm_driver; 

    virtual axi_wr_intf axi_wr_if;
    axi_transaction axi_awr_q[$];
    axi_transaction axi_wr_resp_q[$];

    `uvm_component_utils(axi_wr_driver)
    
    function new(string name = "axi_wr_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task reset_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
    extern task axi_awr_recv();
    extern task axi_wr_recv();
    extern task axi_wr_resp();

endclass //className extends superClass

function void axi_wr_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual axi_wr_intf)::get(this, "", "axi_wr_if", axi_wr_if))begin
        `uvm_fatal("axi_wr_driver", "axi_wr driver fail to get axi_wr if")
    end
endfunction

task axi_wr_driver::reset_phase(uvm_phase phase); 
    super.reset_phase(phase);
    axi_wr_if.AWREADY   <= 1;
    axi_wr_if.WREADY    <= 0;
    axi_wr_if.BVALID    <= 0;
    axi_wr_if.BRESP     <= 0;
    axi_wr_if.BID       <= 0;
endtask

task axi_wr_driver::main_phase(uvm_phase phase); 
    super.main_phase(phase);
    fork
        axi_awr_recv();
        axi_wr_recv();
        axi_wr_resp();
    join
endtask

task axi_wr_driver::axi_awr_recv();
    axi_transaction axi_tr;

    while (1) begin
        @(posedge axi_wr_if.clk);
        if(axi_wr_if.AWREADY & axi_wr_if.AWVALID)begin
            axi_tr = axi_transaction::type_id::create();
            axi_tr.init_axi_tr(
                .AxID       (axi_wr_if.AWID),
                .AxADDR     (axi_wr_if.AWADDR),
                .AxLEN      (axi_wr_if.AWLEN),
                .AxSIZE     (axi_wr_if.AWSIZE),
                .AxBURST    (axi_wr_if.AWBURST),
                .AxREGION   (axi_wr_if.AWREGION)
            );
            axi_awr_q.push_back(axi_tr);
        end

        axi_wr_if.AWREADY = ((axi_awr_q.size() + axi_wr_resp_q.size()) < 16);
    end
endtask

task axi_wr_driver::axi_wr_recv();

    while (1) begin
        @(posedge axi_wr_if.clk);
        
        if(axi_awr_q.size() == 0) begin
            axi_wr_if.WREADY <= 0;
            continue;
        end
        
        if(axi_wr_if.WVALID & axi_wr_if.WREADY)begin
            axi_wr_if.WREADY = 0;
            axi_awr_q[0].AxLEN--;
            axi_awr_q[0].send_timer = $urandom_range(100);
        end
        
        if(axi_awr_q[0].send_timer == 0)begin
            axi_wr_if.WREADY = 1;
        end
        else begin
            axi_awr_q[0].send_timer--;
        end

        if(axi_awr_q[0].AxLEN[8])begin
            axi_wr_resp_q.push_back(axi_awr_q.pop_front());
            `uvm_info(get_name(),"pushed tr into axi_wr_resp_q", UVM_LOW);
        end
        
    end

endtask

task axi_wr_driver::axi_wr_resp();

    while (1) begin
        @(posedge axi_wr_if.clk);
        
        if(axi_wr_resp_q.size() == 0) begin
            axi_wr_if.BVALID <= 0;
            continue;
        end
        
        if(axi_wr_if.BVALID & axi_wr_if.BREADY)begin
            axi_wr_if.BVALID <= 0;
            axi_wr_resp_q.pop_front();
        end

        if(axi_wr_resp_q.size() == 0);
        else if(axi_wr_resp_q[0].send_timer == 0)begin
            `uvm_info(get_name(),"send axi bresp to tpu", UVM_LOW);
            axi_wr_if.BVALID <= 1;
            axi_wr_if.BRESP  <= 0;
            axi_wr_if.BID    <= axi_wr_resp_q[0].AxID;
        end
        else begin
            axi_wr_resp_q[0].send_timer--;
        end        

    end

endtask
