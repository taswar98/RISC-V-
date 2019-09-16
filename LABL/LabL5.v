module LabL;

reg a, b, cin;
reg [1:0] expect;
wire z, cout;
integer i, j, k;


yAdder1 add(z, cout, a, b, cin);

initial
  begin

  for (i=0; i<2; i++)
  begin
    for(j=0; j<2; j++)
    begin
      for(k=0; k<2; k++)
      begin

      a=i;
      b=j;
      cin=k;

      expect = a + b + cin;

      #1;
      
      if(expect[1] !== cout || expect[0] !== z)
      $display("FAIL: a=%b \n      b=%b \n      cin=%b \n      cout=%b \n      z=%b", a, b, cin, cout, z);

      end
    end
  end
  $finish;
end

endmodule
