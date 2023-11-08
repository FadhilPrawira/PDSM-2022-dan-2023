# Mekanisme Percobaan 5 Mikrokontroler AT89S51/AT89S52
## Alat yang dibutuhkan
1. Modul Mikrokontroler AT89S51/AT89S52
2. USB to TTL

## Software yang dibutuhkan
1. MIDE-51 Studio
2. ProgISP
3. Putty/SdjTerm

## Langkah - Langkah:
1. Hubungan Modul Mikrokontroler AT89S51/AT89S52 dengan USB to TTL seperti tabel dan gambar berikut:

|Modul Mikrokontroler AT89S51/AT89S52|USB to TTL|
|---|---|
|RX|TXD|
|TX|RXD|
|GND|GND|

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5.jpeg)

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-UART-1.jpeg)

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-UART-2.jpeg)

2. Buka file ```arithmatika.asm``` di MIDE-51 Studio. Klik ```F9``` untuk _Build_.
3. Buka ProgISP, pastikan _chip_ yang dipilih adalah AT89S51/AT89S52. Klik ```RD``` untuk memastikan AT89S51/AT89S52 sudah tersambung dengan ProgISP.
4. Jika tampil notifikasi ```Chip Signature doesn't match```, maka kemungkinan salah tipe _chip_. Ganti ke _chip_ yang sesuai.
5. Klik ```File>Load Flash```, cari folder ```AT89S51-AT89S52/Subpercobaan 5 Aritmatika biner pada serial monitor``` dan pilih ```arithmatika.hex```
6. Klik ```Auto```, maka ProgISP akan melakukan upload kode ke AT89S51/AT89S52.
7. Buka Device Manager. Lihat Ports (COM & LPT)

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-devmgmt-1.png)

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-devmgmt-2.png)

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-putty-1.png)

![Percobaan 5 Mikrokontroler AT89S51/AT89S52](/assets/images/AT89S51-AT89S52/P5-putty-2.png)


8. Buka Putty, atur _connection type_ ke _Serial_. Atur _Serial line_ ke COM yang telah dilihat di Device manager. Atur _Speed_/_BaudRate_ ke 4800. Klik _Open_.
9. Jika tampilan masih kosong, klik tombol RESET pada mikrokontroler. _Output_ yang pertama muncul adalah **94 4C C1** dan yang terakhir muncul adalah **55 32 C1**.
