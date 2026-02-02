PROGRAM VolumenCilindro;
{$ASSERTIONS ON}
CONST
	PI : REAL = 3.1416;
VAR
	Abase, r, h, V: REAL;
BEGIN
	r := 1;
	h := 1;
	Abase := PI*r*r;
	V := Abase * h;
	assert(V = PI);
END.
