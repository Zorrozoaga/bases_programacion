PROGRAM SumaDigitos;
{$ASSERTIONS ON}
TYPE
	Digito = '0'..'9';
VAR
	A, B, suma: Digito;
	intA, intB, intSuma: INTEGER;
	desborde : BOOLEAN;
BEGIN
	{Caso sin desborde}
	A := '2';
	B := '3';
	intA := ord(A) - 48;
	intB := ord(B) - 48;
	intSuma := (intA + intB) mod 10;
	suma := chr(intSuma + 48);
	desborde := (intA + intB) >= 10;
	assert((suma = '5') and not desborde);
	{Caso con desborde}
	A := '7';
	B := '4';
	intA := ord(A) - 48;
	intB := ord(B) - 48;
	intSuma := (intA + intB) mod 10;
	suma := chr(intSuma + 48);
	desborde := (intA + intB) >= 10;
	assert((suma = '1') and desborde);
END.
