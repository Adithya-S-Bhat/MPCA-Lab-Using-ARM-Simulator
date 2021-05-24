mov r0,#5
mov r1,#5
cmp r0,r1
beq equal
subs r2,r0,r1
swi 0x11

equal:
	adds r2,r0,r1
	swi 0x11