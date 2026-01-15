class force_agt extends uvm_component;

    function new(string name = "force_agt", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
    extern virtual function void force_ram();

    `uvm_component_utils(force_agt)

endclass //force_agt extends superClass

function void force_agt::build_phase(uvm_phase phase);
    super.build_phase(phase);
    force_ram();
endfunction

function void force_agt::force_ram();
    int fd;
    int ram_cnt;
    bit [127:0] ram_tmp;

    fd = $fopen ("code.txt", "r");

    while (!$feof(fd)) begin
        
        $fgets(line, fd);
        if (line.len <= 0) break;
        $sscanf (line, "%b", ram_tmp);
        force uvm_top.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[ram_cnt] = ram_tmp;
        ram_cnt++;
    end

    // Close this file handle
    $fclose(fd);
endfunction

task force_agt::main_phase(uvm_phase phase);
    super.main_phase(phase);
endtask
