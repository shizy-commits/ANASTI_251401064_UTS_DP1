program soal2uts;
uses crt;
var
  nama, indeks: string;
  i, lulus, mengulang, nilai: integer;

begin
  clrscr;
  lulus := 0;
  mengulang := 0;

  for i := 1 to 5 do
  begin
    write('Nama Praktikan ', i, ': ');
    readln(nama);
    write('Nilai Akhir: ');
    readln(nilai);

    if nilai >= 90 then
      indeks := 'A'
    else if nilai >= 85 then
      indeks := 'B+'
    else if nilai >= 75 then
      indeks := 'C+'
    else if nilai >= 70 then
      indeks := 'C'
    else if nilai >= 65 then
      indeks := 'D'
    else
      indeks := 'E';

    writeln('Indeks Nilai Praktikan ', i, ': ', indeks);

    if (indeks <> 'D') and (indeks <> 'E') then
      lulus := lulus + 1
    else
      mengulang := mengulang + 1;

    writeln;
  end;

  writeln('Total Praktikan Lulus: ', lulus);
  writeln('Total Praktikan Mengulang: ', mengulang);

  readln;
end.
