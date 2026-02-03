PROGRAM ResolverEcuacionCuadratica;
{$ASSERTIONS ON}
VAR
	a, b, c, delta, raiz_delta, x_1, x_2: REAL;
BEGIN
	a := 1.0;
	b := 1.0;
	c := -2.0;
	delta := b*b - 4.0*a*c;
	raiz_delta := 1.0 + 0.5 * (delta - 1.0) - 0.125 * (delta - 1.0) * (delta - 1.0);
	x_1 := (-b + raiz_delta) / 2.0*a;
	x_2 := (-b - raiz_delta) / 2.0*a;
	assert((abs(x_1 - -2.0) < 0.0001) and (abs(x_2 - 1.0) < 0.0001));
	{assert((x_1 = -2.0) and (x_2 = 1.0));}
END.
