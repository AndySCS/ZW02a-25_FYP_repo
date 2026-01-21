/*
class lsu_input_monitor extends uvm_monitor;

    virtual lsu_intf lsu_if;
    uvm_analysis_port #(lsu_tr) ap;

    `uvm_component_utils(lsu_input_monitor)
    function new(string name = "lsu_input_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
    extern virtual task collect_matrix_in(lsu_tr tr);

endclass //lsu_input_monitor extends superClass

function void lsu_input_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual lsu_intf)::get(this, "", "lsu_if", lsu_if))begin
        `uvm_fatal("lsu_input_monitor", "mxu input_monitor fail to get mxu if")
    end
    ap = new("ap", this);
endfunction

task lsu_input_monitor::main_phase(uvm_phase phase);
    lsu_tr tr;

    tr = new("tr");

    while (1) begin 
        this.collect_matrix_in(tr);
        ap.write(tr);
        `uvm_info("lsu_input_monitor", "write input to iap", UVM_NONE)
    end

endtask

task lsu_input_monitor::collect_matrix_in(lsu_tr tr);

    
    collect data input from lsu to mxu and store in tr
    
    

    bit collect_begin;

    `uvm_info("lsu_input_monitor", "enter collect matrix", UVM_NONE)

    while(1)begin
        @(posedge lsu_if.clk);
        if(lsu_if.lsu_mxu_vld & lsu_if.mxu_lsu_rdy) break;
    end
    
    `uvm_info("lsu_input_monitor", "leave collect matrix", UVM_NONE)


    while(1)begin
        @(posedge lsu_if.clk);
        if((|lsu_if.lsu_mxu_iram_vld) | (lsu_if.lsu_mxu_wram_vld))begin
            collect_begin = 1;
        end
        else if(collect_begin)begin
            break;
        end
        else begin
            continue;
        end
        if(lsu_if.lsu_mxu_iram_vld[0]) tr.matrix_L[0].q.pushback(lsu_if.lsu_mxu_iram_pld[7:0]);
        if(lsu_if.lsu_mxu_iram_vld[1]) tr.matrix_L[1].q.pushback(lsu_if.lsu_mxu_iram_pld[15:8]);
        if(lsu_if.lsu_mxu_iram_vld[2]) tr.matrix_L[2].q.pushback(lsu_if.lsu_mxu_iram_pld[23:16]);
        if(lsu_if.lsu_mxu_iram_vld[3]) tr.matrix_L[3].q.pushback(lsu_if.lsu_mxu_iram_pld[31:24]);
        if(lsu_if.lsu_mxu_iram_vld[4]) tr.matrix_L[4].q.pushback(lsu_if.lsu_mxu_iram_pld[39:32]);
        if(lsu_if.lsu_mxu_iram_vld[5]) tr.matrix_L[5].q.pushback(lsu_if.lsu_mxu_iram_pld[47:40]);
        if(lsu_if.lsu_mxu_iram_vld[6]) tr.matrix_L[6].q.pushback(lsu_if.lsu_mxu_iram_pld[55:48]);
        if(lsu_if.lsu_mxu_iram_vld[7]) tr.matrix_L[7].q.pushback(lsu_if.lsu_mxu_iram_pld[63:56]);
        if(lsu_if.lsu_mxu_iram_vld[8]) tr.matrix_L[8].q.pushback(lsu_if.lsu_mxu_iram_pld[71:64]);
        if(lsu_if.lsu_mxu_iram_vld[9]) tr.matrix_L[9].q.pushback(lsu_if.lsu_mxu_iram_pld[79:72]);
        if(lsu_if.lsu_mxu_iram_vld[10]) tr.matrix_L[10].q.pushback(lsu_if.lsu_mxu_iram_pld[87:80]);
        if(lsu_if.lsu_mxu_iram_vld[11]) tr.matrix_L[11].q.pushback(lsu_if.lsu_mxu_iram_pld[95:88]);
        if(lsu_if.lsu_mxu_iram_vld[12]) tr.matrix_L[12].q.pushback(lsu_if.lsu_mxu_iram_pld[103:96]);
        if(lsu_if.lsu_mxu_iram_vld[13]) tr.matrix_L[13].q.pushback(lsu_if.lsu_mxu_iram_pld[111:104]);
        if(lsu_if.lsu_mxu_iram_vld[14]) tr.matrix_L[14].q.pushback(lsu_if.lsu_mxu_iram_pld[119:112]);
        if(lsu_if.lsu_mxu_iram_vld[15]) tr.matrix_L[15].q.pushback(lsu_if.lsu_mxu_iram_pld[127:120]);
        if(lsu_if.lsu_mxu_wram_vld[0]) tr.matrix_R[0].q.pushback(lsu_if.lsu_mxu_wram_pld[7:0]);
        if(lsu_if.lsu_mxu_wram_vld[1]) tr.matrix_R[1].q.pushback(lsu_if.lsu_mxu_wram_pld[15:8]);
        if(lsu_if.lsu_mxu_wram_vld[2]) tr.matrix_R[2].q.pushback(lsu_if.lsu_mxu_wram_pld[23:16]);
        if(lsu_if.lsu_mxu_wram_vld[3]) tr.matrix_R[3].q.pushback(lsu_if.lsu_mxu_wram_pld[31:24]);
        if(lsu_if.lsu_mxu_wram_vld[4]) tr.matrix_R[4].q.pushback(lsu_if.lsu_mxu_wram_pld[39:32]);
        if(lsu_if.lsu_mxu_wram_vld[5]) tr.matrix_R[5].q.pushback(lsu_if.lsu_mxu_wram_pld[47:40]);
        if(lsu_if.lsu_mxu_wram_vld[6]) tr.matrix_R[6].q.pushback(lsu_if.lsu_mxu_wram_pld[55:48]);
        if(lsu_if.lsu_mxu_wram_vld[7]) tr.matrix_R[7].q.pushback(lsu_if.lsu_mxu_wram_pld[63:56]);
        if(lsu_if.lsu_mxu_wram_vld[8]) tr.matrix_R[8].q.pushback(lsu_if.lsu_mxu_wram_pld[71:64]);
        if(lsu_if.lsu_mxu_wram_vld[9]) tr.matrix_R[9].q.pushback(lsu_if.lsu_mxu_wram_pld[79:72]);
        if(lsu_if.lsu_mxu_wram_vld[10]) tr.matrix_R[10].q.pushback(lsu_if.lsu_mxu_wram_pld[87:80]);
        if(lsu_if.lsu_mxu_wram_vld[11]) tr.matrix_R[11].q.pushback(lsu_if.lsu_mxu_wram_pld[95:88]);
        if(lsu_if.lsu_mxu_wram_vld[12]) tr.matrix_R[12].q.pushback(lsu_if.lsu_mxu_wram_pld[103:96]);
        if(lsu_if.lsu_mxu_wram_vld[13]) tr.matrix_R[13].q.pushback(lsu_if.lsu_mxu_wram_pld[111:104]);
        if(lsu_if.lsu_mxu_wram_vld[14]) tr.matrix_R[14].q.pushback(lsu_if.lsu_mxu_wram_pld[119:112]);
        if(lsu_if.lsu_mxu_wram_vld[15]) tr.matrix_R[15].q.pushback(lsu_if.lsu_mxu_wram_pld[127:120]);
    end      


endtask     
*/
class lsu_input_monitor extends uvm_monitor;

    virtual lsu_intf lsu_if;
    uvm_analysis_port #(lsu_tr) ap;

    `uvm_component_utils(lsu_input_monitor)
    function new(string name = "lsu_input_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
    extern virtual task collect_matrix_in(ref lsu_tr tr);

endclass //lsu_input_monitor extends superClass

function void lsu_input_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual lsu_intf)::get(this, "", "lsu_if", lsu_if))begin
        `uvm_fatal("lsu_input_monitor", "mxu input_monitor fail to get mxu if")
    end
    ap = new("ap", this);
