PROGRAM TiempoTranscurrido;
{$ASSERTIONS ON}
VAR
	h1, m1, s1, h2, m2, s2, t1, t2, dt, hr, mr, sr: INTEGER;
BEGIN
	h1 := 16;
	m1 := 24;
	s1 := 32;
	h2 := 18;
	m2 := 3;
	s2 := 11;
	t1 := h1*3600 + m1*60 + s1;
	t2 := h2*3600 + m2*60 + s2;
	dt := t2 - t1;
	sr := dt mod 60;
	dt := dt div 60;
	mr := dt mod 60;
	hr := dt div 60;
	assert((hr = 1) and (mr = 38) and (sr = 39));
END.
