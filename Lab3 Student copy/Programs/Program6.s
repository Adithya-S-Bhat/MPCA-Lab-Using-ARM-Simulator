.data
A:.word
.text
mov r0,#0
mov r1,#1
mov r4,#10
ldr r2,=A
str r0,[r2],#4
str r1,[r2],#4
loop:
	add r3,r0,r1
	str r3,[r2],#4
	mov r0,r1
	mov r1,r3
	sub r4,r4,#1
	cmp r4,#0
	bne loop
swi 0x11