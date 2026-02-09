PROGRAM TiempoIncorporacion;
{$ASSERTIONS ON}
VAR
	v, vf, x, a, t: REAL;
BEGIN
	v := 10.0;
	vf := 15.0;
	x := 300.0;
	a := (vf*vf - v*v) / (2*x);
	t := (vf - v) / a;
        assert(abs(t - 24.0) < 0.0001);
	{assert(t = 24.0);}
END.
