class lsu_tr extends uvm_sequence_item;

    // shape of the input matrix
    //matrix_L = w
    //matrix_R = i
    int matrix_Lx;
    int matrix_Ly;
    int matrix_Rx;
    int matrix_Ry;

    int matrix_L[15:0][15:0];
    int matrix_R[15:0][15:0];
    int matrix_result[15:0][15:0];
    bit [127:0] mxu_result_int8[15:0];
    string mxu_result_string;

    function new(string name = "lsu_tr");
       super.new(name);
       //this.init_matrix();
    endfunction //new()

    `uvm_object_utils(lsu_tr)
    
    extern function void init_matrix();
    extern function bit compare(lsu_tr tr);
    extern function void print_result();
    extern function void print_L();
    extern function void print_R();
    extern function void clear();
    extern function void deep_copy(ref lsu_tr tr);

endclass //lsu_tr extends superClass

function void lsu_tr::init_matrix();
    
    for(int i = 0; i < 16; i++)begin
        for(int j = 0; j < 16; j++)begin
            //FIXME: change to randome
            this.matrix_Lx = 16;
            this.matrix_Ly = 16;
            this.matrix_Rx = 16;
            this.matrix_Ry = 16;
            //FIXME: chamge to random
            this.matrix_R[i][j] = i;
            this.matrix_L[i][j] = i;
            this.matrix_result[i][j] = 0;
	    this.mxu_result_int8[i] = i;
        end
    end
    mxu_result_string = $sformatf("%0d", mxu_result_int8[4]);
    `uvm_info("test",mxu_result_string, UVM_NONE);
endfunction

function bit lsu_tr::compare(lsu_tr tr);
    
    bit match = 1;

    for(int i = 0; i < 16; i++)begin
        for(int j = 0; j < 16; j++)begin
            if(this.matrix_result[i][j] != tr.matrix_result[i][j]) begin
                match = 0;
                break;
            end
        end
        if(!match) break;
    end

    return match;

endfunction

function void lsu_tr::print_result();
    

    for(int i = 0; i < 16; i++)begin
        for(int j = 0; j < 16; j++)begin
		$write("[%d]", matrix_result[i][j]);
		if(j==15) $write("\n");
        end
    end

endfunction
function void lsu_tr::print_L(); 

    for(int i = 0; i < 16; i++)begin
        for(int j = 0; j < 16; j++)begin
	    $write("[%6d]", this.matrix_L[i][j]);
        end
	$write("\n");
    end

endfunction

function void lsu_tr::print_R(); 

    for(int i = 0; i < 16; i++)begin
        for(int j = 0; j < 16; j++)begin
	    $write("[%6d]", this.matrix_R[i][j]);
        end
	$write("\n");
    end

endfunction


function void lsu_tr::clear();
    
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

function void lsu_tr::deep_copy(ref lsu_tr tr);
 
    foreach (this.matrix_L[i, j]) begin
        this.matrix_L[i][j] = tr.matrix_L[i][j];
    end

    foreach (this.matrix_R[i, j]) begin
        this.matrix_R[i][j] = tr.matrix_R[i][j];
    end

    foreach (this.matrix_result[i, j]) begin
        this.matrix_result[i][j] = tr.matrix_result[i][j];
    end

endfunction

/*
function void lsu_tr::clear_result();
    
    for(int i = 0; i < 16; i++)begin
        this.matrix_result[i].q.delete();
        for(int j = 0; j < 16; j++)begin
            this.matrix_R[i].q.push_back(0);
        end
    end

endfunction
*/

