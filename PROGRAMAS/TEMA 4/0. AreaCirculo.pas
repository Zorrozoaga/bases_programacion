program area_circulo;
{$Assertions ON}
{ Datos de entrada: un real r, radio de la circunferencia
Precondición: r >0.0
Datos de salida: el área del círculo, A, nº real
Postcondición: r = PI * r^2, con PI = 3.1416}
const
	PI : Real = 3.1416;
var
	A, r: Real;
begin
	r := 1; {Inicializar datos de entrada}
	A := PI*r*r;
	Assert(A = PI); {Verificar caso de prueba}
end.
