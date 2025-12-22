class mxu_input_monitor extends uvm_monitor;

    virtual mxu_intf mxu_if;
    uvm_analysis_port #(mxu_tr) ap;

    `uvm_component_utils(mxu_input_monitor)
    function new(string name = "mxu_input_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
    extern virtual task collect_matrix_in(ref mxu_tr tr);

endclass //mxu_input_monitor extends superClass

function void mxu_input_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual mxu_intf)::get(this, "", "mxu_if", mxu_if))begin
        `uvm_fatal("mxu_input_monitor", "mxu input_monitor fail to get mxu if")
    end
    ap = new("ap", this);
endfunction

task mxu_input_monitor::main_phase(uvm_phase phase);
    mxu_tr tr;

    tr = new("tr");

    while (1) begin 
        this.collect_matrix_in(tr);
        ap.write(tr);
        `uvm_info("mxu_input_monitor", "write input to iap", UVM_NONE)
    end

endtask

task mxu_input_monitor::collect_matrix_in(ref mxu_tr tr);

    /*
    collect data input from lsu to mxu and store in tr
    */
    
    int iram_array [16] = '{default:0}; //position of column in each row
    int wram_array [16] = '{default:0};
    bit [15:0][7:0] iram_data_tmp;
    bit [15:0][7:0] wram_data_tmp;
    bit collect_begin;
    bit has_vld;

    `uvm_info("mxu_input_monitor", "enter collect matrix", UVM_NONE)

    while(1)begin
        @(posedge mxu_if.clk);
        if(mxu_if.lsu_mxu_vld & mxu_if.mxu_lsu_rdy) break;
    end


    while(1)begin

        @(posedge mxu_if.clk);

        has_vld = 0;

        iram_data_tmp = mxu_if.lsu_mxu_iram_pld;
        wram_data_tmp = mxu_if.lsu_mxu_wram_pld;

        for(int i = 0;i < 16;i++)begin
            if(mxu_if.lsu_mxu_wram_vld[i])begin
                collect_begin = 1;
                tr.matrix_L[i][wram_array[i]]  = {{32-8{wram_data_tmp[i][7]}},wram_data_tmp[i]};
                wram_array[i]++;
                has_vld = 1;
            end
            if(mxu_if.lsu_mxu_iram_vld[i])begin
                collect_begin = 1;
                tr.matrix_R[i][iram_array[i]]  = {{32-8{iram_data_tmp[i][7]}},iram_data_tmp[i]};
                iram_array[i]++;
                has_vld = 1;
            end
        end

        if(~collect_begin) continue;
        else if (~has_vld) break;

    end     
 
    //for(int i = 0;i < 16;i++)begin
    //    `uvm_info("mxu_input_monitor", $sformatf("iram_array[%d] = %d", i, iram_array[i]), UVM_NONE)
    //end
    
    `uvm_info("mxu_input_monitor", "leave collect matrix", UVM_NONE)

endtask     
