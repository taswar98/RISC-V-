module labK;

reg a, b, c, flag, expect;
integer i, j, k;
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

  for(i=0; i<2; i++)
    begin
      for(j=0; j<2; j++)
        begin
          for(k=0; k<2; k++)
            begin
              a=i;
              b=j;
              c=k;

              expect = (a & ~c) | (b & c);
              #1; //waiting for z
              if(expect == z)
              $display("PASS: a=%b, b=%b, c=%b, z=%b", a, b, c, z);
              else
              $display("FAIL: a=%b, b=%b, c=%b, z=%b", a, b, c, z);
            end
         end
     end
   $finish;
  end

endmodule
