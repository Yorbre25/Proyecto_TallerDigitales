// No se como calcular el numero de bits de "seleccion" con el parametro
// N, voy a dejarlo en 4bits porque es lo que se oucpa para el Alu de 4bits
module Mux #(parameter N=4)(
	input [N:0] rSum,
	rRest,
	rMod, 
	rMult, 
	rDiv, 
	rAnd, 
	rOr, 
	rXor, 
	rLShift, 
	rRShift, 
	input[3:0] seleccion, 
	output [N:0] salida
);
	
	logic [N:0] salidaAux;

	always @(seleccion, rSum, rRest, rMod, rMult, rDiv, rAnd, rOr, rXor, rLShift, rRShift)
		begin
			case(seleccion)
				0: salidaAux = rSum;
				1: salidaAux = rRest; 
				2: salidaAux = rMult; 
				3: salidaAux = rMod;
				4: salidaAux = rDiv;
				5: salidaAux = rAnd;
				6: salidaAux = rOr;
				7: salidaAux = rXor;
				8: salidaAux = rLShift;
				9: salidaAux = rRShift;
				default: salidaAux = 0;
			endcase
		end
		
	assign salida = salidaAux;
endmodule 