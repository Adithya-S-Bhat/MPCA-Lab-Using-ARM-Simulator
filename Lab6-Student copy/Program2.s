.word;ABCPDEFG
nums:.word  0b11101101,0b01100000,0b11001110,0b11101010,0b01100011,0b10101011,0b10101111,0b11100000,0b11101111,0b11101011,0b11100111,0b00101111,0b10001101,0b01101110,0b10001111,0b10000111
delay:.word 90000
.text
swi 0x202
ldr r1,=nums
cmp r0,#1
beq downcounter
upcounter:;r0 is 2 for right button
	loop1:
		ldrb r0,[r1],#4
		swi 0x200
		ldr r2,=delay
		ldr r2,[r2]
		delayloop1:
			sub r2,r2,#1
			cmp r2,#0
			bne delayloop1
		add r3,r3,#1
		cmp r3,#16
		bne loop1
b exit
downcounter:
	add r1,r1,#60
	loop2:
		ldrb r0,[r1],#-4
		swi 0x200
		ldr r2,=delay
		ldr r2,[r2]
		delayloop2:
			sub r2,r2,#1
			cmp r2,#0
			bne delayloop2
		add r3,r3,#1
		cmp r3,#16
		bne loop2
exit:
swi 0x011