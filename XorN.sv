module XorN #(parameter N = 4)(input [N-1:0] A, input [N-1:0] B, output [N:0] S);
	assign S[N] = 1'b0;
	assign S = A ^ B;
endmodule 