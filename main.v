module main;

//You can implement other modules here if required

reg [7:0] a,b,c;
reg[1:0] s;
wire [7:0] o;
LU LUI(o,a,b,c,s);


initial
begin

a=4;
b=4;
c=12;

s=0;

#1;
$display("a=%b, b=%b, c=%b, s=%b, o=%b", a, b, c, s, o);

end
endmodule
