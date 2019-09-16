module my_first_circuit(input A,B,C, output Y);

wire W1, Y;
reg[1:0] x, y, z;

and gate1(W1, x, y); //Output is always first parameter
or gate2(Y, W1, z);



initial
begin
  x = 1;
	y = 0;
	z = 1;
	#1 $display("Y=%1d, A=%1d, B=%1d, C=%1d ", Y, x, y, z);

end

endmodule
