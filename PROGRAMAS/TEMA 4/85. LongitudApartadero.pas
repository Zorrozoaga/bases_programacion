PROGRAM LongitudApartadero;
{$ASSERTIONS ON}
VAR 
	v, vo, t, a, x: REAL;
BEGIN
	v := 10.0;
	t := 10.0;
	vo := 1.3 * v;
	a := - vo / t;
	x := vo*t + 0.5*a*t*t;
	{assert(x = 65.0);}
	assert(abs(x - 65.0) < 0.0001);
END.
