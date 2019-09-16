module LabL;

reg [1:0] a, b, expect;
reg c;
wire [1:0] z;
integer i, j, k;


yMux2 mux(z, a, b, c);  //calling yMux2 model.

initial
begin

  for (i=0; i<4; i++)
    begin
      for (j=0; j<4; j++)
        begin
          for (k=0; k<2; k++)
            begin
              a=i;
              b=j;
              c=k;

              //expect = (a & ~c) | (b & c);
              expect = c ? b : a;  //If c is true(c=1) then z=b OR z=a;
              #1;
              if(z === expect)
                $display("PASS: a=%b, b=%b, c=%b, z=%b", a, b, c, z);
              else
                $display("PASS: a=%b, b=%b, c=%b, z=%b", a, b, c, z);
              end
          end
      end
    $finish;

 end

endmodule
