module labK;

reg a, b, c;
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
  a=1;
  b=0;
  c=0;
  #2 $display("z=%b", z);

end

endmodule
