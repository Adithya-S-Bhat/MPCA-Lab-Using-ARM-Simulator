.data
A:.word 20,40,10,30,60,90,70,50,80,100

.text
ldr r0,=A
mov r1,#10
mov r2,#0
loop:
	ldr r3,[r0],#4
	adds r2,r2,r3
	sub r1,r1,#1
	cmp r1,#0
	bne loop
swi 0x11
	