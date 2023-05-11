`timescale 1ns/1ns
module Q1(input Clock, j, Reset, output logic w);
	//10010 
	logic [2:0] state;	
	parameter a=3'b000, b=3'b001, c=3'b010, d=3'b011, e=3'b100, f=3'b101;
	always @(posedge Clock, posedge Reset) begin
		if(Reset) begin state<=a; w<=0; end
		else begin
			case (state)
				a: if(j==1) begin w<=0; state<=b; end
				   else begin w<=0; state<=a; end
				b: if(j==0) begin w<=0; state<=c; end
				   else begin w<=0; state<=b; end
				c: if(j==0) begin w<=0; state<=d; end
				   else begin w<=0; state<=b; end
				d: if(j==1) begin w<=0; state<=e; end
				   else begin w<=0; state<=a; end
				e: if(j==0) begin w<=0; state<=f; end
				   else begin w<=0; state<=b; end
				f: if(j==0) begin w<=1; state<=d; end
				   else begin w<=1; state<=b; end
				default: state<=a;
			endcase
		end
	end
endmodule
