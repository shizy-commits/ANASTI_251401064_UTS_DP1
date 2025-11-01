program SewaMobil;
uses crt;
var
  jenis: string;
  hari, jarak: integer;
  biayaHarian, biayaJarak, total: integer;

begin
    clrscr;
    write('Masukkan Jenis Mobil (Ekonomi/Sedan/SUV): ');
    readln(jenis);
    write('Pemesanan Berapa Hari: ');
    readln(hari);
    write('Berkendara Seberapa Jauh (km): ');
    readln(jarak);

  biayaHarian := 0;

  case jenis of
    'Ekonomi', 'ekonomi': biayaHarian := 300000;
    'Sedan', 'sedan': biayaHarian := 400000;
    'SUV', 'suv': biayaHarian := 500000;
  end;
 
  if jarak <= 100 then
    biayaJarak := jarak * 1500
  else if jarak <= 200 then
    biayaJarak := (100 * 1500) + ((jarak - 100) * 1000)
  else
    biayaJarak := (100 * 1500) + (100 * 1000) + ((jarak - 200) * 500);
    
  total := (biayaHarian * hari) + biayaJarak;

  writeln;
  writeln(total);
  readln;
end.
