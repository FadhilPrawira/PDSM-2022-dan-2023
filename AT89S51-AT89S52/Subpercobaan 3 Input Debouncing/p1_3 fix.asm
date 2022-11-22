Org 0000h  ;set alamat
Setb P3.2   ;set bit p3.2 sbg input saklar
Mov p1,#0ffh  ;mematikan common anode led (1=off, 0=on)
Mov p0,#000h  ;mematikan buzzer

start:
Jnb p3.2,loop  ;jump if not bit. Jika p3.2 bernilai 0, lompat ke loop. Switch pull-up, idle=1, push=0
Mov p1,#0ffh  ;matiin led
Mov p0,#000h  ;matiin buzz
Sjmp start

loop:
mov p1,#0fdh
mov p0,#001h
;Setb p1.1  ;nyalain led bit ke-x
Setb p0.0  ;nyalain buzzer di bit ke-x
Acall delay
sjmp start

delay:	mov R0,#01h
delay0:	mov R1,#0ffh
delay1: mov R2, #0ffh
delay2: djnz R2, delay2
	djnz R1, delay1
	djnz R0, delay0
	ret
end