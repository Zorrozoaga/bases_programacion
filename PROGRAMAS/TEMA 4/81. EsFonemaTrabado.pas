PROGRAM EsFonemaTrabado;
{$ASSERTIONS ON}
VAR
	x, y: CHAR;
	esFonTrab: BOOLEAN;
BEGIN
	{Caso fl}
	x := 'f';
	y := 'l';
	esFonTrab :=
  ((x = 'b') or (x = 'c') or (x = 'd') or (x = 'f') or (x = 'g') or (x = 'p') or (x = 't'))
  and
  (((y = 'l') and not ((x = 'd') or (x = 't'))) or (y = 'r'));
	assert(esFonTrab);
	{Caso dl}
	x := 'd';
	y := 'l';
	esFonTrab :=
  ((x = 'b') or (x = 'c') or (x = 'd') or (x = 'f') or (x = 'g') or (x = 'p') or (x = 't'))
  and
  (((y = 'l') and not ((x = 'd') or (x = 't'))) or (y = 'r'));
	assert(not esFonTrab);
	{Caso tr}
	x := 't';
	y := 'r';
	esFonTrab :=
  ((x = 'b') or (x = 'c') or (x = 'd') or (x = 'f') or (x = 'g') or (x = 'p') or (x = 't'))
  and
  (((y = 'l') and not ((x = 'd') or (x = 't'))) or (y = 'r'));
	assert(esFonTrab);
	{Caso tb}
	x := 't';
	y := 'b';
	esFonTrab :=
  ((x = 'b') or (x = 'c') or (x = 'd') or (x = 'f') or (x = 'g') or (x = 'p') or (x = 't'))
  and
  (((y = 'l') and not ((x = 'd') or (x = 't'))) or (y = 'r'));
	assert(not esFonTrab);

END.
