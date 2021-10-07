module register_32bits(q, d, clk, en, reset);
	input [31:0] d;
	input clk, en, reset;
  	output reg [31:0] q;
  
  	initial
     	begin
       	     q = 32'h00000000;
        end
	always @(posedge clk or posedge reset) begin
     	     if (reset) begin
                  q <= 32'h00000000;
     	     end
     	     else if (en) begin
                  q <= d;
     	     end
        end
endmodule