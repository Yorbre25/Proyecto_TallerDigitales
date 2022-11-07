module Decode(
	input clk, 
	input rst,
	input [31:0] instruction,
	output memToReg, //Si usa la memoria
	output memWrite, //Si escribe o lee en memoria
	output [3:0] rd, //Registro de destino
	output [3:0] rn, //Registro n
	output [3:0] rm, //Otro operando
	output [3:0] funct, //Funcion
	output [23:0] inm //Inmediato
);

	logic aux_memToReg;
	logic aux_memWrite;
	logic [3:0] aux_rd;
	logic [3:0] aux_rn;
	logic [3:0] aux_rm;
	logic [3:0] aux_funct;
	logic [23:0] aux_inm;

	always_ff @(posedge clk, posedge rst) begin
		if(rst) begin
			aux_memToReg = 0;
			aux_memWrite = 0;
			aux_rd = 0;
			aux_rn = 0;
			aux_rm = 0; 
			aux_funct = 0;
			aux_inm = 0;
		end
		else begin
			case(instruction[27:26]) //Tipo de Operación
				2'b00: //Procesamiento de datos
					if (instruction[25]) begin //Es inmediato
						aux_memToReg = 0;
						aux_memWrite = 0;
						aux_rd = instruction[15:12];
						aux_rn = instruction[19:16];
						aux_rm = 0;
						aux_inm = instruction[7:0];
						aux_funct = instruction[24:21];
						
					end
					else begin //No es inmediato
						aux_memToReg = 0;
						aux_memWrite = 0;
						aux_rd = instruction[15:12];
						aux_rn = instruction[19:16];
						aux_rm = instruction[3:0];
						aux_inm = 0;
						aux_funct = instruction[24:21];
					end
				2'b01: //Instrucción de Memoria
					if (~instruction[25]) begin//Uso de inmediato
						aux_memToReg = 1;
						if(instruction[20]) //Si es un Load
							aux_memWrite = 0;
						else
							aux_memWrite = 1;
						aux_rd = instruction[15:12];
						aux_rn = instruction[19:16];
						aux_rm = 0;
						aux_inm = instruction[11:0];
						aux_funct = 0;		
					end
					else begin //Usa un registro
						aux_memToReg = 1;
						if (instruction[20]) // Si es un Load
							aux_memWrite = 0;
						else
							aux_memWrite = 1;
						aux_rd = instruction[15:12];
						aux_rn = instruction[19:16];
						aux_rm = instruction[3:0];
						aux_inm = 0;
						aux_funct = 0;	
					end
				2'b10: begin //Salto
					aux_memToReg = 0;
					aux_memWrite = 0;
					aux_rd = 0;
					aux_rn = 0;
					aux_rm = 0;
					aux_inm = instruction[23:0];
					aux_funct = 0;
				end
				
				default: begin
					aux_memToReg = 0;
					aux_memWrite = 0;
					aux_rd = 0;
					aux_rn = 0;
					aux_rm = 0;
					aux_inm = 0;
					aux_funct = 0;
				end
			endcase
		end
	end
	
	assign memToReg = aux_memToReg;
	assign memWrite = memWrite;
	assign rd = aux_rd;
	assign rn = aux_rn;
	assign rm = aux_rm;
	assign inm = aux_inm;
	assign funct = aux_funct;
	
	
endmodule 