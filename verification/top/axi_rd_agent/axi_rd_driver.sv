class axi_rd_driver extends uvm_driver #(axi_rd_tr); 

    virtual axi_rd_intf axi_rd_if;

    bit [783:0][7:0] img_array;
    bit [43959:0][7:0] first_layer_weight;
    bit [569:0][7:0] second_layer_weigh;

    axi_read_transaction axi_rd_req_q[$];

    `uvm_component_utils(axi_rd_driver)
    
    function new(string name = "axi_rd_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual task reset_phase(uvm_phase phase);

    extern function void read_img();
    extern function void read_layer1();
    extern function void read_layer2();

    extern function void send_axi_read_recv();
    extern function void send_axi_read_send();
    extern function void send_axi_read_send_tr(axi_read_transaction axi_tr);
    extern function void assign_data2bus(axi_read_transaction axi_tr);
    extern function bit[63:0] get_data(axi_read_transaction axi_tr);

endclass //className extends superClass

function void axi_rd_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual axi_rd_intf)::get(this, "", "axi_rd_if", axi_rd_if))begin
        `uvm_fatal("axi_rd_driver", "axi_rd driver fail to get axi_rd if")
    end
endfunction

task axi_rd_driver::reset_phase(uvm_phase phase); 
    axi_rd_if.RVALID    <= 0;
    axi_rd_if.ARREADY   <= 1;
endtask

task axi_rd_driver::main_phase(uvm_phase phase); 
    super.main_phase(phase);
    //init data
    read_img();
    read_layer1();
    read_layer2();
    fork
        send_axi_read_recv();
        send_axi_read_send();
    join
endtask

function void axi_rd_driver::read_img();
    int 	 fd; 			// Variable for file descriptor handle
    int      arr_pos;

    fd = $fopen ("sample.csv", "r")

    while (!$feof(fd)) begin
        
        $fgets(line, fd);
        if(line.len <= 0) break;

        while ($sscanf(line, "%d,%s", value, line) >= 1) begin
            img_array[arr_pos] = value;
            arr_pos++;
        end

        // Close this file handle
        $fclose(fd);
    end

    if(arr_pos != 784) `uvm_error(get_name(), $sformatf("img read is not correct, actual read cnt = %d", arr_pos));

endfunction

function void axi_rd_driver::read_layer1();
    int 	 fd; 			// Variable for file descriptor handle
    int      arr_pos;

    fd = $fopen ("csv/mnist_kernel_785_128.csv", "r")

    while (!$feof(fd)) begin
        
        $fgets(line, fd);
        if(line.len <= 0) break;

        while ($sscanf(line, "%d,%s", value, line) >= 1) begin
            first_layer_weight[arr_pos] = value;
            arr_pos++;
        end

        // Close this file handle
        $fclose(fd);
    end

    if(arr_pos != 43960) `uvm_error(get_name(), $sformatf("layer 1 read weight cnt is not correct, actual weight cnt = %d", arr_pos));

endfunction

function void axi_rd_driver::read_layer2();
    int 	 fd; 			// Variable for file descriptor handle
    int      arr_pos;

    fd = $fopen ("csv/mnist_kernel_129_10.csv", "r")

    while (!$feof(fd)) begin
        
        $fgets(line, fd);
        if(line.len <= 0) break;

        while ($sscanf(line, "%d,%s", value, line) >= 1) begin
            first_layer_weight[arr_pos] = value;
            arr_pos++;
        end

        // Close this file handle
        $fclose(fd);
    end

    if(arr_pos != 560) `uvm_error(get_name(), $sformatf("layer 2 read weight cnt is not correct, actual weight cnt = %d", arr_pos));

endfunction

function void axi_rd_driver::send_axi_read_recv();
    axi_read_transaction axi_rd_tr;
    int repeated_q[$];

    while(1)begin
        @posedge(axi_rd_if.clk);
        repeated_q = axi_rd_req_q.find(axi_req.ARID == axi_read_if.ARID);
        if(repeated_q.size() > 0)begin
            `uvm_error(get_name(), $sformatf("repeated ARID is received, ARID = %d", axi_read_if.ARID));
        end        

        if(axi_rd_if.ARVALID & axi_rd_if.ARREADY)begin
            axi_rd_tr = axi_read_transaction::type_id::create();
            axi_rd_tr.init_axi_rd_tr(
                .ARID(axi_read_if.ARID),
                .ARADDR(axi_read_if.ARADDR),
                .ARLEN(axi_read_if.ARLEN),
                .ARSIZE(axi_read_if.ARSIZE),
                .ARBURST(axi_read_if.ARBURST),
                .ARREGION(axi_read_if.ARREGION)
            );
            axi_rd_req_q.push_back(axi_rd_tr);
        end        
        
        axi_read_if.ARREADY = (axi_rd_req_q.size() == 16);

    end
endfunction

function void axi_rd_driver::send_axi_read_send();
    axi_read_transaction axi_rd_tr;
    bit is_sending;

    while(1)begin
        @posedge(axi_rd_if.clk);
        if(is_sending);
        else if(axi_rd_req_q.size() > 0)begin
            axi_rd_tr = axi_rd_req_q.pop_front();
        end

        if(!is_sending);
        else if(axi_rd_tr.send_timer >0) axi_rd_tr.send_timer--
        else begin
            send_axi_read_send_tr(axi_rd_tr);
            is_sending = axi_rd_tr.ARLEN >= 0;
        end

    end
endfunction

function void axi_rd_driver::send_axi_read_send_tr(axi_read_transaction axi_tr);
    if(axi_rd_if.RREADY & axi_rd_if.RVALID)begin
        axi_rd_if.RVALID = 0;
        axi_tr.ARLEN--;
        axi_tr.send_cnt = $uramdom_range(100);
        if(axi_tr.ARBURST == `AXI_WR_BURST_INCR)begin
            axi_tr.ARADDR += (1 << axi_tr.ARSIZE);
        end
        if(axi_tr.ARLEN >= 0 && axi_tr.send_cnt == 0) begin
            assign_data2bus(axi_tr);
        end
    end
    else begin
        assign_data2bus(axi_tr);
    end
endfunction

function void axi_rd_driver::assign_data2bus(axi_read_transaction axi_tr);
    axi_rd_if.RVALID = 1;
    axi_rd_if.RID    = axi_tr.ARID;
    axi_rd_if.RDATA  = get_data(axi_tr);
    axi_rd_if.RRESP  = 0;
    axi_rd_if.RLAST  = (axi_tr.ARLEN == 1);
endfunction

function bit[63:0] axi_rd_driver::get_data(axi_read_transaction axi_tr);
    bit[7:0][7:0] rdata_tmp;
    int arsize_convert;

    arsize_convert = 1 << axi_tr.ARSIZE;

    if(axi_tr.ARADDR < 1000)begin
        for(int i = 0; i < arsize_convert; i++)begin
            rdata_tmp[i] = img_array[axi_tr.ARADDR+i];
        end
    end
    else if (axi_tr.ARADDR < 45000) begin 
        for(int i = 0; i < arsize_convert; i++)begin
            rdata_tmp[i] = first_layer_weight[axi_tr.ARADDR-1000+i];
        end
    end
    else begin
        for(int i = 0; i < arsize_convert; i++)begin
            rdata_tmp[i] = second_layer_weight[axi_tr.ARADDR-45000+i];
        end
    end

    return rdata_tmp;
endfunction