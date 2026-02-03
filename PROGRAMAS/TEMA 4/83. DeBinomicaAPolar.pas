PROGRAM DeBinomicaAPolar;
USES Math;
{$ASSERTIONS ON}
CONST
	PI: REAL = 3.1416;
VAR
	a, b, r, r_2, theta, arg: REAL;
BEGIN
	a := 3.0;
	b := 4.0;
	r_2 := a*a + b*b;
	r := sqrt(r_2);
	theta := b/a;
	arg := arctan(theta);
	assert((abs(r - 5.0) < 0.0001) and (abs(arg - 0.9273) < 0.0001));
END.
