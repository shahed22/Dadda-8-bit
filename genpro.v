module  genpro (a,b,re);
input [7:0]a,b;
output [64:0]re;
assign re[0]=a[0]&b[0];
assign re[1]=a[0]&b[1];
assign re[2]=a[0]&b[2];
assign re[3]=a[0]&b[3];
assign re[4]=a[0]&b[4];
assign re[5]=a[0]&b[5];
assign re[6]=a[0]&b[6];
assign re[7]=a[0]&b[7];

assign re[8]=a[1]&b[0];
assign re[9]=a[1]&b[1];
assign re[10]=a[1]&b[2];
assign re[11]=a[1]&b[3];
assign re[12]=a[1]&b[4];
assign re[13]=a[1]&b[5];
assign re[14]=a[1]&b[6];
assign re[15]=a[1]&b[7];

assign re[16]=a[2]&b[0];
assign re[17]=a[2]&b[1];
assign re[18]=a[2]&b[2];
assign re[19]=a[2]&b[3];
assign re[20]=a[2]&b[4];
assign re[21]=a[2]&b[5];
assign re[22]=a[2]&b[6];
assign re[23]=a[2]&b[7];

assign re[24]=a[3]&b[0];
assign re[25]=a[3]&b[1];
assign re[26]=a[3]&b[2];
assign re[27]=a[3]&b[3];
assign re[28]=a[3]&b[4];
assign re[29]=a[3]&b[5];
assign re[30]=a[3]&b[6];
assign re[31]=a[3]&b[7];


assign re[32]=a[4]&b[0];
assign re[33]=a[4]&b[1];
assign re[34]=a[4]&b[2];
assign re[35]=a[4]&b[3];
assign re[36]=a[4]&b[4];
assign re[37]=a[4]&b[5];
assign re[38]=a[4]&b[6];
assign re[39]=a[4]&b[7];

assign re[40]=a[5]&b[0];
assign re[41]=a[5]&b[1];
assign re[42]=a[5]&b[2];
assign re[43]=a[5]&b[3];
assign re[44]=a[5]&b[4];
assign re[45]=a[5]&b[5];
assign re[46]=a[5]&b[6];
assign re[47]=a[5]&b[7];

assign re[48]=a[6]&b[0];
assign re[49]=a[6]&b[1];
assign re[50]=a[6]&b[2];
assign re[51]=a[6]&b[3];
assign re[52]=a[6]&b[4];
assign re[53]=a[6]&b[5];
assign re[54]=a[6]&b[6];
assign re[55]=a[6]&b[7];

assign re[56]=a[7]&b[0];
assign re[57]=a[7]&b[1];
assign re[58]=a[7]&b[2];
assign re[59]=a[7]&b[3];
assign re[60]=a[7]&b[4];
assign re[61]=a[7]&b[5];
assign re[62]=a[7]&b[6];
assign re[63]=a[7]&b[7];
endmodule
