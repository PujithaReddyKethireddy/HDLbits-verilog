module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    
    always@(posedge clk)begin
        if(reset)
            q <= 4'd0;
        else
            q <= (q == 4'd9 & slowena)? 4'd0: (slowena ? q + 4'd1 : q);        
    end
endmodule