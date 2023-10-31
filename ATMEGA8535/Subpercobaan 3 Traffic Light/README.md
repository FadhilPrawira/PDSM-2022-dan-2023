# Subpercobaan 3 Traffic Light
Langkah-langkah
1. Pasang modul I/O shield ke ATMEGA8535
2. Hubungkan kabel header/IDC ICSP 10 pin female to female dari PORT A, B, C, atau D (pilih salah satu) ke modul LED. Pilih antara modul LED active high (hijau) atau LED active low (merah).
3. Buka file ```traffic light.prj``` di CV AVR. Klik ```Ctrl+F9``` untuk Build All.
4. Buka ProgISP, pastikan Chip yang dipilih adalah ATMega8535. Klik ```RD``` untuk memastikan sudah tersambung dengan ProgISP. Klik File>Load Flash, cari folder ```Subpercobaan 3 Traffic Light\Debug\Exe``` dan pilih ```traffic light.hex```
5. Klik Auto, maka ProgISP akan melakukan upload kode ke ATMega8535.
