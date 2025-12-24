module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire x1, y1,x2, y2;
    assign {x1, y1,x2, y2} = {p1a & p1b & p1c, p1d & p1e & p1f, p2a & p2b, p2c & p2d};
    assign {p1y, p2y} = {x1 | y1, x2 | y2}; 
endmodule
