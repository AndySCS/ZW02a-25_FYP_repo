class axi_rd_driver extends uvm_driver; 

    virtual axi_rd_intf axi_rd_if;

    model_read_transaction model_rd_tr;
    axi_transaction axi_rd_req_q[$];

    `uvm_component_utils(axi_rd_driver)
    
    function new(string name = "axi_rd_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual task reset_phase(uvm_phase phase);

    extern task send_axi_read_recv();
    extern task send_axi_read_send();
    extern function void send_axi_read_send_tr(axi_transaction axi_tr);

    extern function void assign_data2bus(axi_transaction axi_tr);
    extern function bit[63:0] get_data(axi_transaction axi_tr);

endclass //className extends superClass

function void axi_rd_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    model_rd_tr = new();
    if(!uvm_config_db#(virtual axi_rd_intf)::get(this, "", "axi_rd_if", axi_rd_if))begin
        `uvm_fatal("axi_rd_driver", "axi_rd driver fail to get axi_rd if")
    end
endfunction

task axi_rd_driver::reset_phase(uvm_phase phase);
    super.reset_phase(phase); 
    axi_rd_if.RVALID    <= 0;
    axi_rd_if.ARREADY   <= 1;
    axi_rd_if.RID       <= 'hx; 
    axi_rd_if.RDATA     <= 'hx; 
    axi_rd_if.RRESP     <= 'hx; 
    axi_rd_if.RLAST     <= 'hx; 
endtask

task axi_rd_driver::main_phase(uvm_phase phase); 
    super.main_phase(phase);
    //init data
    fork
        send_axi_read_recv();
        send_axi_read_send();
    join
endtask

task axi_rd_driver::send_axi_read_recv();
    axi_transaction axi_rd_tr;
    axi_transaction repeated_q[$];

    while(1)begin
        @(posedge axi_rd_if.clk);
        repeated_q = axi_rd_req_q.find(item) with (item.AxID == axi_rd_if.ARID);
        if(repeated_q.size() > 0)begin
            `uvm_error(get_name(), $sformatf("repeated ARID is received, ARID = %d", axi_rd_if.ARID));
        end        

        if(axi_rd_if.ARVALID & axi_rd_if.ARREADY)begin
            axi_rd_tr = axi_transaction::type_id::create();
            axi_rd_tr.init_axi_tr(
                .AxID	     (axi_rd_if.ARID),
                .AxADDR	     (axi_rd_if.ARADDR),
                .AxLEN	     (axi_rd_if.ARLEN),
                .AxSIZE	     (axi_rd_if.ARSIZE),
                .AxBURST     (axi_rd_if.ARBURST),
                .AxREGION    (axi_rd_if.ARREGION)
            );
            axi_rd_req_q.push_back(axi_rd_tr);
        end        
        
        axi_rd_if.ARREADY = (axi_rd_req_q.size() < 16);

    end
endtask

task axi_rd_driver::send_axi_read_send();
    axi_transaction axi_rd_tr;
    bit is_sending;

    while(1)begin
        @(posedge axi_rd_if.clk);
        if(is_sending);
        else if(axi_rd_req_q.size() > 0)begin
            axi_rd_tr = axi_rd_req_q.pop_front();
            is_sending = 1;
        end

        if(!is_sending);
        else if(axi_rd_tr.send_timer >0) axi_rd_tr.send_timer--;
        else begin
            send_axi_read_send_tr(axi_rd_tr);
            is_sending = axi_rd_tr.AxLEN >= 0;
        end

    end
endtask

function void axi_rd_driver::send_axi_read_send_tr(axi_transaction axi_tr);

    if(axi_rd_if.RREADY & axi_rd_if.RVALID)begin
        axi_rd_if.RVALID = 0;
        axi_tr.AxLEN--;
        axi_tr.send_timer = $urandom_range(100);
        if(axi_tr.AxBURST == `AXI_WR_BURST_INCR)begin
            axi_tr.AxADDR += (1 << axi_tr.AxSIZE);
        end
    end
    
    if(axi_tr.AxLEN >= 0 && axi_tr.send_timer == 0) begin
        assign_data2bus(axi_tr);
    end

endfunction

function void axi_rd_driver::assign_data2bus(axi_transaction axi_tr);
    
    axi_rd_if.RVALID <= 1;
    axi_rd_if.RID    <= axi_tr.AxID;
    axi_rd_if.RDATA  <= get_data(axi_tr);
    axi_rd_if.RRESP  <= 0;
    axi_rd_if.RLAST  <= (axi_tr.AxLEN == 1);

endfunction

function bit[63:0] axi_rd_driver::get_data(axi_transaction axi_tr);

    bit[7:0][7:0] rdata_tmp;
    int arsize_convert;

    arsize_convert = 1 << axi_tr.AxSIZE;

    if(axi_tr.AxADDR < 1000)begin
        for(int i = 0; i < arsize_convert; i++)begin
            rdata_tmp[i] = model_rd_tr.img_array[axi_tr.AxADDR+i];
        end
    end
    else if (axi_tr.AxADDR < 45000) begin 
        for(int i = 0; i < arsize_convert; i++)begin
            rdata_tmp[i] = model_rd_tr.first_layer_weight[axi_tr.AxADDR-1000+i];
        end
    end
    else begin
        for(int i = 0; i < arsize_convert; i++)begin
            rdata_tmp[i] = model_rd_tr.second_layer_weight[axi_tr.AxADDR-45000+i];
        end
    end

    return rdata_tmp;

endfunction