endfunction

task lsu_input_monitor::main_phase(uvm_phase phase);
    
    lsu_tr tr;
    lsu_tr tr_send;

    tr = lsu_tr::type_id::create("imon_lsu_tr");
    tr_send = lsu_tr::type_id::create("imon_lsu_tr_send");

    while (1) begin 

        tr.clear();
        
        this.collect_matrix_in(tr);
	tr_send.deep_copy(tr);
        ap.write(tr_send);

        `uvm_info("lsu_input_monitor", "write input to iap", UVM_NONE)
        `uvm_info("lsu_input_monitor", "matrix L", UVM_NONE)
        tr_send.print_L();
        `uvm_info("lsu_input_monitor", "matrix_R", UVM_NONE)
        tr_send.print_R();
    end

endtask

task lsu_input_monitor::collect_matrix_in(ref lsu_tr tr);

    /*
    collect data input from lsu to mxu and store in tr
    */
    
    int iram_array [16] = '{default:0}; //position of column in each row
    int wram_array [16] = '{default:0};
    bit [15:0][7:0] iram_data_tmp;
    bit [15:0][7:0] wram_data_tmp;
    bit collect_begin;
    bit has_vld;


    while(1)begin
        @(posedge lsu_if.clk);
        if(lsu_if.lsu_mxu_vld & lsu_if.mxu_lsu_rdy) break;
    end

    `uvm_info("lsu_input_monitor", "enter collect matrix", UVM_NONE)

    while(1)begin

        @(posedge lsu_if.clk);

        has_vld = 0;

        iram_data_tmp = lsu_if.lsu_mxu_iram_pld;
        wram_data_tmp = lsu_if.lsu_mxu_wram_pld;

        for(int i = 0;i < 16;i++)begin
            if(lsu_if.lsu_mxu_wram_vld[i])begin
                collect_begin = 1;
                tr.matrix_L[i][wram_array[i]]  = {{32-8{wram_data_tmp[i][7]}},wram_data_tmp[i]};
                wram_array[i]++;
                has_vld = 1;
            end
            if(lsu_if.lsu_mxu_iram_vld[i])begin
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
    //    `uvm_info("lsu_input_monitor", $sformatf("iram_array[%d] = %d", i, iram_array[i]), UVM_NONE)
    //end
    
    `uvm_info("lsu_input_monitor", "leave collect matrix", UVM_NONE)

endtask     

