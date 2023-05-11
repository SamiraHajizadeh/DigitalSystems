`timescale 1ns/1ns
module moore_TB();

 	logic j;
	logic clock;
	logic reset = 0;
	logic w;
	logic w2;
	Q1 m(clock, j, reset, w); 
	Q1_2 m2(clock, j, reset, w2); 

 	initial begin
		clock = 0;
 		forever #50ns clock = ~clock;
 	end 

 	initial begin
		#100ns j = 0;
 		#100ns reset = 1;
 		#100ns reset = 0;
 		#100ns j = 1;
		#100ns j = 0; 
		#100ns j = 0; 
 		#100ns j = 1;
		#100ns j = 0; 
		#100ns j = 0;
		#100ns j = 1; 
		#100ns j = 0;
		#100ns j = 0; 
		#100ns j = 0;
 		#100ns j = 1;
 		#100ns j = 0;
		#100ns j = 0;
		#100ns $stop;
 	end
      
endmodule


