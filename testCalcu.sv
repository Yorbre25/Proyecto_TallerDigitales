module testCalcu();
	logic [3:0] a, b, seleccion, salida, flags;
	
	Calcu #(.N(4)) calculadora (a, b, seleccion, salida, flags);
	
	initial begin
	a = 1;
	b = 1;
	//Suma
	seleccion = 0; 
	assert (salida == 2) else $error("Falla en la suma");#5;
	//Resta
	seleccion = 1; 
	assert (salida == 0) else $error("Falla en la resta");#5;
	//Multiplicacion
	seleccion = 2;
	assert (salida == 1) else $error("Falla en la multiplicacion");#5;
	//Modulo
	seleccion = 3;
	assert (salida == 0) else $error("Falla en el modulo");#5;
	//Division
	seleccion = 4; 
	assert (salida == 1) else $error("Falla en la division");#5;
	//And
	seleccion = 5; 
	assert (salida == 1) else $error("Falla en el and");#5;
	//Or
	seleccion = 6; 
	assert (salida == 1) else $error("Falla en el or");#5;
	//Xor
	seleccion = 7; 
	assert (salida == 0) else $error("Falla en la xor");#5;
	//LShift
	seleccion = 8; 
	assert (salida == 2) else $error("Falla en el LShift");#5;
	//RShift
	seleccion = 9; 
	assert (salida == 8) else $error("Falla en la RShift");#5;
	
	
//	a = 4;
//	b = 1;
//	//Suma
//	seleccion = 0; 
//	assert (salida == 5) else $error("Falla en la suma");#5;
//	//Resta
//	seleccion = 1; 
//	assert (salida == 3) else $error("Falla en la resta");#5;
//	//Multiplicacion
//	seleccion = 2;
//	assert (salida == 4) else $error("Falla en la multiplicacion");#5;
//	//Modulo
//	seleccion = 3;
//	assert (salida == 0) else $error("Falla en el modulo");#5;
//	//Division
//	seleccion = 4; 
//	assert (salida == 4) else $error("Falla en la division");#5;
//	//And
//	seleccion = 5; 
//	assert (salida == 0) else $error("Falla en el and");#5;
//	//Or
//	seleccion = 6; 
//	assert (salida == 0) else $error("Falla en el or");#5;
//	//Xor
//	seleccion = 7; 
//	assert (salida == 5) else $error("Falla en la xor");#5;
//	//LShift
//	seleccion = 8; 
//	assert (salida == 8) else $error("Falla en el LShift");#5;
//	//RShift
//	seleccion = 9; 
//	assert (salida == 2) else $error("Falla en la RShift");#5;
//	
//	
//	
//	
//	a = 2;
//	b = 2;
//	//Suma
//	seleccion = 0; 
//	assert (salida == 4) else $error("Falla en la suma");#5;
//	//Resta
//	seleccion = 1; 
//	assert (salida == 0) else $error("Falla en la resta");#5;
//	//Multiplicacion
//	seleccion = 2;
//	assert (flags[2] == 4) else $error("Falla en la multiplicacion");#5;
//	//Modulo
//	seleccion = 3;
//	assert (salida == 0) else $error("Falla en el modulo");#5;
//	//Division
//	seleccion = 4; 
//	assert (salida == 0) else $error("Falla en la division");#5;
//	//And
//	seleccion = 5; 
//	assert (salida == 0) else $error("Falla en el and");#5;
//	//Or
//	seleccion = 6; 
//	assert (salida == 6) else $error("Falla en el or");#5;
//	//Xor
//	seleccion = 7; 
//	assert (salida == 6) else $error("Falla en la xor");#5;
//	//LShift
//	seleccion = 8; 
//	assert (salida == 4) else $error("Falla en el LShift");#5;
//	//RShift
//	seleccion = 9; 
//	assert (salida == 1) else $error("Falla en la RShift");#5;
//	
//	a = 2;
//	b = 3;
//	//Suma
//	seleccion = 0; 
//	assert (salida == 5) else $error("Falla en la suma");#5;
//	//Resta
//	seleccion = 1; 
//	assert (salida == -1) else $error("Falla en la resta");#5;
//	//Multiplicacion
//	seleccion = 2;
//	assert (salida == 6) else $error("Falla en la multiplicacion");#5;
//	//Modulo
//	seleccion = 3;
//	assert (salida == 3) else $error("Falla en el modulo");#5;
//	//Division
//	seleccion = 4; 
//	assert (salida == 0) else $error("Falla en la division");#5;
//	//And
//	seleccion = 5; 
//	assert (salida == 2) else $error("Falla en el and");#5;
//	//Or
//	seleccion = 6; 
//	assert (salida == 3) else $error("Falla en el or");#5;
//	//Xor
//	seleccion = 7; 
//	assert (salida == 1) else $error("Falla en la xor");#5;
//	//LShift
//	seleccion = 8; 
//	assert (salida == 4) else $error("Falla en el LShift");#5;
//	//RShift
//	seleccion = 9; 
//	assert (salida == 1) else $error("Falla en la RShift");#5;
	end
endmodule 