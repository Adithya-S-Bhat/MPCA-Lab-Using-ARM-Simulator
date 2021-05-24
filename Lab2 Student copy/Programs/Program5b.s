.data
A:.word 15
B:.word 20
C:.word

.text
ldr r0,=A
ldr r1,=B
ldr r2,=C
ldr r3,[r0]
ldr r4,[r1]
cmp r3,r4
beq end
loop:
	subpl r3,r3,r4
	submi r4,r4,r3
	cmp r3,r4
	bne loop

end: 
	str r3,[r2]
	swi 0x11