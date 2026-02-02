PROGRAM EsAlfabetico;
{$ASSERTIONS ON}
VAR
	Ch: CHAR;
	esAlfa: BOOLEAN;
BEGIN
	{Caso afirmativo}
	Ch := 'f';
	esAlfa:= ((Ch >= 'a') and (Ch <= 'z')) or ((Ch >= 'A') and (Ch <= 'Z'));
	assert(esAlfa);
	{Caso negativo}
        Ch := '5';
        esAlfa:= ((Ch >= 'a') and (Ch <= 'z')) or ((Ch >= 'A') and (Ch <= 'Z'));
	assert(not esAlfa);
END.
