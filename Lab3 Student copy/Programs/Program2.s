.data
A:.word 19,16,15,12,32
B:.word
.text
ldr r0,=A
ldr r1,=B
mov r2,#5
loop:
	ldr r3,[r0],#4
	str r3,[r1],#4
	subs r2,r2,#1
	cmp r2,#0
	bne loop
swi 0x11