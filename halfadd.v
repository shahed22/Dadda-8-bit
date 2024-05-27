module hag(a,b,s,c);
input a,b;
output s,c;
xor(s,a,b);
and(c,a,b);
endmodule
module halftestg();
reg A,B;
wire S,C;
hag e1(.a(A),.b(B),.s(S),.c(C));
integer k;
initial
begin
{A,B}=2'b0;
$monitor($time," The value of A=%b,B=%b,Sum=%b,Carry=%b",A,B,S,C);
for(k=0;k<=3;k=k+1)
begin
#5 {A,B}=k;
end
#10 $stop;
end
endmodule