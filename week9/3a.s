.data
a:.word 32
b:.word 21
c:.word 21
x:.word
.text
ldr r0,=a
ldr r1,=b
ldr r2,=c
ldr r3,[r0]
ldr r4,[r1]
ldr r5,[r2]
ldr r6,=x
add r7,r3,r4
sub r7,r7,r5
str r7,[r6]
swi 0x11