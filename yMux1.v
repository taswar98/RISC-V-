module yMux1(z, a, b, c);

input a, b, c;
output z;
wire notC, upper, lower;

not my_not (notC, c);
and upper_and (upper, notC, a);
and lower_and (lower, b, c);
or my_or (z, lower, upper);


endmodule
