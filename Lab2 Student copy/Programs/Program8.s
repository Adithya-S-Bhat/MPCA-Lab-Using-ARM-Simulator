.data
A:.word 13
B:.word 5

.text
ldr r0,=A
ldr r1,=B
ldr r2,[r0]
ldr r3,[r1]
add r4,r2,r3
add r5,r3,r3,lsl #1
add r6,r4,r5
swi 0x11