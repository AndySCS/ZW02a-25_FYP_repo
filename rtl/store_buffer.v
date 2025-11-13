module store_buffer(
    clk,
    rst_n,

    //from lsu input
    //axi address related
    ctrl_store_awvld,
    ctrl_store_awid,
    ctrl_store_awaddr,
    ctrl_store_awlen,
    ctrl_store_awsize,
    ctrl_store_awburst,
    ctrl_store_awstr,
    ctrl_store_awnum,
    ctrl_st_sram_start_addr,

    //from ram input 
    ctrl_sram_input_vld,
    ctrl_sram_input_addr,
    ctrl_sram_input_data,

    //from axi bresp
    ctrl_store_wrdy,
    ctrl_store_awrdy,

    //axi response related
    ctrl_store_bresp,
    ctrl_store_bvld,
    ctrl_store_resp_oram_addr,

    //output 
    //address related
    lsu_axi_awvld,
    lsu_axi_awid,
    lsu_axi_awaddr,
    lsu_axi_awlen,
    lsu_axi_awsize,
    lsu_axi_awburst,
    lsu_axi_awstr,
    lsu_axi_awnum,

    //write related
    lsu_axi_wvld,
    lsu_axi_wdata,
    lsu_axi_wstrb,
    lsu_axi_wlast,
    lsu_axi_oram_addr,

    //response related
    lsu_axi_brdy
);
    //parameter
    parameter AWID_WIDTH = 4;
    parameter AWADDR_WIDTH = 10;
    parameter WDATA_WIDTH = 64;
    parameter WSTRB_WIDTH = WDATA_WIDTH/8; // should be WDATA_WIDTH/8
    parameter RRESP_ERROR_BANK_NUM = 32;

    input clk;
    input rst_n;

    //from lsu input
    //axi address related
    input ctrl_store_awvld;
    input[7:0] ctrl_store_awid;
    input[9:0] ctrl_store_awaddr;
    input[7:0] ctrl_store_awlen;
    input[2:0] ctrl_store_awsize;
    input[1:0] ctrl_store_awburst;
    input[2:0] ctrl_store_awstr;
    input[3:0] ctrl_store_awnum;

    //lsu address for ram_read
    input[11:0] ctrl_st_sram_start_addr;

    //from ram input 
    input ctrl_sram_input_vld;
    input[7:0] ctrl_sram_input_addr;
    input[127:0] ctrl_sram_input_data;
    
    //from axi bresp
    input ctrl_store_wrdy;
    input ctrl_store_awrdy;

    //axi response related
    input[1:0] ctrl_store_bresp;
    input ctrl_store_bvld;
    input[11:0] ctrl_store_resp_oram_addr;

    //output 

    //address related
    output lsu_axi_awvld;
    output[7:0] lsu_axi_awid;
    output[9:0] lsu_axi_awaddr;
    output[7:0] lsu_axi_awlen;
    output[2:0] lsu_axi_awsize;
    output[1:0] lsu_axi_awburst;
    output[2:0] lsu_axi_awstr;
    output[3:0] lsu_axi_awnum;

    //write related
    output lsu_axi_wvld;
    output[63:0] lsu_axi_wdata;
    output[7:0] lsu_axi_wstrb;
    output lsu_axi_wlast;
    output[11:0] lsu_axi_oram_addr;

    //response related
    output lsu_axi_brdy;

    wire lsu_awvld;;
    wire st_buff_is_send;
    wire ctrl_store_wvld_en;
    wire lsu_awvld_ff;
    wire[7:0] ctrl_store_awid_ff;
    wire[9:0] ctrl_store_awaddr_ff;
    wire[7:0] ctrl_store_awlen_ff;
    wire[2:0] ctrl_store_awsize_ff;
    wire[1:0] ctrl_store_awburst_ff;
    wire[2:0] ctrl_store_awstr_ff;
    wire[3:0] ctrl_store_awnum_ff;
    wire[8:0] ctrl_st_sram_start_addr_ff;
    wire st_buff_chunk_element_end;
    wire st_buff_chunk_num_count_end;
    wire st_buff_chunk_trans_end;
    wire[1:0] st_buff_axi_write_fsm;
    wire[1:0] st_buff_sram_fsm;
    wire[3:0] st_buff_chunk_element_nxt;
    wire st_buff_chunk_element_en;
    wire[7:0] st_buff_chunk_num_count_next;
    wire st_buff_chunk_num_count_en;
    wire ctrl_sram_vld;
    wire[7:0] ctrl_sram_addr;
    wire[3:0] st_buff_chunk_element;
    wire[7:0] st_buff_chunk_num_count;
    wire[7:0] st_buff_element_size;
    wire lsu_axi_brdy_en;
    wire[256:0] st_bresp_resend;
    wire st_bresp_resend_start;
    wire st_bresp_resend_end;
    wire[7:0] st_bresp_resend_sram_addr;
    wire[7:0] lsu_axi_awid_ff;
    wire[9:0] lsu_axi_awaddr_ff;
    wire[7:0] lsu_axi_awlen_ff;
    wire[2:0] lsu_axi_awsize_ff;
    wire[1:0] lsu_axi_awburst_ff;
    wire[2:0] lsu_axi_awstr_ff;
    wire[3:0] lsu_axi_awnum_ff;
    //if ctrl_store_awvld => update the address payload 
    
    //dircet pass the ctrl_store siganl to axi
    assign lsu_awvld = ctrl_store_awvld | lsu_awvld_ff;
    assign st_buff_is_send = lsu_awvld & ctrl_store_awrdy;
    assign ctrl_store_awvld_en = ctrl_store_awvld ^ st_buff_is_send;

    //handshake 
    //=> only need to care if lsu_axi_vld => then send variables 
    assign lsu_axi_awvld   = lsu_awvld;
    assign lsu_axi_awid    = (ctrl_store_awvld ? lsu_axi_awid : lsu_axi_awid_ff); 
    assign lsu_axi_awaddr  = (ctrl_store_awvld ? lsu_axi_awaddr : lsu_axi_awaddr_ff);
    assign lsu_axi_awlen   = (ctrl_store_awvld ? lsu_axi_awlen : lsu_axi_awlen_ff);
    assign lsu_axi_awsize  = (ctrl_store_awvld ? lsu_axi_awsize : lsu_axi_awsize_ff);
    assign lsu_axi_awburst = (ctrl_store_awvld ? lsu_axi_awburst : lsu_axi_awburst_ff);
    assign lsu_axi_awstr   = (ctrl_store_awvld ? lsu_axi_awstr : lsu_axi_awstr_ff);
    assign lsu_axi_awnum   = (ctrl_store_awvld ? lsu_axi_awnum : lsu_axi_awnum_ff);

    DFFER #(.WIDTH(1))
    ff_awvld(
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_store_awvld_en),
        .d(ctrl_store_awvld),
        .q(lsu_awvld_ff)
    );

    DFFER #(.WIDTH(8))
    ff_awid(
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_store_awvld),
        .d(ctrl_store_awid),
        .q(ctrl_store_awid_ff)
    );

    DFFER #(.WIDTH(10))
    ff_awaddr(
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_store_awvld),
        .d(ctrl_store_awaddr),
        .q(ctrl_store_awaddr_ff)
    );

    DFFER #(.WIDTH(8))
    ff_awlen (
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_store_awvld),
        .d(ctrl_store_awlen),
        .q(ctrl_store_awlen_ff)
    );

    DFFER #(.WIDTH(3))
    ff_awsize (
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_store_awvld),
        .d(ctrl_store_awsize),
        .q(ctrl_store_awsize_ff)
    );
    DFFER #(.WIDTH(2))
    ff_awburst(
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_store_awvld),
        .d(ctrl_store_awburst),
        .q(ctrl_store_awburst_ff)
    );

    DFFER #(.WIDTH(3))
    ff_awstr(
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_store_awvld),
        .d(ctrl_store_awstr),
        .q(ctrl_store_awstr_ff)
    );

    DFFER #(.WIDTH(4))
    ff_awnum (
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_store_awvld),
        .d(ctrl_store_awnum),
        .q(ctrl_store_awnum_ff)
    );

    DFFER #(.WIDTH(8))
    ff_ctrl_st_sram_satrt_addr (
        .clk(clk),
        .rst_n(rst_n),
        .en(ctrl_store_awvld),
        .d(ctrl_st_sram_start_addr),
        .q(ctrl_st_sram_start_addr_ff)
    );

    //set the sram addr
    //logic flow:
    // awaddr_can_send => count chunk start => get the sram data 
    // => count the chunk elemnet => chunk element reach the end 
    // => get new sram data

    wire st_buff_chunk_element_end;
    wire st_buff_chunk_num_count_end;
    wire st_buff_response_end;
    wire st_buff_resend_start;
    wire [8:0] st_buff_chunk_element;
    wire [8:0] st_buff_chunk_element_nxt;
    
    
    assign st_buff_chunk_element_end = st_buff_chunk_element == ctrl_store_awlen_ff;
    assign st_buff_chunk_num_count_end = st_buff_chunk_num_count == ctrl_store_awnum_ff+1;

    //the instruction transcation is end if both chunk num and chunk elmenet is end
    assign st_buff_chunk_trans_end = st_buff_chunk_element_end & st_buff_chunk_num_count_end; 

    //fsm to control axi write 
    // 00 : idle
    // 01 : axi write
    // 10 : axi write resend
    // 11 : reserved
    assign st_buff_axi_write_fsm = st_buff_is_send ? 2'b01 :
                                        st_buff_chunk_trans_end ? 2'b10 : 
                                            st_buff_response_end ? 2'b00 : 2'b01;

    //fsm to control sram read
    // 00 : idle
    // 01 : read new sram
    // 10 : reading current sram
    // 11 : reserved 
    assign st_buff_sram_fsm = st_buff_chunk_element_end & st_buff_chunk_num_count_end ? 2'b00 :
                                    (st_buff_is_send | st_buff_chunk_element_end | st_buff_resend_start) ? 2'b01 : 2'b10;


    //count the chunk element
    assign st_buff_chunk_element_nxt = (st_buff_is_send|st_buff_chunk_element_end) ? 'b0 : st_buff_chunk_element + 1;
    assign st_buff_chunk_element_en = st_buff_is_send | (|st_buff_sram_fsm);

    //count the chunk num
    assign st_buff_chunk_num_count_nxt = st_buff_is_send ? 'b1 : st_buff_chunk_num_count + 1;
    assign st_buff_chunk_num_count_en = st_buff_is_send | st_buff_sram_fsm[0];

                                
    wire [7:0] st_buff_resend_addr;
    //cen depend on whether teh fsm point to read new sram
    assign ctrl_sram_vld = st_buff_sram_fsm[0];
    assign ctrl_sram_addr = st_buff_is_send ? (ctrl_st_sram_start_addr_ff | ctrl_st_sram_start_addr) : 
                                st_buff_resend_start ? st_buff_resend_addr : 
                                    st_buff_sram_fsm[0] ? ctrl_sram_addr + 1 : ctrl_sram_addr;
                                

    DFFER #(.WIDTH(8))
    ff_st_buff_chunk_element(
        .clk(clk),
        .rst_n(rst_n),
        .en(st_buff_chunk_element_en),
        .d(st_buff_chunk_element_nxt),
        .q(st_buff_chunk_element)
    );

    DFFER #(.WIDTH(8))
    ff_st_buff_chunk_num_count(
        .clk(clk),
        .rst_n(rst_n),
        .en(st_buff_chunk_num_count_en),
        .d(st_buff_chunk_num_count_nxt),
        .q(st_buff_chunk_num_count)
    );
    
    
    assign st_buff_element_size = 2**ctrl_store_awsize; 

    assign lsu_axi_wvld = ctrl_sram_input_vld;
    assign lsu_axi_wdata = ctrl_sram_input_data[(((st_buff_chunk_element+1)*st_buff_element_size)-1):st_buff_chunk_element*st_buff_element_size];
    assign lsu_axi_wstrb = 8'b11111111; //FIXME
    assign lsu_axi_wlast = 1'b0; //NO USE
    assign lsu_axi_oram_addr = ctrl_sram_input_addr;

    //response part

    assign lsu_axi_brdy_en = st_buff_is_send | ctrl_store_bvld;

    DFFER #(.WIDTH(1))
    ff_lsu_axi_brdy(
        .clk(clk),
        .rst_n(rst_n),
        .en(lsu_axi_brdy_en),
        .d(st_buff_can_send),
        .q(lsu_axi_brdy)
    );

    assign st_bresp_resend[ctrl_store_resp_oram_addr[7:0]] = (ctrl_store_bvld & lsu_axi_brdy) ? (|ctrl_store_bresp) : st_bresp_resend[ctrl_store_resp_oram_addr[7:0]];
    assign st_bresp_resend_have_error = (|st_bresp_resend) & st_buff_axi_write_fsm[1];
    assign st_bresp_resend_end = !(|st_bresp_resend);
    
    //break into 8 bank 
    //each bank 31 bit => total 256
    wire[31:0] st_buff_bank0;
    wire[31:0] st_buff_bank1;
    wire[31:0] st_buff_bank2;
    wire[31:0] st_buff_bank3;
    wire[31:0] st_buff_bank4;
    wire[31:0] st_buff_bank5;
    wire[31:0] st_buff_bank6;
    wire[31:0] st_buff_bank7;


    assign st_buff_bank0 = st_bresp_resend[31:0];
    assign st_buff_bank1 = st_bresp_resend[63:32];
    assign st_buff_bank2 = st_bresp_resend[95:64];
    assign st_buff_bank3 = st_bresp_resend[127:96];
    assign st_buff_bank4 = st_bresp_resend[159:128];
    assign st_buff_bank5 = st_bresp_resend[191:160];
    assign st_buff_bank6 = st_bresp_resend[223:192];
    assign st_buff_bank7 = st_bresp_resend[255:224];

    //find out which bank have error
    assign st_buff_bank_error = {(|st_buff_bank0), (|st_buff_bank1), (|st_buff_bank2), (|st_buff_bank3), (|st_buff_bank4), (|st_buff_bank5), (|st_buff_bank6), (|st_buff_bank7)};
    
    //8 bit 
    // the upper 8 bit matter for the bank_hi
    dec8to4 dec_bank_hi(.dec_in(st_buff_bank_error), .dec_out(st_buff_error_bank_addr_hi));

    //mxu select
    mxu8 mux(.mxu_bank_in0(st_buff_bank0), .mxu_bank_in1(st_buff_bank1), .mxu_bank_in2(st_buff_bank2), .mxu_bank_in3(st_buff_bank3), .mxu_bank_in4(st_buff_bank4), .mxu_bank_in5(st_buff_bank5), .mxu_bank_in6(st_buff_bank6), .mxu_bank_in7(st_buff_bank7), .sel(st_buff_error_addr_hi), .mxu_out(st_buff_error_bank_addr_lo));

    //
    dec32to5 dec_bank_lo(.dec_in(st_buff_error_bank_addr_lo), .dec_out(st_buff_error_addr_lo));

    // this place a bit confuse
    assign st_bresp_resend_sram_addr = {st_buff_error_bank_addr_hi,st_buff_error_bank_addr_lo};
    

endmodule