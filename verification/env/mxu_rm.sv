class mxu_rm extends uvm_model;

    uvm_blocking_get_port #(mxu_tr) port;
    uvm_analysis_port #(mxu_tr) ap;

    function new(string name = "mxu_rm", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()

    `uvm_component_utils(mxu_rm)

    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

    extern function mxu_tr mm_cal(mxu_tr tr);

endclass //className extends superClass

function void mxu_model::build_phase(uvm_phase phase);
    super.build_phase(phase);
    port = new("port", this);
    ap = new("ap", this);
endfunction

task mxu_model::main_phase(uvm_phase phase);
    
    mxu_tr tr;
    super.main_phase(phase);

    while(1)begin
        port.get(tr);
        this.mm_cal(tr);
        ap.write(tr);
    end

endtask

function mxu_tr mm_cal(mxu_tr tr);
    /*
        matrix_L x matrix_R = matrix_result
        matrix_result_size = L_col*R_row
        matrix_L:
        ----------
        [][][][][]
        ----------
        [][][][][]
        ----------
        ...
        matrix_R:
        |[]|[]|[]|[]|
        |[]|[]|[]|[]|
        |[]|[]|[]|[]|
        ...
    */
    //init matrix
    for(int i = 0;i < 16;i++)begin
        for(int j = 0; j < 16; j++)begin
            tr.matrix_result[i].push_back(0);
        end
    end
    //apply actual calculation
    for (int row = 0; row < tr.matrix_L.size(); row++) begin
        if(!tr.matrix_L[row].size()) break; // done cal
        for(int col = 0;col < tr.matrix_L[row].size(); col++)begin
            for(int i = 0;i < tr.maxtrix_L[row].size(); i++)begin
                tr.matrix_result[row][col] += tr.maxtrix_L[row][i]*tr.maxtrix_R[col][i];
                // clamp result to int16
                if(tr.matrix_result[row][col] > 15) tr.matrix_result[row][col] = 15; 
                if(tr.matrix_result[row][col] < 0) tr.matrix_result[row][col] = 0;
            end
        end
    end


endfunction