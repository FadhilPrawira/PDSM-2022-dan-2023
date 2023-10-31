# Subpercobaan 1 Kedip
Langkah-langkah
1. Pasang modul I/O shield ke ATMEGA8535
2. Hubungkan kabel header/IDC ICSP 10 pin female to female dari PORT A, B, C, atau D (pilih salah satu) ke modul LED. Pilih antara modul LED active high (hijau) atau LED active low (merah).
3. Buka file ```kedip.prj``` di CV AVR. Ubah-ubah nilai di ```delay_ms``` sesuai keinginan. Klik ```Ctrl+F9``` untuk Build All.
4. Buka ProgISP, pastikan Chip yang dipilih adalah ATMega8535. Klik ```RD``` untuk memastikan ATMega8535 sudah tersambung dengan ProgISP.
5. Klik ```File>Load Flash```, cari folder ```Subpercobaan 1 Kedip\Debug\Exe``` dan pilih ```kedip.hex```
6. Klik ```Auto```, maka ProgISP akan melakukan upload kode ke ATMega8535.
