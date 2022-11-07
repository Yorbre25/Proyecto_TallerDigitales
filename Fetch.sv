module Fetch(input clk, rst, output [31:0]data);

		logic [7:0] address, q1, q2, q3, q4;
		logic [31:0] q;
		
		Counter pc (clk, rst,1'b1,address);
		Rom memoria1 (address,clk, q1);
		Rom memoria2 (address+1,clk, q2);
		Rom memoria3 (address+2,clk, q3);
		Rom memoria4 (address+3,clk, q4);
		
		always @ (*)
		begin
			q = {q1, q2, q3, q4};
		end
		
		assign data= q;
		

endmodule 