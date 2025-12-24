// synthesis verilog_input_version verilog_2001
module top_module(
    input  a, 
    input  b,
    output wire out_assign,
    output reg  out_alwaysblock
);

    // Continuous assignment (combinational)
    assign out_assign = a & b;

    // Combinational always block (same logic as assign)
    always @(*) begin
        out_alwaysblock = a & b;
    end
// Alternative (NOT recommended):
// always @(a,b)  // Manual sensitivity list → error-prone if a signal is missed
// begin
//     out_alwaysblock = a & b;
// end

endmodule