program umbral_rentabilidad;
{$Assertions ON}
var
	C_f, Q_max, Q_O, Q_D, P, X: Real;
begin
	C_f := 500.0; Q_max := 700.0; Q_O := 3.0; Q_D := 1.0;
	P := (Q_max + C_f) / (Q_O + Q_D);
	X := Q_O*P - C_f;
	Assert((P = 300.0) and (X = 400.0));
end.
