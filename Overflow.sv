module Overflow(input a0, b0, s0, input [3:0] seleccion, output overflow);
	assign overflow = 
		(~seleccion[0] & ~a0 & ~b0 & s0) | (~seleccion[1] & ~seleccion[0] & a0 & b0 & ~s0) | 
		(~seleccion[1] & seleccion[0] & ~a0 & b0 & s0) | (~seleccion[1] & seleccion[0] & a0 & ~b0 & ~s0) | 
		(seleccion[1] & ~seleccion[0] & ~a0 & b0 & ~s0) | (seleccion[1] & ~seleccion[0] & a0 & ~b0 & ~s0) | 
		(seleccion[1] & ~seleccion[0] & a0 & b0 & s0);
endmodule 