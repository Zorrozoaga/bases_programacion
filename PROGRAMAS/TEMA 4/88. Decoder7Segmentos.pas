PROGRAM Decoder7Segmentos;
{$ASSERTIONS ON}
VAR
	n: INTEGER;
	a, b, c, d, e, f, g: BOOLEAN;
BEGIN
	{Numero 6}
        n := 6;
	a := not ((n = 1) or (n = 4));
	b := ((n >= 2) and (n <= 9)) and not (n = 7);
	c := not ((n = 1) or (n = 4) or (n=7));
	d := (n = 0) or (((n >= 4) and (n<=9)) and not (n = 7));
	e := (n=0) or (n=2) or (n=6) or (n=8);
	f := not ((n = 5) or (n = 6));
	g := not (n = 2);
	assert(a and b and c and d and e and not f and g);
	{Numero 7}
        n := 7;
	a := not ((n = 1) or (n = 4));
	b := ((n >= 2) and (n <= 9)) and not (n = 7);
	c := not ((n = 1) or (n = 4) or (n=7));
	d := (n = 0) or (((n >= 4) and (n<=9)) and not (n = 7));
	e := (n=0) or (n=2) or (n=6) or (n=8);
	f := not ((n = 5) or (n = 6));
	g := not (n = 2);
	assert(a and not b and not c and not d and not e and f and g);
END.
