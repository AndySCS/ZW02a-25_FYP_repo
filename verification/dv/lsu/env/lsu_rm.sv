class lsu_rm extends uvm_component;

    uvm_blocking_get_port #(lsu_tr) port;
    uvm_analysis_port #(lsu_tr) ap;

    function new(string name = "lsu_rm", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()

    `uvm_component_utils(lsu_rm)

    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

    extern function lsu_tr mm_inst(lsu_tr tr);
    //extern function mxu_tr mm_cal(mxu_tr tr);

endclass //className extends superClass

function void lsu_rm::build_phase(uvm_phase phase);
    super.build_phase(phase);
    port = new("port", this);
    ap = new("ap", this);
endfunction

task mxu_rm::main_phase(uvm_phase phase);
    
    mxu_tr tr;
    super.main_phase(phase);

    while(1)begin
        port.get(tr);
        this.mm_cal(tr);
        ap.write(tr);
    end

endtask

//function mxu_tr mxu_rm::mm_cal(mxu_tr tr);
//    /*
//        matrix_L x matrix_R = matrix_result
//        matrix_result_size = L_col*R_row
//        matrix_L:
//        ----------
//        [][][][][]
//        ----------
//        [][][][][]
//        ----------
//        ...
//        matrix_R:
//        |[]|[]|[]|[]|
//        |[]|[]|[]|[]|
//        |[]|[]|[]|[]|
//        ...
//    */
//    //apply actual calculation
//    for(int i =0; i < 16;i++)begin
//        for(int j = 0; j < 16; j++)begin
//            tr.matrix_result[i][j] = 0;
//            for(int k = 0; k < 16; k++)begin
//                tr.matrix_result[i][j] += tr.matrix_L[i][k] * tr.matrix_R[j][k];
//            end
//        end
//    end
//endfunction


function mxu_tr mxu_rm::mm_inst(lsu_tr tr);
    /*
        get the data from input ram and weight ram
        accounding to the row, col, dir.
        each cycle pass the data to the mxu 
    */
    

endfunction