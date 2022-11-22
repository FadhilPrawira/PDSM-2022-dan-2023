org 0000h
	setb P3.0
	setb P3.1
	setb P3.2

start:
	jnb P3.1,loop1
	jnb P3.2,loop2
	jnb P3.0,loop
	mov P1,#0ffh
	sjmp start
loop:
	mov P1,#0feh
	acall delay
	sjmp start
loop1:
	mov P1,#0fdh
	acall delay
	sjmp start
loop2:
	mov P1,#0fbh
	acall delay
	sjmp start
delay:	mov R0,#08h
delay0:	mov R1,#0ffh
delay1: mov R2,#0FFh
delay2:	djnz R2,delay2
	djnz R1,delay1
	djnz R0,delay0
	ret
end