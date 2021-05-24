.data
A:.word 31,63 ;6331
B:.word 63,19 ;1963
C:.word 0,0
.text
ldr r1,=A
ldr r2,=B
ldr r3,=C
ldr r4,[r1],#4
ldr r5,[r2],#4
adds r6,r4,r5
str r6,[r3],#4
ldr r7,[r1]
ldr r8,[r2]
adc r9,r8,r7
str r9,[r3]
swi 0x11