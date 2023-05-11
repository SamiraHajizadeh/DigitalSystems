`timescale 1ns/1ns

module Q1_TB();

	logic a=1, b=0, cin=1;
	wire cout, s;

	FA full_adder(a, b, cin, s, cout);
	initial begin
	#50 a = 0;
	#50 cin = 0;
	#50 b = 1;
	#50 b = 0;
	#50 cin = 1;
	#50 a = 1;
	#50 a = 0;
	#50 $stop;	end

endmodule
