class mxu_tr extends uvm_sequence_item;

    // shape of the input matrix
    //matrix_L = w
    //matrix_R = i
    rand int matrix_Lx;
    rand int matrix_Ly;
    rand int matrix_Rx;
    rand int matrix_Ry;
    
    constraint c_matrix_xy {
        matrix_Lx inside {[0:16]};
        matrix_Ly inside {[0:16]};
        matrix_Rx inside {[0:16]};
        matrix_Ry inside {[0:16]};
    }

    rand int matrix_L[15:0][15:0];
    rand int matrix_R[15:0][15:0];
    int      matrix_result[15:0][15:0];

    constraint c_matrix_L_values {
        foreach (matrix_L[i,j])
            matrix_L[i][j] inside {[-128:127]};
    }
    
    constraint c_matrix_R_values {
        foreach (matrix_R[i,j])
            matrix_R[i][j] inside {[-128:127]};
    }
    
    function new(string name = "mxu_tr");
       super.new(name);
       this.init_matrix();
    endfunction //new()

    `uvm_object_utils(mxu_tr)
    
    extern function void init_matrix();
    extern function bit compare(mxu_tr tr);
    extern function void print_result();
    extern function void print_L();
    extern function void print_R();
    //extern function void clear_result();

endclass //mxu_tr extends superClass

function void mxu_tr::init_matrix();

    this.matrix_Lx = 16;
    this.matrix_Ly = 16;
    this.matrix_Rx = 16;
    this.matrix_Ry = 16;

    foreach (this.matrix_L[i, j]) begin
        this.matrix_L[i][j] = 0;
    end

    foreach (this.matrix_R[i, j]) begin
        this.matrix_R[i][j] = 0;
    end

    foreach (this.matrix_result[i, j]) begin
        this.matrix_result[i][j] = 0;
    end

endfunction

function bit mxu_tr::compare(mxu_tr tr);
    
    bit match = 1;

    foreach (this.matrix_result[i, j]) begin
        if(this.matrix_result[i][j] != tr.matrix_result[i][j]) begin
            match = 0;
            break;
        end
    end

    return match;

endfunction

function void mxu_tr::print_result(); 

    foreach (this.matrix_result[i, j]) begin
		$write("[%d]", this.matrix_result[i][j]);
		if(j==15) $write("\n");
    end

endfunction

function void mxu_tr::print_L(); 

    foreach (this.matrix_result[i, j]) begin
		$write("[%d]", this.matrix_L[i][j]);
		if(j==15) $write("\n");
    end

endfunction

function void mxu_tr::print_R(); 

    foreach (this.matrix_result[i, j]) begin
		$write("[%d]", this.matrix_R[i][j]);
		if(j==15) $write("\n");
    end

endfunction

/*
function void mxu_tr::clear_result();
    
    for(int i = 0; i < 16; i++)begin
        this.matrix_result[i].q.delete();
        for(int j = 0; j < 16; j++)begin
            this.matrix_R[i].q.push_back(0);
        end
    end

endfunction
*/
