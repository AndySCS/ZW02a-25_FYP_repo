class mxu_tr extends uvm_sequence_item;

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

    function new(string name = "mxu_tr");
       super.new(name);
       this.init_matrix();
    endfunction //new()

    `uvm_object_utils(mxu_tr)
    
    extern function void init_matrix();
    extern function bit compare(mxu_tr tr);
    //extern function void clear_result();

endclass //mxu_tr extends superClass

function void mxu_tr::init_matrix();
    
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
        end
    end

endfunction

function bit mxu_tr::compare(mxu_tr tr);
    
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
