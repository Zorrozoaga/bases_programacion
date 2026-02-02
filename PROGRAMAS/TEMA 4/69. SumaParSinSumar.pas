PROGRAM SumaParSinSumar;
{$ASSERTIONS ON}
VAR
	A, B: INTEGER;
	esPar: BOOLEAN;
BEGIN
	{Caso par - impar}
	A := 6;
	B := 7;
        esPar := ((A mod 2 = 0) and (B mod 2 = 0)) or ((A mod 2 = 1) and (B mod 2 = 1));
	assert(not esPar);

	{Caso impar - par}
	A := 5;
	B := 2;
	esPar := ((A mod 2 = 0) and (B mod 2 = 0)) or ((A mod 2 = 1) and (B mod 2 = 1));
	assert(not esPar);

	{Caso impar - impar}
	A := 5;
	B := 9;
	esPar := ((A mod 2 = 0) and (B mod 2 = 0)) or ((A mod 2 = 1) and (B mod 2 = 1));
	assert(esPar);

	{Caso par - par}
	A := 4;
	B := 2;
	esPar := ((A mod 2 = 0) and (B mod 2 = 0)) or ((A mod 2 = 1) and (B mod 2 = 1));
	assert(esPar);
END.
