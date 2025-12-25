class start_driver extends uvm_driver;
    /*
    this class is responsible for generating start stimulus to the dut
    */
    `uvm_component_utils(start_driver)
    function new(string name = "start_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    extern virtual task main_phase(uvm_phase phase);
endclass //className extends superClass

task start_driver::main_phase(uvm_phase phase);

    @(posedge start_bus.clk) begin
        start_bus.start_vld <= 1'b1;
        start_bus.start_addr <= 12'b0;
    end
    @(posedge start_bus.clk) begin
        start_bus.start_vld <= 1'b0;
    end

endtask