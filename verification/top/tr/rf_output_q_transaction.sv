class rf_output_q_transaction extends uvm_sequence_item;

    bit [31:0][31:0] rf_output[$];
    bit [127:0][255:0] iram[$];
    bit [127:0][255:0] wram[$];
    bit [127:0][255:0] oram_lo[$];
    bit [127:0][255:0] oram_hi[$];
    //bit [31:0] pc[$];

    function new(string name = "rf_output_q_transaction");
       super.new(name);
    endfunction //new()

    `uvm_object_utils(rf_output_q_transaction)

endclass //top_tr extends superClass

