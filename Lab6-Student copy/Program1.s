.data
delay:.word 90000
.text
mov r0,#1
loop:
       swi 0x201
	ldr r1,=delay
	ldr r1,[r1]
       delayloop:
                sub r1,r1,#1
                cmp r1,#0
                bne delayloop
        add r0,r0,#1
        cmp r0,#4
        bne loop
swi 0x11