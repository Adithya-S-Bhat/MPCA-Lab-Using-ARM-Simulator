.data
a:.asciz "Hello world"
b:.asciz ""
.text
ldr r0,=a
ldr r1,=b
loop:
        ldrb r2,[r0],#1
        strb r2,[r1],#1
        cmp r2,#0
        bne loop
ldr r0,=b
swi 0x02
swi 0x011