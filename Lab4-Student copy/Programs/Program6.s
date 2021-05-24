.data
a:.byte 1,2,3,4,2,3,1,2,1
b:.byte 0

.text
ldr r0,=a
ldr r1,=b
mov r2,#0
mov r3,#3
loop1:
	mov r4,#0
	loop2:
		mla r5,r2,r3,r4
		ldrb r6,[r0,r5]
		add r7,r6,r7
		cmp r4,#2
		add r4,r4,#1
		bne loop2
	cmp r2,#2
	add r2,r2,#1
	bne loop1

strb r7,[r1]
swi 0x11