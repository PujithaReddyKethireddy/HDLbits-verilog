module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout1; 
    wire[15:0] sum2_0, sum2_1;
    
    add16 adder1(.a(a[15:0]), .b(b[15:0]), .sum(sum[15:0]), .cin(1'b0), .cout(cout1)); 
    add16 adder2_0(.a(a[31:16]), .b(b[31:16]), .sum(sum2_0), .cin(1'b0)); 
    add16 adder2_1(.a(a[31:16]), .b(b[31:16]), .sum(sum2_1), .cin(1'b1)); 
    
    always@(*)begin
        case(cout1)
            1'b0: sum[31:16] = sum2_0;
            1'b1: sum[31:16] = sum2_1;
       endcase
    end
    
endmodule
