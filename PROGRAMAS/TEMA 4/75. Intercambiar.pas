PROGRAM Intercambiar;
{$ASSERTIONS ON}
VAR
	A, B, aux: INTEGER;
BEGIN
	A := 2;
	B := 5;
	aux := A;
	A := B;
	B := aux;
	assert((A = 5) and (B = 2));
END.
