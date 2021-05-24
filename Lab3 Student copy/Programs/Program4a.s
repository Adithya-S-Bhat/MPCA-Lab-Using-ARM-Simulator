.data
A:.word 9
.text
ldr r0,=A
ldr r1,[r0]
mov r2,#0
loop:
	movs r1,r1,lsr #1
	addcs r2,r2,#1
	cmp r1,#0
	bne loop
rsb r3,r2,#32
swi 0x11