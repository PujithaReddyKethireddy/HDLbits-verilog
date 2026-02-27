module top_module (
    input clk,
    input [7:0] in,
    output reg [7:0] pedge
);

    reg [7:0] ps;   // previous state

    always @(posedge clk) begin
        pedge <= ~ps & in;  // detect 0 → 1 transition
        ps <= in;           // update previous state
    end

endmodule