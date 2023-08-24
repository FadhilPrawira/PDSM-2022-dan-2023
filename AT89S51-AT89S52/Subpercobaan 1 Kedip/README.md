# Mekanisme Praktikum Percobaan 1
Alat Yang dibutuhkan
1. ATMel
2. IO Shield
3. Header Connector
4. Push Button
5. USBAsp

Langkah - Langkah:
1. Pasang USBAsp, IO Shield, Push Button seusai dengan kodingan yang telah dibuat
2. apabila tidak paham, pb berarti PushButton dengan 0.0 berarti pada port 0 di IO Shield
3. sedangkan untuk lampu, mengikuti kodingan apakah ada tulisan P1 atau P2 atau P3 pada kodingannya sehingga perlu untuk dipasangkan sesuai dengan port yang telah dibuat didalam kodingan tersebut
4. Setelah kodingan dibuat, build menggunakan software MIDE51 lalu buka software Progisp\
5. tancapkan USBASP kedalam komputer lalu pada program Progisp, klik RD untuk membaca serta mendeteksi apakah microcontroller terbaca atau tidak apabila tidak maka tancapkan ke port usb satunya
6. setelah itu pada file klik load flash untuk memasukkan file yang telah dibuild tadi dengan format .hex lalu klik daripada auto untuk memasukkan kodingan
7. apabila pemasangan benar, maka akan muncul kedip dengan dorongan daripada pushbutton
