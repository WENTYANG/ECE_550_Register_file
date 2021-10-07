module regfile (
    clock,
    ctrl_writeEnable,
    ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;

   output [31:0] data_readRegA, data_readRegB;

// write
	wire [31:0] dec_writeReg;
	decoder_5bits dec0(dec_writeReg, ctrl_writeReg, ctrl_writeEnable);
// register
	wire[31:0] writereg_out[31:0];
	genvar i;
   generate
		for (i = 0; i < 32; i = i + 1) 
			begin:register_writing
				register_32bits reg_n(writereg_out[i], data_writeReg, clock, dec_writeReg[i], ctrl_reset);
			end
   endgenerate
// read
	//read port A 
	
	tristate_buffer t0(data_readRegA, ctrl_readRegA, writereg_out[0], writereg_out[1],writereg_out[2],
	writereg_out[3],writereg_out[4],writereg_out[5],writereg_out[6],writereg_out[7],writereg_out[8],writereg_out[9],
	writereg_out[10],writereg_out[11],writereg_out[12],writereg_out[13],writereg_out[14],writereg_out[15],
	writereg_out[16],writereg_out[17],writereg_out[18],writereg_out[19],writereg_out[20],writereg_out[21],
	writereg_out[22],writereg_out[23],writereg_out[24],writereg_out[25],writereg_out[26],writereg_out[27],
	writereg_out[28],writereg_out[29],writereg_out[30],writereg_out[31] );
	//read port B
	tristate_buffer t1(data_readRegB, ctrl_readRegB, writereg_out[0], writereg_out[1],writereg_out[2],
	writereg_out[3],writereg_out[4],writereg_out[5],writereg_out[6],writereg_out[7],writereg_out[8],writereg_out[9],
	writereg_out[10],writereg_out[11],writereg_out[12],writereg_out[13],writereg_out[14],writereg_out[15],
	writereg_out[16],writereg_out[17],writereg_out[18],writereg_out[19],writereg_out[20],writereg_out[21],
	writereg_out[22],writereg_out[23],writereg_out[24],writereg_out[25],writereg_out[26],writereg_out[27],
	writereg_out[28],writereg_out[29],writereg_out[30],writereg_out[31] );

endmodule
