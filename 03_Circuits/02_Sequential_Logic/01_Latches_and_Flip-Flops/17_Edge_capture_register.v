module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);

    reg [31:0] ps;   // previous state

    always @(posedge clk) begin
        if (reset) begin
            out <= 32'b0;           // reset has priority
        end else begin
            out <= out | (ps & ~in); // set on falling edge
        end
        
        ps <= in;  // update previous state
    end

endmodule