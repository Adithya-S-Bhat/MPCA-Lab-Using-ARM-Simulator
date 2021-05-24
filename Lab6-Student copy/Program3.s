.word
string:.asciz "PESU"
delay:.word 80000
.text
ldr r2,=string
mov r0,#30
mov r1,#7
loop:
	swi 0x204
	ldr r4,=delay
	ldr r4,[r4]
	delayloop:
		sub r4,r4,#1
		cmp r4,#0
		bne delayloop
	swi 0x206
	sub r0,r0,#5
	cmp r0,#0
	bne loop
swi 0x11