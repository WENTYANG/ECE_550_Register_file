Yang Wenting          wy77
Liu Mengqi            ml607
 

In this project,we built a register file which allows for two essential actions: reading register values and writing values to registers.  Below are the basic modules or functions of our register and introductions of how we realized them.

Decoder_5bits
During the process of writing data to the register, we used decoder_5bits to convert the binary 5_bits  number ctrl_writeReg to pick the corresponding reg to "one hot". The ctrl_writeEnble decides whether to output or not. Later, in the process of reading data, we used decoder_5bits to convert the binary 5_bits  number ctrl_readRegA and  ctrl_readRegB to pick the corresponding reg to "one hot". As only one of the output is one, we can sent the intended write data to all regs. 

Register_32bits
We used D Flip-Flop to build 32-bit registers. Then, we used two-dimensional array writereg_out to represent 32 32-bit registers. 

Tristate_buffer
As and & or gate cannot connect two outputs, we introduced Tristate_buffer to only output the intended data from the registers. Firstly, we used a decoder to put one of the register that control bits pick to "one hot".  Then it outputs only the data from the desired register, while other registers will be connected to the z state, which means open circuit.


Regfile
The register file allows for two essential actions: reading register values and writing values to registers. This is accomplished by ports. A read port takes in data from all of the registers in the register file and outputs only the data (in this case, data_readRegA or data_readRegB) from the desired register, as designated by control bits (ctrl_readRegA, ctrl_readRegB). A write port uses similar control bits (ctrl_writeReg) to determine which register to write data (data_writeReg) to.

Clock Cycle:
We take the run time of one read operation, from the input of ctrl_read signal to the output in readreg, the time is approximately 18.219ns.
