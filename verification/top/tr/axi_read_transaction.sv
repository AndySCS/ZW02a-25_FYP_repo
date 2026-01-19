class axi_read_transaction extends uvm_sequence_item;

    bit [`AWID_WIDTH-1:0] ARID;
    bit [`AWADDR_WIDTH-1:0] ARADDR;
    bit [7:0] ARLEN;
    bit [2:0] ARSIZE;
    bit [1:0] ARBURST;
    bit [3:0] ARREGION;

    int send_timer;

    function new(string name = "axi_read_transaction");
       super.new(name);
    endfunction //new()

    extern function void init_axi_rd_tr(
        bit [`AWID_WIDTH-1:0] ARID,
        bit [`AWADDR_WIDTH-1:0] ARADDR,
        bit [7:0] ARLEN,
        bit [2:0] ARSIZE,
        bit [1:0] ARBURST,
        bit [3:0] ARREGION
    );

    `uvm_object_utils(axi_read_transaction)

endclass //top_tr extends superClass
    
function void axi_read_transaction::init_axi_rd_tr(
    bit [`AWID_WIDTH-1:0] ARID,
    bit [`AWADDR_WIDTH-1:0] ARADDR,
    bit [7:0] ARLEN,
    bit [2:0] ARSIZE,
    bit [1:0] ARBURST,
    bit [3:0] ARREGION
);

    this.ARID       = ARID;
    this.ARADDR     = ARADDR;
    this.ARLEN      = ARLEN;
    this.ARSIZE     = ARSIZE;
    this.ARBURST    = ARBURST;
    this.ARREGION   = ARREGION;
    send_timer = $urandom_range(100);

endfunction