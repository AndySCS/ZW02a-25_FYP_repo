class top_driver extends uvm_driver #(top_tr);
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
    extern virtual task main_phase(uvm_phase phase);
    extern virtual task send_matrix(top_tr tr);
    extern virtual function void final_phase(uvm_phase phase);

endclass //className extends superClass

function void top_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual top_intf)::get(this, "", "top_if", top_if))begin
        `uvm_fatal("top_driver", "top driver fail to get top if")
    end
endfunction

task top_driver::main_phase(uvm_phase phase);
    
    top_tr tr;
    //tr = new("tr");
    top_if.lsu_top_vld = 0;
    top_if.lsu_top_iram_vld = 0;
    top_if.lsu_top_wram_vld = 0;
    top_if.lsu_top_act_vld = 0;
    @(posedge top_if.rst_n); // wait till rstn is high

    while(1) begin
        seq_item_port.get_next_item(tr);
        send_cnt++;
        `uvm_info("top_driver", $sformatf("tr.matrix_Lx = %d", tr.matrix_Lx), UVM_MEDIUM) 
        `uvm_info("top_driver", $sformatf("tr.matrix_Ly = %d", tr.matrix_Ly), UVM_MEDIUM) 
        `uvm_info("top_driver", $sformatf("tr.matrix_Rx = %d", tr.matrix_Rx), UVM_MEDIUM) 
        `uvm_info("top_driver", $sformatf("tr.matrix_Ry = %d", tr.matrix_Ry), UVM_MEDIUM)
        `uvm_info("top_driver", $sformatf("tr.matrix_L"), UVM_MEDIUM)
        tr.print_L(); 
        `uvm_info("top_driver", $sformatf("tr.matrix_R"), UVM_MEDIUM)
        tr.print_R(); 
        send_matrix(tr);
        seq_item_port.item_done();
    end
        
endtask

task top_driver::send_matrix(top_tr tr);

    int matrix_sent_row = 0;
    int cur_row = 0;
    int iter_cnt = 0;
    bit[7:0] pop_data;
    int cycle_cnt = 0;
    bit send_matrix_needed = 0;

    while(1)begin
        @(negedge top_if.clk);
        if(top_if.top_lsu_rdy) begin
            top_if.lsu_top_vld = 1;
            top_if.lsu_top_clr = 1;
            @(negedge top_if.clk);
            top_if.lsu_top_vld = 0;
            top_if.lsu_top_clr = 0;
            @(negedge top_if.clk);
            break;
        end
    end

    `uvm_info("top_driver", "begin sending matrix", UVM_MEDIUM)

    while(1)begin
        send_matrix_needed = 0;
        top_if.lsu_top_iram_vld = 0;
        top_if.lsu_top_wram_vld = 0;
        top_if.lsu_top_iram_pld = 0;
        top_if.lsu_top_wram_pld = 0;
        for(int row = 0; row < tr.matrix_Lx; row++)begin
            if(cycle_cnt >= row && cycle_cnt < tr.matrix_Ly + row)begin
                top_if.lsu_top_wram_vld[row] = 1;
                pop_data = tr.matrix_L[row][cycle_cnt-row];
                top_if.lsu_top_wram_pld |= {120'b0, pop_data} << row*8;
                send_matrix_needed = 1;
            end
        end
        for(int col = 0; col < tr.matrix_Rx; col++)begin
            if(cycle_cnt >= col && cycle_cnt < tr.matrix_Ry + col)begin
                top_if.lsu_top_iram_vld[col] = 1;
                pop_data = tr.matrix_R[col][cycle_cnt-col];
                top_if.lsu_top_iram_pld |= {120'b0, pop_data} << col*8;
                send_matrix_needed = 1;
            end
        end
        cycle_cnt++;
        iter_cnt++;
        if(iter_cnt >= 500) `uvm_error("top_driver", "maxtrix send function have run over 500 times");
        if(!send_matrix_needed) break;
        @(negedge top_if.clk);
    end
    
    `uvm_info("top_driver", "end sending matrix", UVM_MEDIUM)

endtask

function void top_driver::final_phase(uvm_phase phase);
    super.final_phase(phase);
    `uvm_info("top_drv", $sformatf("enter fianl phase, top_drv send cnt is %d", send_cnt), UVM_LOW);
endfunction

