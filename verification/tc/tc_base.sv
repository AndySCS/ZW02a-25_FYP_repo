class tc_base extends uvm_test;

    env tc_env;

    function new(string name = "tc_base", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()

    extern function void build_phase(uvm_phase phase);
    extern function void report_phase(uvm_phase phase);

    `uvm_component_utils(tc_base)

endclass

function void tc_base::build_phase(uvm_phase phase);
    super.build_phase(phase);
    tc_env = env::type_id::create("tc_env", this);
endfunction

function void tc_base::report_phase(uvm_phase phase);
    
    uvm_report_server server;
    super.report_phase(phase);

    server = get_report_server();
    err_num = server.get_severity_count(UVM_ERROR);

    if(err_num > 0) $display("TC ERROR");
    else $display("TC PASS");

endfunction