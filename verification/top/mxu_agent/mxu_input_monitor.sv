class top_input_monitor extends uvm_monitor;

    virtual top_intf top_if;
    uvm_analysis_port #(top_tr) ap;

    `uvm_component_utils(top_input_monitor)
    function new(string name = "top_input_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
    extern virtual task collect_matrix_in(ref top_tr tr);

endclass //top_input_monitor extends superClass

function void top_input_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual top_intf)::get(this, "", "top_if", top_if))begin
        `uvm_fatal("top_input_monitor", "top input_monitor fail to get top if")
    end
    ap = new("ap", this);
endfunction

task top_input_monitor::main_phase(uvm_phase phase);
    
    top_tr tr;
    top_tr tr_send;

    tr = top_tr::type_id::create("imon_top_tr");
    tr_send = top_tr::type_id::create("imon_top_tr_send");

    while (1) begin 

        tr.clear();
        
        this.collect_matrix_in(tr);
	tr_send.deep_copy(tr);
        ap.write(tr_send);

        `uvm_info("top_input_monitor", "write input to iap", UVM_MEDIUM)
        `uvm_info("top_input_monitor", "matrix L", UVM_MEDIUM)
        tr_send.print_L();
        `uvm_info("top_input_monitor", "matrix_R", UVM_MEDIUM)
        tr_send.print_R();
    end

endtask

task top_input_monitor::collect_matrix_in(ref top_tr tr);

    /*
    collect data input from lsu to top and store in tr
    */
    
    int iram_array [16] = '{default:0}; //position of column in each row
    int wram_array [16] = '{default:0};
    bit [15:0][7:0] iram_data_tmp;
    bit [15:0][7:0] wram_data_tmp;
    bit collect_begin;
    bit has_vld;


    while(1)begin
        @(posedge top_if.clk);
        if(top_if.lsu_top_vld & top_if.top_lsu_rdy) break;
    end

    `uvm_info("top_input_monitor", "enter collect matrix", UVM_MEDIUM)

    while(1)begin

        @(posedge top_if.clk);

        has_vld = 0;

        iram_data_tmp = top_if.lsu_top_iram_pld;
        wram_data_tmp = top_if.lsu_top_wram_pld;

        for(int i = 0;i < 16;i++)begin
            if(top_if.lsu_top_wram_vld[i])begin
                collect_begin = 1;
                tr.matrix_L[i][wram_array[i]]  = {{32-8{wram_data_tmp[i][7]}},wram_data_tmp[i]};
                wram_array[i]++;
                has_vld = 1;
            end
            if(top_if.lsu_top_iram_vld[i])begin
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
    //    `uvm_info("top_input_monitor", $sformatf("iram_array[%d] = %d", i, iram_array[i]), UVM_MEDIUM)
    //end
    
    `uvm_info("top_input_monitor", "leave collect matrix", UVM_MEDIUM)

endtask     
