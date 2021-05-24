.data:
A:.word 12,3,43,21,34,61,1,90,14,32
.text:
ldr r0,=A
ldr r1,[r0],#4
mov r2,#9
loop:
	ldr r3,[r0],#4
	cmp r1,r3
	bgt loop1
	else:
		sub r2,r2,#1
		cmp r2,#0
		bne loop
swi 0x11

loop1:
	mov r1,r3
	b else
	