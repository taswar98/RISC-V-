module yMux4to1(z, a0, a1, a2, a3, c);

parameter SIZE = 8;
input [SIZE-1:0] a0, a1, a2, a3;
input [1:0] c;
output [SIZE-1:0] z;
wire [SIZE-1:0] zLo, zHi;


yMux #(SIZE) Lo(zLo, a0, a1, c[0]);
yMux #(SIZE) Hi(zHi, a2, a3, c[0]);
yMux #(SIZE) final(z, zHi, zLo, c[1]);


endmodule
