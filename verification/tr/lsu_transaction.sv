class lsu_tr extends uvm_sequence_item;

    // shape of the input matrix
    //matrix_L = w
    //matrix_R = i
    int matrix_Lx;
    int matrix_Ly;
    int matrix_Rx;
    int matrix_Ry;

    int oram_data[255:0][127:0];
    int iram_data[255:0][127:0];
    int wram_data[255:0][127:0];
    
    function new(string name = "lsu_tr");
       super.new(name);
       this.init_matrix();
       this.init_sram();
    endfunction //new()

    `uvm_object_utils(lsu_tr)
    
    extern function void init_matrix();
    extern function void init_sram();
    extern function bit compare(lsu_tr tr);
    extern function void clear_result();

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
        end
    end

endfunction
function void lsu_tr::init_sram();
    for(int i = 0; i < 256; i++)begin
        for(int j = 0; j < 128; j++)begin
            this.oram_data[i][j] = i;
            this.iram_data[i][j] = i;
            this.wram_data[i][j] = i;
        end
    end
endfunction

function bit lsu_tr::compare(lsu_tr tr);
    
    bit match = 1;

    for(int i = 0; i < 256; i++)begin
        for(int j = 0; j < 128; j++)begin
            if(this.oram_data[i][j] != tr.oram_data[i][j]) begin
                match = 0;
                break;
            end
        end
        if(!match) break;
    end

    return match;

endfunction

function void lsu_tr::print_result();
    

    for(int i = 0; i < 256; i++)begin
        for(int j = 0; j < 128; j++)begin
		$write("[%d]", oram_data[i][j]);
		if(j==15) $write("\n");
        end
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
