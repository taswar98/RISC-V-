module labK;

reg a, b, cin, flag;
reg [1:0] expect;
integer i, j, k;

wire z, cout, cin_and, ab_xor, ab_and;
xor ab1(ab_xor, a, b);
and ab2(ab_and, a, b);
xor zout1(z, cin, ab_xor);
and cin1(cin_and, cin, ab_xor);
or c_out(cout, cin_and, ab_and);


initial
begin

  //flag = $value$plusargs("a=%b", a);
  //flag = $value$plusargs("b=%b", b);
  //flag = $value$plusargs("cin=%b", cin);
  for (i = 0; i < 2; i = i + 1)
          for (j = 0; j < 2; j = j + 1)
            for (k = 0; k < 2; k = k + 1)
              begin
                 a = i;
                 b = j;
                 cin = k;

                 expect = a + b + cin;

                 #1; // wait for z and cout
                 if (expect[0] === z && expect[1] === cout)
                   $display("PASS: a=%b b=%b cin=%b z=%b cout=%b", a, b, cin, z, cout);
                 else
                   $display("FAIL: a=%b b=%b cin=%b z=%b cout=%b", a, b, cin, z, cout);
              end
        $finish;
     end
  //#1;
  //$display("a=%b, b=%b, cin=%b, cout=%b, z=%b", a, b, cin, cout, z);
  //$finish;

endmodule
