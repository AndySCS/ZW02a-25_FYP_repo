module Debounce_btn(
    input btn_in,   
    input clk_in,            //FPGA clock : 50M        
    output reg btn_out 
 );
 
    reg [0:20] cnt_debounce = 0;    

 
     parameter time_20ms = 21'd2000000;   

    always@(posedge clk_in) begin    
        if(btn_in == 0)begin // if not pressed / hv bounce  after pressed  
            cnt_debounce <= 0;
        end else if(cnt_debounce == time_20ms) begin //fixed the value to 20ms  
                cnt_debounce <= time_20ms;
        end else begin //btn signal in start      
            cnt_debounce <= cnt_debounce + 1;
        end
    end

    always@(posedge clk_in) begin
        if(cnt_debounce == 0) begin // still hv bounce/ not pressed
            btn_out <= 0;
        end else if(cnt_debounce == (time_20ms - 21'b1)) begin //last bounce signal  -> stable
            btn_out <= 1; 
        end else begin //no press signal
            btn_out <= 0; 
        end  
    end
 

 
 endmodule