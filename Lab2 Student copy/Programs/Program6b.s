.data
A:.byte 20,40,10,30,60,90,70,100,80,50

.text
ldr r0,=A
mov r1,#10
mov r2,#0
loop:
	ldrb r3,[r0],#1
	adds r2,r2,r3
	sub r1,r1,#1
	cmp r1,#0
	bne loop
swi 0x11