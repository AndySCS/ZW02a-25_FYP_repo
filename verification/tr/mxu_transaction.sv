class mxu_tr extends uvm_sequence_item;

    // shape of the input matrix
    //matrix_L = w
    //matrix_R = i
    rand int matrix_Lx;
    rand int matrix_Ly;
    rand int matrix_Rx;
    rand int matrix_Ry;
    
    constraint c_matrix_xy {
        matrix_Lx inside {[1:17]};
        matrix_Ly inside {[1:17]};
        matrix_Rx inside {[1:17]};
        matrix_Ry inside {[1:17]};
        //matrix_Lx == 1;
        //matrix_Ly == 5;//inside {[5]};
        //matrix_Rx == 5;//inside {[5]};
        //matrix_Ry == 5;//inside {[5]};
        matrix_Ly == matrix_Ry;
    }

    rand int matrix_L[15:0][15:0]; //weight matrix
    rand int matrix_R[15:0][15:0]; //input matrix

    int      matrix_result_int8[15:0][15:0];
    int      matrix_result_int16[15:0][15:0];

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
    extern function void clear();
    extern function void deep_copy(ref mxu_tr tr);

endclass //mxu_tr extends superClass

function void mxu_tr::init_matrix();

    this.matrix_Lx = 16;
    this.matrix_Ly = 16;
    this.matrix_Rx = 16;
    this.matrix_Ry = 16;

    this.clear();

endfunction

function bit mxu_tr::compare(mxu_tr tr);
    
    bit match = 1;
    bit break_flg = 0;;

    for(int i = 0; i < 16;i++)begin
        for(int j = 0; j < 16; j++)begin
            if(this.matrix_result_int8[i][j] != tr.matrix_result_int8[i][j]) begin
                match = 0;
	        $display("matrix_result_int8[%4d][%4d] unmatch", i, j);
                break_flg = 1;
                break;
            end
            if(this.matrix_result_int16[i][j] != tr.matrix_result_int16[i][j]) begin
	        $display("matrix_result_int16[%4d][%4d] unmatch", i, j);
                match = 0;
                break_flg = 1;
                break;
            end
        end
        if(break_flg) break;
    end

    return match;

endfunction

function void mxu_tr::print_result(); 

    for (int i = 0; i < 16; i++) begin
        string line = "\n";
        for (int j = 0; j < 16; j++) begin
            line = {line, $sformatf("[%6d]", this.matrix_result_int8[i][j])};
        end
        `uvm_info("MATRIX_RESULT_INT8", line, UVM_NONE)
    end
    for (int i = 0; i < 16; i++) begin
        string line = "\n";
        for (int j = 0; j < 16; j++) begin
            line = {line, $sformatf("[%6d]", this.matrix_result_int16[i][j])};
        end
        `uvm_info("MATRIX_RESULT_INT16", line, UVM_NONE)
    end

endfunction

function void mxu_tr::print_L(); 
    
    for (int i = 0; i < 16; i++) begin
        string line = "\n";
        for (int j = 0; j < 16; j++) begin
            line = {line, $sformatf("[%6d]", this.matrix_L[i][j])};
        end
        `uvm_info("MATRIX_L", line, UVM_HIGH)
    end

endfunction

function void mxu_tr::print_R(); 

    for (int i = 0; i < 16; i++) begin
        string line = "\n";
        for (int j = 0; j < 16; j++) begin
            line = {line, $sformatf("[%6d]", this.matrix_R[i][j])};
        end
        `uvm_info("MATRIX_R", line, UVM_HIGH)
    end

endfunction


function void mxu_tr::clear();
    
    foreach (this.matrix_L[i, j]) begin
        this.matrix_L[i][j] = 0;
        this.matrix_R[i][j] = 0;
        this.matrix_result_int8[i][j] = 0;
        this.matrix_result_int16[i][j] = 0;
    end

endfunction

function void mxu_tr::deep_copy(ref mxu_tr tr);
 
    foreach (this.matrix_L[i, j]) begin
        this.matrix_L[i][j] = tr.matrix_L[i][j];
    end

    foreach (this.matrix_R[i, j]) begin
        this.matrix_R[i][j] = tr.matrix_R[i][j];
    end

    foreach (this.matrix_result_int8[i, j]) begin
        this.matrix_result_int8[i][j] = tr.matrix_result_int8[i][j];
        this.matrix_result_int16[i][j] = tr.matrix_result_int16[i][j];
    end

endfunction

