class top_seqeunce extends uvm_sequence #(top_tr);

    `uvm_object_utils(top_seqeunce)

    // Randomizable fields for stimulus control
    top_tr tr;
    int tr_num = 1;
    int send_num = 0;

    function new(string name = "top_seqeunce");
        super.new(name);
    endfunction

    extern virtual task body();    
    extern virtual task send_random();    

endclass
    
task top_seqeunce::body();
    else send_random();
    `uvm_info("top_sequence", $sformatf("all tr is sent, send num is %d", send_num), UVM_LOW);
    #200;
endtask

task top_seqeunce::send_random();
    repeat(tr_num) begin
        `uvm_do(tr)
    end
endtask
