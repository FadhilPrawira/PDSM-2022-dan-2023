# Mekanisme Percobaan 1 Mikrokontroler AT89S51/AT89S52
## Alat yang dibutuhkan
1. Modul Mikrokontroler AT89S51/AT89S52
2. Modul I/O _shield_
3. Modul _Push Button_
4. Modul LED dan 7 _Segment_
5. Kabel konektor IDC ICSP 10 pin _female to female_
6. USBasp

## Software yang dibutuhkan
1. MIDE-51 Studio
2. ProgISP

## Langkah - Langkah:
1. Buka file ```p1_1_fix.asm``` di MIDE-51 Studio. Klik ```F9``` untuk _Build_.
2. Hubungkan alat menggunakan kabel header/konektor IDC ICSP 10 pin _female to female_ sesuai tabel berikut:

|Hardware|Port|
|---|---|
|Modul _Push Button_|Port A/0|
|Modul LED (_Active Low_)|Port B/1|

|![Percobaan 1 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P1.jpg)|
|:--:|
|**Gambar 1. Percobaan 1 Mikrokontroler AT89S51/AT89S52**|

3. Buka ProgISP, pastikan _chip_ yang dipilih adalah AT89S51/AT89S52. Klik ```RD``` untuk memastikan AT89S51/AT89S52 sudah tersambung dengan ProgISP.
4. Jika tampil notifikasi ```Chip Signature doesn't match```, maka kemungkinan salah tipe _chip_. Ganti ke _chip_ yang sesuai.
5. Klik ```File>Load Flash```, cari folder ```AT89S51-AT89S52\Subpercobaan 1 Kedip``` dan pilih ```p1_1_fix.hex```
6. Klik ```Auto```, maka ProgISP akan melakukan upload kode ke AT89S51/AT89S52.
7. Pencet tombol _push button_ dari nol hingga tujuh, lalu kembali lagi ke nol dan perhatikan apa yang terjadi pada modul LED _Active Low_
