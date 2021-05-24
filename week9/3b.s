.data
a:.word 21
b:.word 12
z:.word
.text
ldr r0,=a
ldr r1,=b
ldr r2,=z
ldr r3,[r0]
ldr r4,[r1]
mov r5,r3,lsl #2
and r6,r4,#15
orr r7,r6,r5
str r7,[r2]
swi 0x11