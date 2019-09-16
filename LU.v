module LU(o,a,b,c,s);

input [7:0] a,b,c;
input [1:0] s;
output [7:0] o, a1, a2, a3, a4, tmp;


// your module should be implemented here

and op1[7:0] (a1, a, b, c);
or op2[7:0] (a2, a, b, c);
xor tmp[7:0] (tmp, a, b);
xor op3[7:0] (a3, tmp, c);
not op4[7:0] (a4, a);

yMux4to1 mux(o, a1, a2, a3, a4, s);

endmodule
