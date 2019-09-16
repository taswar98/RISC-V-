module yMux(z, a, b, c);

parameter SIZE = 2;
input [SIZE-1:0] a, b;
input c;
output [SIZE-1:0] z;

yMux1 #(8) mux[7:0] (z, a, b, c);


endmodule
