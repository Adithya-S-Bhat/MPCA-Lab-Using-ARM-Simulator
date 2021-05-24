.data
a:.word 10,20,30,40,50
b:.word 10,20,30,40,50
c:.word 0,0,0,0,0

.text
ldr r0,=a
ldr r1,=b
ldr r2,=c
mov r3,#5
loop:
	ldr r4,[r0],#4
	ldr r5,[r1],#4
	add r6,r4,r5
	str r6,[r2],#4
	sub r3,r3,#1
	cmp r3,#0
	bne loop
swi 0x11