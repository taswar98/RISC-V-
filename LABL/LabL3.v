module LabL;

reg [31:0] a, b, expect;
reg c;
wire [31:0] z;
integer i, j, k;


yMux #(32) mux(z, a, b, c);  //calling yMux model.

initial
begin

 repeat (5)

 begin


  a=$random;
  b=$random;
  c=(($random) % 2);

  expect = c ? b : a;

  #1;

  /* if(z === expect)
  $display ("PASS: a=%b \n      b=%b \n      c=%b \n      z=%b", a, b, c, z);
  else
  $display ("FAIL: a=%b \n      b=%b \n      c=%b \n      z=%b", a, b, c, z);
  */

  if (z!==expect)
  $display ("FAIL: a=%b \n      b=%b \n      c=%b \n      z=%b", a, b, c, z);

  end

  $finish;

end

endmodule
