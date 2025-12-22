class mxu_rm extends uvm_component;

    uvm_blocking_get_port #(mxu_tr) port;
    uvm_analysis_port #(mxu_tr) ap;

    function new(string name = "mxu_rm", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()

    `uvm_component_utils(mxu_rm)

    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

    extern function mxu_tr mm_cal(ref mxu_tr tr);

endclass //className extends superClass

function void mxu_rm::build_phase(uvm_phase phase);
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
	//tr.print_result();
        ap.write(tr);
    end

endtask

function mxu_tr mxu_rm::mm_cal(ref mxu_tr tr);
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
    //apply actual calculation
    `uvm_info("mxu_rm", "print_L", UVM_NONE)
    tr.print_L();
    `uvm_info("mxu_rm", "print_R", UVM_NONE)
    tr.print_R();
    for(int i =0; i < 16;i++)begin
        for(int j = 0; j < 16; j++)begin
            //tr.matrix_result[i][j] = 0;
            for(int k = 0; k < 16; k++)begin
                tr.matrix_result[i][j] += tr.matrix_L[i][k] * tr.matrix_R[j][k];
		if(tr.matrix_result[i][j] > 32767)  tr.matrix_result[i][j] = 32767;
		if(tr.matrix_result[i][j] < -32768) tr.matrix_result[i][j] = -32768;
            end
        end
    end


endfunction
