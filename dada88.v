`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:39:18 12/24/2019 
// Design Name: 
// Module Name:    dada88 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dada88(
    input [7:0] a,
    input [7:0] b,
    output [15:0]op,
    output [63:0]re
    );
	
	 wire [41:0]ca;
	 wire [17:0]ci;
	 wire [41:0]s;
	 wire [7:0]op1;
	  
	 genpro g1(a,b,re);
assign op[0]=re[0];
//level 1
fulladder fa1(re[7],re[14],re[21],s[0],ca[0]);//s1 c1
halfadder h1(re[28],re[35],s[1],ca[1]);//s2 c2
halfadder h2(re[6],re[13],s[2],ca[2]);//s0 c0
fulladder fa2(s[0],s[1],ca[2],s[3],ca[3]);//s6 c6
fulladder fa3(re[42],re[49],re[56],s[4],ca[4]);//s9 c9
fulladder fa4(s[2],re[26],re[27],s[5],ca[5]);//s5 c5
fulladder fa5(re[34],re[41],re[48],s[6],ca[6]);//s8 c8
fulladder fa6(re[5],re[12],re[19],s[7],ca[7]);//s4 c4
halfadder h3(re[26],re[33],s[8],ca[8]);//s7 c7
halfadder h4(re[4],re[11],s[9],ca[9]);//s3 c3
fulladder fa7(ca[0],ca[1],ca[3],s[10],ca[10]);//s15 c15
fulladder fa8(s[3],ca[5],s[4],s[11],ca[11]);//s14 c14
fulladder fa9(s[5],ca[7],s[6],s[12],ca[12]);//s13 c13
fulladder fa10(s[7],ca[9],s[8],s[13],ca[13]);//s12 c12
fulladder fa11(re[18],re[25],s[9],s[14],ca[14]);//s11 c11
halfadder h5(re[3],re[10],s[15],ca[15]);//s10 c10
fulladder fa12(s[10],ca[11],ca[4],s[16],ca[16]);//s22 c22
fulladder fa13(s[11],ca[12],ca[6],s[17],ca[17]);//s21 c21
fulladder fa14(s[12],ca[13],ca[8],s[18],ca[18]);//s20 c20
fulladder fa15(s[12],ca[14],re[40],s[19],ca[19]);//s19 c19
fulladder fa16(s[14],ca[15],re[32],s[20],ca[20]);//s18 c18
fulladder fa17(s[15],re[17],re[24],s[21],ca[21]);//s17 c17
halfadder h6(re[2],re[9],s[22],ca[22]);//s16 c16
//final level part 1
halfadder h7(re[1],re[8],op[1],ci[0]);
fulladder f18(ci[0],s[22],re[16],op[2],ci[1]);
fulladder f19(ca[16],ci[1],s[21],op[3],ci[2]);
fulladder f20(ca[21],ci[2],s[20],op[4],ci[3]);
fulladder f21(ca[20],ci[3],s[19],op1[7],ci[4]);
assign op[5]=~(op1[7]);
fulladder f22(ca[19],ci[4],s[18],op[6],ci[5]);
fulladder f23(ca[18],ci[5],s[17],op[7],ci[6]);
fulladder f24(ca[17],ci[6],s[16],op1[0],ci[7]);
fulladder f25(ca[10],ci[7],ca[16],op1[1],op1[2]);
//part2
halfadder h27(re[15],re[22],s[23],ca[23]);//s23 c23
halfadder h8(re[30],re[23],s[24],ca[24]);//s24 c24
fulladder fa26(s[23],re[29],re[36],s[25],ca[25]);//s25 c25
fulladder fa27(s[24],ca[23],re[37],s[26],ca[26]);//s26 c26
halfadder h9(re[44],re[51],s[27],ca[27]);//s29 c29
fulladder fa28(ca[24],re[31],re[38],s[28],ca[28]);//s27  c27
fulladder fa29(re[45],re[52],re[59],s[29],ca[29]);//s30 c30
fulladder fa30(re[39],re[46],re[53],s[30],ca[30]);//s28 c28
halfadder h10(s[25],re[43],s[31],ca[31]);//ss29 cc29
fulladder fa31(s[26],ca[25],s[27],s[32],ca[32]);//ss30 cc30
fulladder fa32(s[28],ca[26],s[29],s[33],ca[33]);//s31 c31
fulladder fa33(s[30],ca[28],re[60],s[34],ca[34]);//s32 c32
fulladder fa34(ca[30],re[47],re[54],s[35],ca[35]);//s33  c33
halfadder h11(s[31],re[50],s[36],ca[36]);//s34 c34
fulladder fa35(s[32],ca[31],re[58],s[37],ca[37]);//s35 c35
fulladder fa36(s[33],ca[32],ca[27],s[38],ca[38]);//s36 c36
fulladder fa37(s[34],ca[33],ca[29],s[39],ca[39]);//s37 c37
fulladder fa38(s[35],ca[34],re[61],s[40],ca[40]);//s38 c38
fulladder fa39(ca[35],re[55],re[62],s[41],ca[41]);//s39  c39
//final part 2
halfadder f40(s[36],re[57],op1[3],ci[8]);
fulladder f41(ca[36],ci[8],s[37],op1[4],ci[9]);
fulladder f42(ca[37],ci[9],s[38],op1[5],ci[10]);
halfadder dd1(op1[0],op1[3],op[8],ci[11]);
fulladder dd2(ci[11],op1[1],op1[4],op[9],ci[12]);
fulladder dd3(ci[12],op1[2],op1[5],op1[6],ci[13]);
fulladder dd4(op1[6],ci[10],ci[13],op[10],ci[14]);
fulladder f43(ca[38],ci[14],s[39],op[11],ci[15]);
fulladder f44(ca[39],ci[15],s[40],op[12],ci[16]);
fulladder f45(ca[40],ci[16],s[41],op[13],ci[17]);
fulladder f46(ca[41],ci[17],re[63],op[14],op[15]);

endmodule
