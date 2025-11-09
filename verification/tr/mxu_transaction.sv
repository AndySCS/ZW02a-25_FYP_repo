class mxu_tr extends uvm_sequence_item;

    
 //   typedef int queue_t[$];

    int matrix_L[16][$];
    int matrix_R[16][$];
    int matrix_result[16][$];

    function new(string name = "mxu_tr");
       super.new(name);
    endfunction //new()

    `uvm_object_utils(mxu_tr)
    
    extern function void init_matrix();
    extern function void clear_result();

endclass //mxu_tr extends superClass

function void mxu_tr::init_matrix();
    
    for(int i = 0; i < 16; i++)begin
        for(int j = 0; j < 16; j++)begin
            this.matrix_R[i].push_back(i);
            this.matrix_L[i].push_back(i);
        end
    end

endfunction

function void mxu_tr::clear_result();
    
    for(int i = 0; i < 16; i++)begin
        this.matrix_result[i].delete();
        for(int j = 0; j < 16; j++)begin
            this.matrix_R[i].push_back(0);
        end
    end

endfunction
