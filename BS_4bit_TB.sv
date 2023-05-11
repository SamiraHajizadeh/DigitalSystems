`timescale 1ns/1ns
module BS_4bit_TB();
	logic [3:0]A=0111;
	logic [1:0]s=00;
	wire [3:0] w;

	BS_4bit BS4bit(s , A , w);

	initial begin
	#80 s[0]=1;
	#80 A[3]=1;
	#80 A[0]=0;
	#80 s[0]=1;
	#80 A[1]=0;
	#80 A[2]=1;
	#80 s[1]=1;
	#80 A[0]=1;
	#80 s[0]=0;

	#80 $stop;
	end

endmodule
