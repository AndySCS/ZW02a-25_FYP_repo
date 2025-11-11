class mxu_driver extends uvm_driver;
    /*
    this class is responsible for generating mxu stimulus to the dut
    */

    virtual mxu_intf mxu_if;

    `uvm_component_utils(mxu_driver)
    
    function new(string name = "mxu_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual task send_matrix(mxu_tr tr);

endclass //className extends superClass

function void mxu_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual mxu_intf)::get(this, "", "mxu_if", mxu_if))begin
        `uvm_fatal("mxu_driver", "mxu driver fail to get mxu if")
    end
endfunction

task mxu_driver::main_phase(uvm_phase phase);
    
    mxu_tr tr;
    tr = new("tr");
    send_matrix(tr);

endtask

task mxu_driver::send_matrix(mxu_tr tr);

    int matrix_sent_row = 0;
    int cur_row = 0;
    int iter_cnt = 0;
    bit[7:0] pop_data;
    int cycle_cnt = 0;
    bit send_matrix_needed = 0;

    while(1)begin
        send_matrix_needed = 0;
        for(int row = 0; row < tr.matrix_Lx; row++)begin
            if(cycle_cnt >= row && cycle_cnt < tr.matrix_Ly + row)begin
                mxu_if.lsu_mxu_iram_vld[row] = 1;
                pop_data = tr.matrix_L[row][cycle_cnt-row];
                mxu_if.lsu_mxu_iram_pld |= {{120{pop_data[7]}}, pop_data} << row*8;
                send_matrix_needed = 1;
            end
        end
        for(int col = 0; col < tr.matrix_Rx; col++)begin
            if(cycle_cnt >= col && cycle_cnt < tr.matrix_Ry + col)begin
                mxu_if.lsu_mxu_wram_vld[col] = 1;
                pop_data = tr.matrix_R[col][cycle_cnt-col];
                mxu_if.lsu_mxu_wram_pld |= {{120{pop_data[7]}}, pop_data} << col*8;
                send_matrix_needed = 1;
            end
        end
        cycle_cnt++;
        iter_cnt++;
        if(iter_cnt >= 500) `uvm_error("mxu_driver", "maxtrix send function have run over 500 times");
        if(send_matrix_needed) break;
        @(posedge mxu_if.clk);
    end

endtask

    /*
    while(matrix_sent_row != 16)begin
        matrix_sent_row = 0;
        @(posedge mxu_if.clk)
        for(int i = 0; i<16; i++)begin
            if((tr.matrix_L[i].q.size() == 0) & (tr.matrix_R[i].q.size() == 0))begin
                matrix_sent_row++;
            end
            if(i >= cur_row)begin
                mxu_if.lsu_mxu_iram_vld[i] = (tr.matrix_L[i].q.size() > 0);
                pop_data = tr.matrix_L[i].q.pop_front();
                mxu_if.lsu_mxu_iram_pld |= {{120{pop_data[7]}}, pop_data} << i*8;
                mxu_if.lsu_mxu_wram_vld[i] = (tr.matrix_R[i].q.size() > 0);
                pop_data = tr.matrix_L[i].q.pop_front();
                mxu_if.lsu_mxu_wram_pld |= {{120{pop_data[7]}}, pop_data} <<  i*8;
            end
        end
        cur_row++;
        iter_cnt++;
        if(iter_cnt >= 500)begin
            `uvm_error("mxu_driver", "maxtrix send function have run over 500 times")
        end
    end
    */
