class mxu_input_monitor extends uvm_monitor;

    virtual mxu_intf mxu_if;
    uvm_analysis_port #(mxu_tr) ap;

    `uvm_component_utils(mxu_input_monitor)
    function new(string name = "mxu_input_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern virtual task build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
    extern virtual task collect_matrix_in(mxu_tr tr);

endclass //mxu_input_monitor extends superClass

task mxu_input_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual mxu_intf)::get(this, "", "mxu_if", mxu_if))begin
        `uvm_fatal("mxu_input_monitor", "mxu input_monitor fail to get mxu if")
    end
    ap = new("ap", this);
endtask

task mxu_input_monitor::main_phase(uvm_phase phase);
    mxu_tr tr;

    tr = new("tr");

    while (1) begin 
        this.collect_matrix_in(tr);
        ap.write(tr);
    end

endtask

task mxu_input_monitor::collect_matrix_in(mxu_tr tr);

    /*
    collect data input from lsu to mxu and store in tr
    */

    bit collect_begin;

    while(1)begin
        @(posedge mxu_if.clk);
        if(mxu_if.lsu_mxu_vld) break;
    end

    while(1)begin
        @(posedge mxu_if.clk);
        if((|mxu_if.lsu_mxu_iram_vld) | (mxu_if.lsu_mxu_wram_vld))begin
            collect_begin = 1;
        end
        else if(collect_begin)begin
            break;
        end
        else begin
            continue;
        end
        if(mxu_if.lsu_mxu_iram_vld[0]) tr.matrix_L[0].pushback(mxu_if.lsu_mxu_iram_pld[7:0]);
        if(mxu_if.lsu_mxu_iram_vld[1]) tr.matrix_L[1].pushback(mxu_if.lsu_mxu_iram_pld[15:8]);
        if(mxu_if.lsu_mxu_iram_vld[2]) tr.matrix_L[2].pushback(mxu_if.lsu_mxu_iram_pld[23:16]);
        if(mxu_if.lsu_mxu_iram_vld[3]) tr.matrix_L[3].pushback(mxu_if.lsu_mxu_iram_pld[31:24]);
        if(mxu_if.lsu_mxu_iram_vld[4]) tr.matrix_L[4].pushback(mxu_if.lsu_mxu_iram_pld[39:32]);
        if(mxu_if.lsu_mxu_iram_vld[5]) tr.matrix_L[5].pushback(mxu_if.lsu_mxu_iram_pld[47:40]);
        if(mxu_if.lsu_mxu_iram_vld[6]) tr.matrix_L[6].pushback(mxu_if.lsu_mxu_iram_pld[55:48]);
        if(mxu_if.lsu_mxu_iram_vld[7]) tr.matrix_L[7].pushback(mxu_if.lsu_mxu_iram_pld[63:56]);
        if(mxu_if.lsu_mxu_iram_vld[8]) tr.matrix_L[8].pushback(mxu_if.lsu_mxu_iram_pld[71:64]);
        if(mxu_if.lsu_mxu_iram_vld[9]) tr.matrix_L[9].pushback(mxu_if.lsu_mxu_iram_pld[79:72]);
        if(mxu_if.lsu_mxu_iram_vld[10]) tr.matrix_L[10].pushback(mxu_if.lsu_mxu_iram_pld[87:80]);
        if(mxu_if.lsu_mxu_iram_vld[11]) tr.matrix_L[11].pushback(mxu_if.lsu_mxu_iram_pld[95:88]);
        if(mxu_if.lsu_mxu_iram_vld[12]) tr.matrix_L[12].pushback(mxu_if.lsu_mxu_iram_pld[103:96]);
        if(mxu_if.lsu_mxu_iram_vld[13]) tr.matrix_L[13].pushback(mxu_if.lsu_mxu_iram_pld[111:104]);
        if(mxu_if.lsu_mxu_iram_vld[14]) tr.matrix_L[14].pushback(mxu_if.lsu_mxu_iram_pld[119:112]);
        if(mxu_if.lsu_mxu_iram_vld[15]) tr.matrix_L[15].pushback(mxu_if.lsu_mxu_iram_pld[127:120]);
        if(mxu_if.lsu_mxu_wram_vld[0]) tr.matrix_R[0].pushback(mxu_if.lsu_mxu_wram_pld[7:0]);
        if(mxu_if.lsu_mxu_wram_vld[1]) tr.matrix_R[1].pushback(mxu_if.lsu_mxu_wram_pld[15:8]);
        if(mxu_if.lsu_mxu_wram_vld[2]) tr.matrix_R[2].pushback(mxu_if.lsu_mxu_wram_pld[23:16]);
        if(mxu_if.lsu_mxu_wram_vld[3]) tr.matrix_R[3].pushback(mxu_if.lsu_mxu_wram_pld[31:24]);
        if(mxu_if.lsu_mxu_wram_vld[4]) tr.matrix_R[4].pushback(mxu_if.lsu_mxu_wram_pld[39:32]);
        if(mxu_if.lsu_mxu_wram_vld[5]) tr.matrix_R[5].pushback(mxu_if.lsu_mxu_wram_pld[47:40]);
        if(mxu_if.lsu_mxu_wram_vld[6]) tr.matrix_R[6].pushback(mxu_if.lsu_mxu_wram_pld[55:48]);
        if(mxu_if.lsu_mxu_wram_vld[7]) tr.matrix_R[7].pushback(mxu_if.lsu_mxu_wram_pld[63:56]);
        if(mxu_if.lsu_mxu_wram_vld[8]) tr.matrix_R[8].pushback(mxu_if.lsu_mxu_wram_pld[71:64]);
        if(mxu_if.lsu_mxu_wram_vld[9]) tr.matrix_R[9].pushback(mxu_if.lsu_mxu_wram_pld[79:72]);
        if(mxu_if.lsu_mxu_wram_vld[10]) tr.matrix_R[10].pushback(mxu_if.lsu_mxu_wram_pld[87:80]);
        if(mxu_if.lsu_mxu_wram_vld[11]) tr.matrix_R[11].pushback(mxu_if.lsu_mxu_wram_pld[95:88]);
        if(mxu_if.lsu_mxu_wram_vld[12]) tr.matrix_R[12].pushback(mxu_if.lsu_mxu_wram_pld[103:96]);
        if(mxu_if.lsu_mxu_wram_vld[13]) tr.matrix_R[13].pushback(mxu_if.lsu_mxu_wram_pld[111:104]);
        if(mxu_if.lsu_mxu_wram_vld[14]) tr.matrix_R[14].pushback(mxu_if.lsu_mxu_wram_pld[119:112]);
        if(mxu_if.lsu_mxu_wram_vld[15]) tr.matrix_R[15].pushback(mxu_if.lsu_mxu_wram_pld[127:120]);
    end         

endtask     