.data
A:.hword 17
B:.hword 15
C: .hword

.text
ldr r1,=A
ldr r2,=B
ldr r3,=C
ldrh r4,[r1]
ldrh r5,[r2]
adds r6,r4,r5
strh r6,[r3]
swi 0x11
