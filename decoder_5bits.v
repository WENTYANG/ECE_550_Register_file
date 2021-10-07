module decoder_5bits(out, sel, en);
	output [31:0] out;
	input [4:0] sel;
	input en;
	wire [4:0]nsel;
not n0 (nsel[0], sel[0]);
not n1 (nsel[1], sel[1]);
not n2 (nsel[2], sel[2]);
not n3 (nsel[3], sel[3]);
not n4 (nsel[4], sel[4]);

and_5bits out0(out[0], nsel[4], nsel[3], nsel[2], nsel[1], nsel[0],en);
and_5bits out1(out[1], nsel[4], nsel[3], nsel[2], nsel[1], sel[0],en);
and_5bits out2(out[2], nsel[4], nsel[3], nsel[2], sel[1], nsel[0],en);
and_5bits out3(out[3], nsel[4], nsel[3], nsel[2], sel[1], sel[0],en);
and_5bits out4(out[4], nsel[4], nsel[3], sel[2], nsel[1], nsel[0],en);
and_5bits out5(out[5], nsel[4], nsel[3], sel[2], nsel[1], sel[0],en);
and_5bits out6(out[6], nsel[4], nsel[3], sel[2], sel[1], nsel[0],en);
and_5bits out7(out[7], nsel[4], nsel[3], sel[2], sel[1], sel[0],en);
and_5bits out8(out[8], nsel[4], sel[3], nsel[2], nsel[1], nsel[0],en);
and_5bits out9(out[9], nsel[4], sel[3], nsel[2], nsel[1], sel[0],en);
and_5bits out10(out[10], nsel[4], sel[3], nsel[2], sel[1], nsel[0],en);
and_5bits out11(out[11], nsel[4], sel[3], nsel[2], sel[1], sel[0],en);
and_5bits out12(out[12], nsel[4], sel[3], sel[2], nsel[1], nsel[0],en);
and_5bits out13(out[13], nsel[4], sel[3], sel[2], nsel[1], sel[0],en);
and_5bits out14(out[14], nsel[4], sel[3], sel[2], sel[1], nsel[0],en);
and_5bits out15(out[15], nsel[4], sel[3], sel[2], sel[1], sel[0],en);
and_5bits out16(out[16], sel[4], nsel[3], nsel[2], nsel[1], nsel[0],en);
and_5bits out17(out[17], sel[4], nsel[3], nsel[2], nsel[1], sel[0],en);
and_5bits out18(out[18], sel[4], nsel[3], nsel[2], sel[1], nsel[0],en);
and_5bits out19(out[19], sel[4], nsel[3], nsel[2], sel[1], sel[0],en);
and_5bits out20(out[20], sel[4], nsel[3], sel[2], nsel[1], nsel[0],en);
and_5bits out21(out[21], sel[4], nsel[3], sel[2], nsel[1], sel[0],en);
and_5bits out22(out[22], sel[4], nsel[3], sel[2], sel[1], nsel[0],en);
and_5bits out23(out[23], sel[4], nsel[3], sel[2], sel[1], sel[0],en);
and_5bits out24(out[24], sel[4], sel[3], nsel[2], nsel[1], nsel[0],en);
and_5bits out25(out[25], sel[4], sel[3], nsel[2], nsel[1], sel[0],en);
and_5bits out26(out[26], sel[4], sel[3], nsel[2], sel[1], nsel[0],en);
and_5bits out27(out[27], sel[4], sel[3], nsel[2], sel[1], sel[0],en);
and_5bits out28(out[28], sel[4], sel[3], sel[2], nsel[1], nsel[0],en);
and_5bits out29(out[29], sel[4], sel[3], sel[2], nsel[1], sel[0],en);
and_5bits out30(out[30], sel[4], sel[3], sel[2], sel[1], nsel[0],en);
and_5bits out31(out[31], sel[4], sel[3], sel[2], sel[1], sel[0],en);

endmodule

module and_5bits(o, a, b, c, d, e, en);
output o;
input a, b, c, d, e, en;
wire w0,w1,w2,w3;
and a0(w0, a, b);
and a1(w1, w0, c);
and a2(w2, w1, d);
and a3(w3, w2, e);
and a4(o, w3, en);
endmodule
	
	