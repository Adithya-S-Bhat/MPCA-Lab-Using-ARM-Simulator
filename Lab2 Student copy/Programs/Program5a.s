mov r0,#15
mov r1,#20
cmp r0,r1
beq end
loop:
	subpl r0,r0,r1
	submi r1,r1,r0
	cmp r0,r1
	bne loop

end: swi 0x11