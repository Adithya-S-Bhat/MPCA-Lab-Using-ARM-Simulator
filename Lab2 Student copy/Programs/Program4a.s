.data
A:.word 53920142
B:.word 38296104
C:.word 0

.text
ldr r1,=A
ldr r2,=B
ldr r3,=C
ldr r4,[r1]
ldr r5,[r2]
adds r6,r4,r5
str r6,[r3]
swi 0x11