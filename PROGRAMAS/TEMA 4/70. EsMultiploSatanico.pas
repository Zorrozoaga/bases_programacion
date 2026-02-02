PROGRAM EsMultiploSatanico;
{$ASSERTIONS ON}
VAR
	N: INTEGER;
	esMulSatanico: BOOLEAN;
BEGIN
	{Caso: no es mul. de 6}
	N := 3;
	esMulSatanico:= ((N mod 6 = 0) and (N mod 66 = 0)) or (N mod 666 = 0);
	assert(not esMulSatanico);

	{Caso: mul. de 6, pero no de 66}
	N := 36;
	esMulSatanico:= ((N mod 6 = 0) and (N mod 66 = 0)) or (N mod 666 = 0);
	assert(not esMulSatanico);

	{Caso: mul. de 6 y de 66}
	N := 66;
	esMulSatanico:= ((N mod 6 = 0) and (N mod 66 = 0)) or (N mod 666 = 0);
	assert(esMulSatanico);

	{Caso: mul. de 666}
	N := 666;
	esMulSatanico:= ((N mod 6 = 0) and (N mod 66 = 0)) or (N mod 666 = 0);
	assert(esMulSatanico);
END.
