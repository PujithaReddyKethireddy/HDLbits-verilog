module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
	wire[7:0] q1,q2,q3;
    my_dff8 dff8_1(clk, d, q1);
    my_dff8 dff8_2(clk, q1, q2);
    my_dff8 dff8_3(clk, q2, q3);
    // =========================================================
    // Combinational Logic (MUX)
    // always @(*) means:
    // "Re-evaluate whenever ANY input changes"
    // No clock → no memory → pure combinational logic
    //
    // ⭐ GOLD RULE ⭐
    // Combinational logic (mux/decoder/adder) → always @(*)
    // Sequential logic (flip-flop/register)   → always @(posedge clk)
    // =========================================================
     always @(*) begin
        case(sel)
            2'b00: q = d;
            2'b01: q = q1;
            2'b10: q = q2;
            2'b11: q = q3;
        endcase
    end
endmodule