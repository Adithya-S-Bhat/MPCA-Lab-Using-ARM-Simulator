.data
A:.word 12,-3,21,0,-129
.text
ldr r0,=A
mov r1,#5
loop:
	ldr r2,[r0],#4
	cmp r2,#0
	beq zero
	bpl positive
	bmi negative
	else:
		sub r1,r1,#1
		cmp r1,#0
		bne loop
swi 0x11

zero:
	add r3,r3,#1
	b else
positive:
	add r4,r4,#1
	b else
negative:
	add r5,r5,#1
	b else
