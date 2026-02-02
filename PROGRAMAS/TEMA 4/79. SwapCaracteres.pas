PROGRAM SwapCaracteres;
{$ASSERTIONS ON}
VAR
	X, Y, aux: CHAR;
BEGIN
	X := 'P';
	Y := 'q';
	aux := X;
	X := Y;
	Y := aux;
	X := chr(ord(X) - 32);
	Y := chr(ord(Y) + 32);
	assert((X = 'Q') and (Y = 'p'));
END.
