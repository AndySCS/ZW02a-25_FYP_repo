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
    extern function lsu_tr mm_cal(lsu_tr tr);
    extern function lsu_tr store_check(lsu_tr tr);

endclass //className extends superClass

function void lsu_rm::build_phase(uvm_phase phase);
    super.build_phase(phase);
    port = new("port", this);
    ap = new("ap", this);
endfunction

task lsu_rm::main_phase(uvm_phase phase);
    
    lsu_tr tr;
    super.main_phase(phase);

    while(1)begin
        port.get(tr);
	//this.mm_inst(tr);
        this.mm_cal(tr);
        ap.write(tr);
    end

endtask

function lsu_tr lsu_rm::store_check(lsu_tr tr);
	
endfunction


function lsu_tr lsu_rm::mm_cal(lsu_tr tr);
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
    for(int i =0; i < 16;i++)begin
        for(int j = 0; j < 16; j++)begin
            tr.matrix_result[i][j] = 0;
            for(int k = 0; k < 16; k++)begin
                tr.matrix_result[i][j] += tr.matrix_L[i][k] * tr.matrix_R[j][k];
            end
        end
    end
endfunction



function lsu_tr lsu_rm::mm_inst(lsu_tr tr);
    /*
        get the data from input ram and weight ram
        accounding to the row, col, dir.
        each cycle pass the data to the lsu 
    
        input i know
        idu_lsu_iram_start_addr
        idu_lsu_iram_col_dir
        idu_lsu_iram_row_dir
        idu_lsu_iram_col_len
        idu_lsu_iram_row_len
        idu_lsu_wram_start_addr
        idu_lsu_wram_col_dir
        idu_lsu_wram_row_dir
        idu_lsu_wram_col_len
        idu_lsu_wram_row_len

        output i need
        lsu_lsu_int8_row[i]_data

        //////////////////////////////////////////////////////////////////////

        Assume we have a 4*4 matrix
        we only care baout wram first
        [0,0][0,1][0,2][0,3]      
        [1,0][1,1][1,2][1,3] 
        [2,0][2,1][2,2][2,3]
        [3,0][3,1][3,2][3,3]

                C0      C1      C2      C3     C4      C5      C6      C7
        row0  [0,0]   [0,1]   [0,2]   [0,3]     x       x       x       x
        row1    x     [1,0]   [1,1]   [1,2]   [1,3]
        row2    x       x     [2,0]   [2,1]   [2,2]   [2,3] 
        row3    x       x       x     [3,0]   [3,1]   [3,2]   [3,3] 
        row4    x

        Same idea for 
        we only care baout wram first
        [0,0][0,1][0,2]      
        [1,0][1,1][1,2]  

                C0      C1      C2      C3     C4      C5      C6      C7
        row0  [0,0]   [0,1]   [0,2]     x       x       x       x
        row1    x     [1,0]   [1,1]   [1,2]   
        row2    x       x       x               
        row3    x       x             
        row4    x


        To conlude,
        Total cycle need is R*C-1
        Each element will be cycle_count = row+col
        three loop is needed for this function
        1st : count cycle
        2nd : count row
        3rd : count col
    */
    tr.matrix_result[0][0] = 'b0;
    //For WRAM 
    //for(int i = 0; i < (wram_row_len+wram_col_len-1); i++)begin
        //for(int j = 0; j <= wram_row_len; j++)begin
            //wram_target_row = (idu_lsu_wram_start_addr[11:4]+j);
            //wram_ram_data = tr.wram_ram[idu_lsu_wram_start_addr[wram_target_row]];
            //for(int k = 0; k < wram_col_len; k++) begin
                //wram_target_col = (idu_lsu_wram_start_addr[3:0]+k);
                //if(j<=i && k<=i && i==j+k)begin
                    //tr.matrix_row_in[j] = wram_ram_data[wram_target_col];
                //end
            //end
        //end 
    //end

    //// For IRAM
    //for(int a = 0; a < (iram_row_len+iram_col_len-1); i++)begin
        //for(int b = 0; b <= iram_row_len; b++)begin
            //wram_target_row = (idu_lsu_wram_start_addr[11:4]+b);
            //wram_ram_data = tr.wram_ram[idu_lsu_wram_start_addr[wram_target_row]];
            //for(int c = 0; c < iram_col_len; c++) begin
                //wram_target_col = (idu_lsu_wram_start_addr[3:0]+c);
                //if(b<=a && c<=a && a==b+c)begin
                    //tr.matrix_row_in[j] = wram_ram_data[wram_target_col];
                //end
            //end
        //end 
    //end

endfunction
