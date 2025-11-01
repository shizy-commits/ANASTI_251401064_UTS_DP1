program JonoHitungAngka;
uses crt;
var
  n, i, angka, total: integer;
  rata: real;
begin
  clrscr;
  write('N : ');
  readln(n);

  total := 0;

  for i := 1 to n do
  begin
    write('Angka ke-', i, ' : ');
    readln(angka);
    total := total + angka;
  end;

  rata := total / n;

  writeln;
  writeln('Jumlah Total : ', total);
  writeln('Rata - rata  : ', rata:0:1);

  readln;
end.