PROGRAM AreaTanqueCilindrico;
{$ASSERTIONS ON}
CONST
	PI : REAL = 3.1416;
VAR
	Abase, Acilindro, Atotal, r, h, V: REAL;
BEGIN
	r := 1;
	h := 1;
	Abase := PI*r*r;
	Acilindro := 2*PI*r*h;
	Atotal := Abase + Acilindro;
	assert(abs(Atotal - 3*PI) < 0.0001);
        {assert(Atotal = 3*PI);}
END.
