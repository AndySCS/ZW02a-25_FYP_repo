class top_seqeunce extends uvm_sequence #(top_tr);

    `uvm_object_utils(top_seqeunce)

    // Randomizable fields for stimulus control
    top_tr tr;
    int tr_num;
    int send_num = 0;

    function new(string name = "top_seqeunce");
        super.new(name);
        if($test$plusargs("ffn_clip")) begin
            tr_num = 2;
        end else begin
            tr_num = 1; 
        end
    endfunction

    extern virtual task body();    
    extern virtual task send_top();    

endclass
    
task top_seqeunce::body();
     send_top();
    `uvm_info(get_name(), $sformatf("all tr is sent, send num is %d", send_num), UVM_LOW);
    #200;
endtask

task top_seqeunce::send_top();
    int repaet_cnt;

    repeat(tr_num) begin
        tr = top_tr::type_id::create("top_tr");
        `uvm_info(get_name(), "top sequence begin", UVM_LOW);
        start_item(tr);
        if(repaet_cnt == 1) tr.start_addr = 428;
        else tr.start_addr = 0;
        finish_item(tr);
        `uvm_info(get_name(), "top sequence ends", UVM_LOW);
        repaet_cnt++;
    end
endtask
