PROGRAM MediaDiezNotas;
{$ASSERTIONS ON}
VAR
	N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, suma, media: REAL;
BEGIN
	N1 := 5.0;
	N2 := 3.0;
	N3 := 7.0;
	N4 := 6.0;
	N5 := 4.0;
	N6 := 5.0;
	N7 := 5.0;
	N8 := 10.0;
	N9 := 8.0;
	N10 := 7.0;
	suma := N1 + N2 + N3 + N4 + N5 + N6 + N7 + N8 + N9 + N10;
	media := suma / 10.0;
	assert(media = 6.0);
END.
