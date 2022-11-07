module Comparador #(parameter N=4)(input [N-1:0] a, input [N-1:0] b, output igual, output menor, output mayor);
	always @* begin
		if(a<b) begin
			assign igual = 0;
			assign menor = 0;
			assign mayor = 0;
		end
		else if (a == b) begin
			assign igual = 1;
			assign menor = 0;
			assign mayor = 0;
		end
		else begin
			assign igual = 0;
			assign menor = 0;
			assign mayor = 1;
		end
	end
endmodule 