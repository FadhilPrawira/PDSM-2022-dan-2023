pb equ p0.0
pbb equ p0.1
pbbb equ p0.2

org   0000h
jmp   Start
org   0100h

Start:	
      mov p1, #10110010b
      JNB pb,Nyala
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