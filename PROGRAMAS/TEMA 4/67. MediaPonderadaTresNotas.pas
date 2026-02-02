PROGRAM MediaPonderadaTresNotas;
{$ASSERTIONS ON}
VAR
	N1, N2, N3, media: REAL;
BEGIN
	N1 := 8.0;
	N2 := 7.0;
	N3 := 9.0;
	media := 0.2 * N1 + 0.3 * N2 + 0.5 * N3;
	assert(abs(media - 8.2) < 0.0001);
        {assert(media = 8.2);}
END.
