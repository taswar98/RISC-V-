module labK;

reg a, b, c, flag;
wire z, lower_out, tmp, out1, out2;

not not_c(tmp, c);
and o1(out1, not_out, a);
and o2(out2, b, c);
or out(z, upper_out, lower_out);
assign not_out = tmp;
assign upper_out = out1;
assign lower_out = out2;
initial

begin

  flag = $value$plusargs("a=%b", a);
  if(flag === 0)
  $display("Warning: argument a is missing!");
  flag = $value$plusargs("b=%b", b);
  if(flag === 0)
  $display("Warning: argument b is missing!");
  flag = $value$plusargs("c=%b", c);
  if(flag === 0)
  $display("Warning: argument c is missing!");

  #1; //waiting for z
  $display("a=%b, b=%b, c=%b, z=%b", a, b, c, z);
  $finish;

end

endmodule
