org 0000h
	setb P0.1	;input LDR gelap
	setb p3.0
	mov P1,#0ffh	;membersihkan led com anode

start:	jnb P0.1,loop 
	mov P1,#0ffh
	sjmp start
loop:	mov P1,#0ffh
	acall delay
	mov P1,#000h
	acall delay
	jnb p3.0,start
	sjmp loop
delay:	mov R0,#01h
delay0:	mov R1,#0f0h
delay1: mov R2,#0F0h
delay2:	djnz R2,delay2
	djnz R1,delay1
	djnz R0,delay0
	ret
end
