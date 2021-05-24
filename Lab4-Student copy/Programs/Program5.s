.data
a:.byte 1,2,3,4,2,3,1,2,1
b:.byte 1,1,1,2,2,2,3,3,3
c:.byte 0,0,0,0,0,0,0,0,0

.text
ldr r0,=a
ldr r1,=b
ldr r2,=c
mov r3,#0
mov r4,#3
loop1:
	mov r5,#0
	loop2:
		mla r6,r3,r4,r5
		ldrb r7,[r0,r6]
		ldrb r8,[r1,r6]
		add r9,r7,r8
		strb r9,[r2,r6]
		cmp r5,#2
		add r5,r5,#1
		bne loop2
	cmp r3,#2
	add r3,r3,#1
	bne loop1

swi 0x11