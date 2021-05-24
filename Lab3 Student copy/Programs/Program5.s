.data
A:.word 12,32,45,28,21
.text
ldr r0,=A
mov r1,#45
mov r2,#5
loop:
	ldr r3,[r0],#4
	cmp r3,r1
	beq found
	sub r2,r2,#1
	cmp r2,#0
	bne loop
mov r6,#-1
swi 0x11
	

found:
	mov r6,#1
	rsb r7,r2,#6
	swi 0x11