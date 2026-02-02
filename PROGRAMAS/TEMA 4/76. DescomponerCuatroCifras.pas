PROGRAM DescomperCuatroCifras;
{$ASSERTIONS ON}
VAR
	N, M, C, D, U: INTEGER;
BEGIN
	N := 1234;
	M := N div 1000;
	N := N mod 1000;
	C := N div 100;
	N := N mod 100;
	D := N div 10;
	N := N mod 10;
	U := N;
	assert((M = 1) and (C = 2) and (D = 3) and (U = 4));
END.
