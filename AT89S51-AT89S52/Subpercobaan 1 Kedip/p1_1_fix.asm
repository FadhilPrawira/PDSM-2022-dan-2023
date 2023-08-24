;modul push button pada port 0
;modul LED pada port 1

pb equ p0.0 ;button 0
pbb equ p0.1 ;button 1
pbbb equ p0.2 ;button 2

org   0000h ;set alamat
jmp   Start
org   0100h

Start:	
      mov p1, #10110010b ;nyalakan port 1 dengan konfigurasi 1011 0010
      JNB pb,Nyala ;Jump near if not below
      SJMP Start

Nyala:
      mov p1,#10010110b
      JNB pbb,Nyala2
      SJMP Nyala
Nyala2:
      mov p1,#10001100b
      JNB pbbb,loop
      SJMP Nyala2
loop:
      SJMP Start
END
