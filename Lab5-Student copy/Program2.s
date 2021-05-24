.data
a:.asciz "Myname"
.text
ldr r1,=a
loop:
        ldrb r0,[r1],#1
        add r10,r10,#1
        cmp r0,#0
        bne loop
swi 0x11