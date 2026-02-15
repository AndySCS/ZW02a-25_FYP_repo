class rf_output_q_transaction extends uvm_sequence_item;

    bit [31:0][31:0] rf_output[$];
    bit [255:0][127:0] iram[$];
    bit [255:0][127:0] wram[$];
    bit [255:0][127:0] oram_lo[$];
    bit [255:0][127:0] oram_hi[$];
    //bit [31:0] pc[$];

    function new(string name = "rf_output_q_transaction");
       super.new(name);
    endfunction //new()

    `uvm_object_utils(rf_output_q_transaction)

endclass //top_tr extends superClass