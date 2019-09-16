module yMux(z, a, b, c);

parameter SIZE = 8;
output [SIZE-1:0] z;
input [SIZE-1:0] a, b;
input c;



yMux1 mine[SIZE-1:0] (z, a, b, c);


endmodule


//using yMux1 as its source, this yMux2 takes in 1-bit c,
//2-bit input a and b and outputs 2-bit z.
