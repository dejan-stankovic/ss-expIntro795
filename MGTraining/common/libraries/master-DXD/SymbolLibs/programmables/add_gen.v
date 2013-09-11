/*
** 12 bit counter with high enable synchronous load
** and high enable asynchronous reset
*/

`timescale 1ns / 1ns

module add_gen (reset, enable,clock,tc,addr);

input clock; 
input reset; 
input enable;

output tc;
output [11:0] addr;

reg tc_enable;
reg [11:0] cnt;
                                    
assign addr = cnt;
assign tc = tc_enable; 


always @(cnt) begin
   tc_enable <= (cnt == 12'hfff) ? 1'b1 : 1'b0; 
end

// wire gate_clk = clock & ~enable;    // enable is a glitch free signal and
                                       // has a posedge relationship to clock
always @ (posedge clock)    
 begin                           
     if (!reset) begin 
       cnt <= 12'h000; 
     end
     else if (!enable) begin        
       cnt <= cnt + 1'b1; 
     end     
                                                       
 end  // always @ (posedge clock)

endmodule  // module add_gen ()




