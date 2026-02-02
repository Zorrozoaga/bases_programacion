PROGRAM SumaPar;
{$ASSERTIONS ON}
VAR
	A, B: INTEGER;
	esPar: BOOLEAN;
BEGIN
	{Caso par - impar}
	A := 6;
	B := 7;
	esPar := (A + B) mod 2 = 0;
	assert(not esPar);

	{Caso impar - par}
	A := 5;
	B := 2;
	esPar := (A + B) mod 2 = 0;
	assert(not esPar);

	{Caso impar - impar}
	A := 5;
	B := 9;
	esPar := (A + B) mod 2 = 0;
	assert(esPar);

	{Caso par - par}
	A := 4;
	B := 2;
	esPar := (A + B) mod 2 = 0;
	assert(esPar);
END.
