PROGRAM EsDigito;
{$ASSERTIONS ON}
VAR
	Ch: CHAR;
	esDigit: BOOLEAN;
BEGIN
	{Caso afirmativo}
	Ch := '3';
	esDigit := (Ch >= '0') and (Ch <= '9');
	assert(esDigit);
	{Caso negativo}
	Ch := 'y';
	esDigit := (Ch >= '0') and (Ch <= '9');
	assert(not esDigit);
END.
