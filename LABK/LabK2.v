module labK;

reg [31:0] x, y, z;

initial
    $monitor("%2d: x=%1d y=%1d z=%1d", $time, x, y, z);


initial

begin
  #10 x = 5;
  //$display("%2d: x=%1d y=%1d z=%1d", $time, x, y, z);
  #10 y = x + 1;
  //$display("%2d: x=%1d y=%1d z=%1d", $time, x, y, z);
  #10 z = y + 1;
  //$display("%2d: x=%1d y=%1d z=%1d", $time, x, y, z); $finish;
end


initial

  begin   //alternate : using "always" is a circular block that repeats forever
  #7 x = x + 1; //7: x=x+1, y=x, z=x   NOT DISPLAYED
  #7 x = x + 1; //14: x=6, y=7, z=x
  #7 x = x + 1; //21: x=7, y=7, z=x
  #7 x = x + 1; //28: x=8, y=7, z=8
  end

endmodule
