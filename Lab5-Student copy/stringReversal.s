.data
a:.asciz "Hello world"
b:.asciz""
.text
ldr r0,=a
ldr r2,=b
loop:
	ldrb r1,[r0],#1
	cmp r1,#0
	bne loop
sub r0,r0,#2
loop1:
	ldrb r1,[r0],#-1
	strb r1,[r2],#1
	cmp r1,#0
	bne loop1
ldr r0,=b
swi 0x02
swi 0x11