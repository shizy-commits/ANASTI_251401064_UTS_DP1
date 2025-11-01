program PolaAngkaRahasia;
uses crt;

var
  nama: string;
  n, i, j: integer;

begin
  clrscr;
  write('Masukkan nama: ');
  readln(nama);
  write('Masukkan n: ');
  readln(n);
  writeln;
  writeln(nama, ', inilah pola angka rahasiamu:');
  writeln;

  i := 1;
  while i <= n do
  begin
    j := 1;
    while j <= i do
    begin
      if i mod 2 = 0 then
        write(i, ' (genap)')
      else
        write(i, ' (ganjil)');
      if j < i then
        write(' ');
      j := j + 1;
    end;
    writeln;
    i := i + 1;
  end;

  writeln;
  writeln('Selamat, ', nama, '! Kamu berhasil membuka pintu rahasia ke level berikutnya!');
  readln;
end.