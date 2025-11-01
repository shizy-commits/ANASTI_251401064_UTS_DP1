program BilanganPrima;
uses crt;
var
  n, i, k: integer;
  prima: boolean;
begin
  clrscr;
  write('Masukkan nilai n = ');
  readln(n);

  writeln;
  writeln('Bilangan prima antara 1 dan ', n, ' adalah:');

  for i := 2 to n do
  begin
    prima := true;
    for k := 2 to i - 1 do
    begin
      if (i mod k = 0) then
      begin
        prima := false;
        break;
      end;
    end;

    if prima then
      write(' ', i);
  end;

  readln;
end.