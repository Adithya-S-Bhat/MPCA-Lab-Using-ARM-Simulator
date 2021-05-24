.data
a:.asciz "The result is:\nSubject Code Marks\nSubject1 90\nSubject2 93\nSubject3 78\n\nTotal Marks Scored: 261/300\nPercentage: 87%\n"

.text
ldr r1,=a
loop:
        ldrb r0,[r1],#1
        swi 0x00
        cmp r0,#0
        bne loop
swi 0x11