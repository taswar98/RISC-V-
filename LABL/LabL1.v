module LabL;

reg a, b, c;
reg expect;
wire z;
integer i, j, k;
yMux1 mux(z, a, b, c);

initial
   begin
      for (i = 0; i < 2; i = i + 1)
          begin
             for (j = 0; j < 2; j = j + 1)
               begin
                  for (k = 0; k < 2; k = k + 1)
                    begin
                       a = i;
                       b = j;
                       c = k;

                       expect = (a & ~c) | (c & b);

                       #1; // wait for z
                       if (z === expect)
                         $display("PASS: a=%b b=%b c=%b z=%b", a, b, c, z);
                       else
                         $display("FAIL: a=%b b=%b c=%b z=%b", a, b, c, z);
                    end
               end
          end
        $finish;
     end

endmodule // LabL
