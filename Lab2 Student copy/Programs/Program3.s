mov r0,#5
mov r1,#1
loop:
	mul r1,r0,r1
	subs r0,r0,#1
	cmp r0,#1
	bne loop
swi 0x11