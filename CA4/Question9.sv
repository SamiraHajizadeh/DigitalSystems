`timescale 1ns/1ns

module ShiftRegister8bit_3(input SID, RS, Clk, output logic [7:0] Q);

	always @(posedge Clk) begin
		if (RS) assign Q = 8'b0;
		else begin
			assign Q = {SID, Q[7:1]};
		end
	end

endmodule

module SR_8bit_3_TB();

	logic s=1, c=1, r=0;
	wire [7:0] q;

	ShiftRegister8bit_3 SR(s, r, c, q);

	initial begin
	repeat (16) #600 c=~c;
	#600 r=1;
	repeat (2) #600 c=~c;
	#600 r=0;
	repeat (2) #600 c=~c;
	#600 s=1;
	repeat (16) #600 c=~c;
	#600 r=1;
	repeat (2) #600 c=~c;
	#600 $stop;
	end

endmodule
