class mxu_driver extends uvm_driver;
    /*
    this class is responsible for generating mxu stimulus to the dut
    */

    `uvm_component_utils(mxu_driver)
    
    function new(string name = "mxu_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    
    extern virtual task build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual task send_matrix(mxu_tr tr);

endclass //className extends superClass

task mxu_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual mxu_intf)::get(this, "", "mxu_if", mxu_if))begin
        `uvm_fatal("mxu_driver", "mxu driver fail to get mxu if")
    end
endtask

task mxu_driver::main_phase(uvm_phase phase);
    
    mxu_tr tr;
    tr = new("tr");
    send_matrix(tr);

endtask

task mxu_driver::send_matrix(mxu_tr tr);

    int matrix_sent_row = 0;
    int cur_row = 0;
    int iter_cnt = 0;

    while(matrix_sent_row != 16)begin
        matrix_sent_row = 0;
        @(posedge clk)
        for(int i = 0; i<16; i++)begin
            if((tr.matrix_L[i].size() == 0) & (tr.matrix_R[1].size() == 0))begin
                matrix_sent_row++;
            end
            if(i >= cur_row)begin
                mxu_if.row_vld[i] = (tr.matrix_L[i].size() > 0);
                mxu_if.row_data[i] = tr.matrix_L[i].pop_front();
                mxu_if.col_vld[i] = (tr.matrix_R[i].size() > 0);
                mxu_if.col_data[i] = tr.matrix_R[i].pop_front();
            end
        end
        cur_row++;
        iter_cnt++;
        if(iter_cnt >= 500)begin
            `uvm_error("mxu_driver", "maxtrix send function have run over 500 times")
        end
    end

endtask
