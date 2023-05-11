`timescale 1ns/1ns
module TB_16to1MUX();

	logic [15:0]A= 'b0111111111111111;
	logic [3:0]s=1111;
	wire w;

	MUX16to1 mux(A, s, w);

	initial begin
	#80 A[15]=1;
	#80 A[7]=0;
	#80 s[0]=0;
	#80 A[7]=1;
	#80 A[3]=0;
	#80 s[0]=1;
	#80 s[1]=0;

	#80 $stop;
	end

endmodule
