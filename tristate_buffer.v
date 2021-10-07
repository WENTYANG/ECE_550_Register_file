module tristate_buffer( 
output [31:0]buffer, 
input [4:0]ctrl_readReg,
input [31:0] writereg_out0, writereg_out1,writereg_out2,writereg_out3,writereg_out4,
writereg_out5,writereg_out6,writereg_out7,writereg_out8,writereg_out9,writereg_out10,
writereg_out11,writereg_out12,writereg_out13,writereg_out14,writereg_out15,writereg_out16,
writereg_out17,writereg_out18,writereg_out19,writereg_out20,writereg_out21,writereg_out22,
writereg_out23,writereg_out24,writereg_out25,writereg_out26,writereg_out27,writereg_out28,
writereg_out29,writereg_out30,writereg_out31 );
wire[31:0] buffer_in[31:0];
wire [31:0] dec_readReg;
	decoder_5bits dec1(dec_readReg, ctrl_readReg, 1'b1);
assign buffer_in[0] = dec_readReg[0] ? writereg_out0 : 1'bz;
assign buffer_in[1] = dec_readReg[1] ? writereg_out1 : 1'bz;
assign buffer_in[2] = dec_readReg[2] ? writereg_out2 : 1'bz;
assign buffer_in[3] = dec_readReg[3] ? writereg_out3 : 1'bz;
assign buffer_in[4] = dec_readReg[4] ? writereg_out4 : 1'bz;
assign buffer_in[5] = dec_readReg[5] ? writereg_out5 : 1'bz;
assign buffer_in[6] = dec_readReg[6] ? writereg_out6 : 1'bz;
assign buffer_in[7] = dec_readReg[7] ? writereg_out7 : 1'bz;
assign buffer_in[8] = dec_readReg[8] ? writereg_out8 : 1'bz;
assign buffer_in[9] = dec_readReg[9] ? writereg_out9 : 1'bz;
assign buffer_in[10] = dec_readReg[10] ? writereg_out10 : 1'bz;
assign buffer_in[11] = dec_readReg[11] ? writereg_out11 : 1'bz;
assign buffer_in[12] = dec_readReg[12] ? writereg_out12 : 1'bz;
assign buffer_in[13] = dec_readReg[13] ? writereg_out13 : 1'bz;
assign buffer_in[14] = dec_readReg[14] ? writereg_out14 : 1'bz;
assign buffer_in[15] = dec_readReg[15] ? writereg_out15 : 1'bz;
assign buffer_in[16] = dec_readReg[16] ? writereg_out16 : 1'bz;
assign buffer_in[17] = dec_readReg[17] ? writereg_out17 : 1'bz;
assign buffer_in[18] = dec_readReg[18] ? writereg_out18 : 1'bz;
assign buffer_in[19] = dec_readReg[19] ? writereg_out19 : 1'bz;
assign buffer_in[20] = dec_readReg[20] ? writereg_out20 : 1'bz;
assign buffer_in[21] = dec_readReg[21] ? writereg_out21 : 1'bz;
assign buffer_in[22] = dec_readReg[22] ? writereg_out22 : 1'bz;
assign buffer_in[23] = dec_readReg[23] ? writereg_out23 : 1'bz;
assign buffer_in[24] = dec_readReg[24] ? writereg_out24 : 1'bz;
assign buffer_in[25] = dec_readReg[25] ? writereg_out25 : 1'bz;
assign buffer_in[26] = dec_readReg[26] ? writereg_out26 : 1'bz;
assign buffer_in[27] = dec_readReg[27] ? writereg_out27 : 1'bz;
assign buffer_in[28] = dec_readReg[28] ? writereg_out28 : 1'bz;
assign buffer_in[29] = dec_readReg[29] ? writereg_out29 : 1'bz;
assign buffer_in[30] = dec_readReg[30] ? writereg_out30 : 1'bz;
assign buffer_in[31] = dec_readReg[31] ? writereg_out31 : 1'bz;
assign buffer = buffer_in[ctrl_readReg];

endmodule

