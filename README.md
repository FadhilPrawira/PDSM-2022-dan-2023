# Prak. Desain Sistem Mikroprosesor (PTEL6301) 
> Teknik Elektro Universitas Diponegoro 
>> Tahun Ajaran 2022/2023

Dosen pengampu : Ir. Sudjadi M.T. dengan NIP 195906191985111001 
## Praktikum yang dijalankan
- AT89S51/AT89S52 (Assembly)
  1. Melakukan kedip LED dan meng-_output_-kan ke serial monitor
  2. _External interrupt_ berupa _push button_ kemudian di-_output_-kan ke LED, LED 7-Segment, dan serial monitor 
  3. Input, Debouncing Input, Output mode BIT
  4. Emulator rangkaian kombinational
  5. Aritmatika biner pada serial monitor
  6. Saklar Cepat Tepat
  7. Alarm Kebakaran
  
- ATMEGA8535 (C)
  1. Melakukan kedip LED dan meng-_output_-kan ke serial monitor
  2. _External interrupt_ berupa _keypad matrix_ 4x4 kemudian di-_output_-kan ke LCD 16x2
  3. Lampu lalu lintas dengan LED RGB
  4. ADC dan PWM
  5. _External interrupt_ berupa sensor temperatur LM35 kemudian di-_output_-kan ke serial monitor
  
- Arduino UNO/ATmega328P (C/Wiring)
  1. Melakukan kedip LED dan meng-_output_-kan ke serial monitor
  2. Aritmatika sederhana pada serial monitor
  3. ADC dan sensor LDR 
  4. Sensor temperatur dan kelembaban DHT11 kemudian di-_output_-kan ke LCD 16x2
  5. Kombinational _lock_ menggunakan _keypad matrix_ 4x4, _relay_, dan LED
  6. _Input_ potensiometer untuk mengatur sudut motor servo kemudian di-_output_-kan ke LCD 16x2
  7. Sensor jarak HC-04

## Perangkat lunak yang dibutuhkan
- CodeVision AVR [unduh versi bajakan 3.14 untuk Windows 7/8/8.1/10 arsitektur 32/64 bit di sini](https://getintopc.com/softwares/development/codevisionavr-advanced-free-download/)
- M-IDE Studio for MCS-51 [unduh versi 0.2.5.18 _packed file_ di sini](http://www.opcube.com/software/midepack02518.exe)
- Arduino [unduh versi 2.0.1 di sini untuk Windows 10 arsitektur 64 bit](https://downloads.arduino.cc/arduino-ide/arduino-ide_2.0.1_Windows_64bit.exe)
- Putty/SdjTerm
- ProgISP 
- Proteus [unduh versi bajakan 8.13 SP0 untuk Windows 7/8/8.1/10 arsitektur 32/64 bit di sini](https://getintopc.com/softwares/pcb-design/proteus-professional-2021-free-download-5219458/)

## Alat dan Bahan
1. Arduino UNO
![Arduino UNO](/images/arduino%20uno.png)
2. Modul I/O _shield_ dengan konektor IDC ICSP 10 pin
![Modul I/O _shield dengan konektor IDC ICSP 10 pin](/images/m00%20io%20shield.jpg)

![Rangkaian modul I/O _shield_](/images/m00%20rangkaian%20io%20shield.jpg)
3. Modul ATMEGA8535 (kiri) dan AT89S51/AT89S52 (kanan)
![Modul ATMEGA8535 (kiri) dan AT89S51/AT89S52 (kanan)](/images/m01%20foto%20modul%20mikrokontroler.jpg)

![](/images/m01%20rangkaian%20at8535%20modul%20mikrokontroler.jpg)

![](/images/m01%20rangkaian%20at89s51%20modul%20mikrokontroler.jpg)
4. Modul _push button_
![Modul _push button_](/images/m02%20foto%20modul%20push%20button.jpg)
5. Modul LCD 16x2
![Modul LCD 16x2](/images/m03%20foto%20modul%20lcd.jpg)
6. Modul PWM bohlam (kiri atas) dan LED RGB (kanan atas)
![Modul PWM bohlam (kiri atas) dan LED RGB (kanan atas)](/images/m04%20foto%20modul%20pwm.jpg)
7. Modul Potensiometer (kiri atas), LDR _dark_ (tengah atas), LDR _bright_ (kanan atas), dan sensor suhu LM35 (bawah)
![Modul Potensiometer (kiri atas), LDR _dark_ (tengah atas), LDR _bright_ (kanan atas), dan sensor suhu LM35 (bawah)](/images/m05%20foto%20modul%20input%20analog.jpg)
8. Modul LED _active low_ (kiri atas), LED 7 _segment active low_ (kanan atas), LED _active high_ (kiri bawah), dan LED 7 _segment active high_
![Modul LED _active low_ (kiri atas), LED 7 _segment active low_ (kanan atas), LED _active high_ (kiri bawah), dan LED 7 _segment active high_](/images/m06%20modul%20led%20dan%207%20segment.jpg)
9. USBasp AVR Programmer
![USBasp AVR _Programmer_](/images/usbasp.jpg)
10. Kabel DuPont _male to male_, _female to female_, dan _male to female_
![Kabel DuPont _male to male_, _female to female_, dan _male to female_](/images/kabel%20jumper.png)
11. Kabel konektor IDC ICSP 10 pin _female to female_
![Kabel konektor IDC ICSP 10 pin _female to female_](/images/kabel%20pita%2010%20plus%20female%20header.png)
12. USB _to_ TTL
![USB _to_ TTL](/images/usb%20to%20serial.png)
13. _Breadboard_
![_Breadboard_](/images/bread%20board.png)
14. Resistor berbagai ukuran
15. _Keypad matrix_ 4x4
16. Motor servo
17. LED warna merah, kuning, hijau
18. Transistor NPN 2N222
19. Power supply DC 12V

## Kode-kode ini disusun bersama oleh para asisten praktikum berikut
1. Assiddiq Mukhlis Abdillah 21060119130058
2. Fadhil Prawira 21060120140057
3. Arya Bramaputra 21060120120033
4. Muhammad Adib Ubaidillah 21060120120023
5. Maulana Reyhan Savero 21060120120032
6. Laila Himatul Khaizah  210601201200026
7. Chandraning Dyah Hapsari 21060120120023
8. Shifa Auliya Oktifyanindar 21060120140099
9. Syahvan Alviansyah Diva Ritonga 21060120130130
10. Selvya Syalsabilla 21060120140187
11. Rizkar Al Akbar 21060120130125
12. Hafiz Alifian Aqsha 21060120130104
