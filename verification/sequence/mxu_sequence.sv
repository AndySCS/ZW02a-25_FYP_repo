class mxu_seqeunce extends uvm_sequence #(mxu_tr);

    `uvm_object_utils(mxu_seqeunce)

    // Randomizable fields for stimulus control
    mxu_tr tr;
    int tr_num = 50;

    function new(string name = "mxu_seqeunce");
        super.new(name);
    endfunction

    extern virtual task body();    
    extern virtual task send_random();    
    extern virtual task send_cnn();    

endclass
    
task mxu_seqeunce::body();
    if($test$plusargs("cnn")) send_cnn();
    else send_random();
    #100;
endtask

task mxu_seqeunce::send_random();
    repeat(tr_num) begin
        `uvm_do(tr)
    end
endtask

task mxu_seqeunce::send_cnn();
endtask
