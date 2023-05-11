`timescale 1ns/1ns
module BS_16bit_TB();

	logic [15:0]A= 'b1111111111111110;
	logic [3:0]s=1111;
	wire [15:0]w;

	BS_16bit bs(A, s, w);

	initial begin
	#80 A[0]=1;
	#80 A[7]=0;
	#80 s[0]=0;
	#80 A[7]=1;
	#80 A[3]=0;
	#80 s[0]=1;
	#80 s[1]=0;

	#80 $stop;
	end

endmodule
