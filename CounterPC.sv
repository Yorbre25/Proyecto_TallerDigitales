module CounterPC #(parameter N=8) (input clk, rst, en, output [N-1:0]q);

	logic [N-1:0]qAux;
	
	always_ff @(posedge clk or posedge rst)
		if (rst)
			qAux=8'h00;
		else
			if (en)
					qAux=qAux+4;
	
	assign q=qAux;



endmodule
