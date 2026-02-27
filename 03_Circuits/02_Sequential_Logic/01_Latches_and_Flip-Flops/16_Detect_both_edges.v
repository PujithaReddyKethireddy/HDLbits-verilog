module top_module (
    input clk,
    input [7:0] in,
    output reg [7:0] anyedge
);
    reg [7:0] ps;   // previous state

    always @(posedge clk) begin
        anyedge <= ~ps & in | ps & ~in;  // // detect any edge
        ps <= in;           // update previous state
    end
endmodule