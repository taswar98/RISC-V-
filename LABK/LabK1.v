module labK;
      reg [31:0] x; // a 32-bit register
      reg one;
      reg two;
      reg three;
      initial
      begin
         $display("time= %1d, x=%b", $time, x);
         x = 4;
         $display("time= %1d, x=%b", $time, x);
         x = x + 2;
         $display("time= %1d, x=%b", $time, x);
         one = &x;            // and reduction
         two = x[1:0];        // part-select
         three = {one, two};  // concatenate
         $display("one= %1d, two=%b, three=%b", one, two, three);
         $finish;
      end
endmodule
