PROGRAM TrianguloAritmetico;
{$ASSERTIONS ON}
VAR
	A, B, C, PAR1, PAR2, RESULT: INTEGER;
BEGIN
	A := 3;
	B := -2;
	C := 8;
	PAR1 := A + B;
	PAR2 := B + C;
	RESULT := PAR1 + PAR2;
	assert(RESULT = 7);
END.
