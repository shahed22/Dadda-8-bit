module fulladd(a,b,cin,s,co);
input a,b,cin;
output s,co;
assign s= a^b^cin;
assign co=(a^b)&cin|(b&a);
endmodule
module fulltest();
reg a,b,cin;
wire s,co;
fulladd k1(.a(a),.b(b),.cin(cin),.s(s),.co(co));
integer j;
initial
begin
$monitor($time,"the value of a=%b,b=%b,cin=%b,s=%b,co=%b",a,b,cin,s,co);
{a,b,cin}=3'b0;
for(j=0;j<=7;j=j+1)
begin
#5 {a,b,cin}=j;
end
#20 $stop;
end
endmodule
