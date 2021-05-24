mov r0,#-5
cmp r0,#0
beq zero
bpl positive
mov r1,#3
swi 0x11

zero: 
	mov r1,#1
	swi 0x11
positive:
	mov r1,#2
	swi 0x11