PROGRAM Porcentajes;
{$ASSERTIONS ON}
VAR
	A, B, C, suma, porcA, porcB, porcC: Real;
BEGIN
	A := 2.0;
	B := 3.0;
	C := 5.0;
	suma := A + B + C;
	porcA := A * 100.0 / suma;
	porcB := B * 100.0 / suma;
	porcC := C * 100.0 / suma;
	assert((porcA = 20.0) and (porcB = 30.0) and (porcC = 50.0));
END.
