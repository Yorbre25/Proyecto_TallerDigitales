module TestDecode();	
	logic clk, rst;
	logic [31:0] instruction;

	logic memToReg;
	logic memWrite;
	logic [3:0] rd;
	logic [3:0] rn;
	logic [3:0] rm;
	logic [3:0] funct;
	logic [23:0] inm;
	
	Decode decoder(clk, rst, instruction, memToReg, memWrite, rd, rn, rm, funct, inm);
	
	initial begin
		clk = 0;
		instruction = 0;
		memToReg = 0;
		memWrite = 0;
		rd = 0;
		rn = 0;
		rm = 0;
		funct = 0;
		inm = 0;
		rst = 1; #5;
		rst = 0;
	end
	
	always begin
		instruction = 'hE0865007; #10;
		instruction = 'hE405B01A; #10;
		instruction = 'hBA000003; #10;
	end
	
	always begin
		clk = ~ clk;
	end
endmodule 