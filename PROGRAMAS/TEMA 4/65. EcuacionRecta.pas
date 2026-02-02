PROGRAM EcuacionRecta;
{$ASSERTIONS ON}
VAR
        y, m, x, n: REAL;
BEGIN
        m := 2.0;
        x := 3.0;
        n := 1.0;
        y := m*x + n;
        assert(y = 7.0);
END.
