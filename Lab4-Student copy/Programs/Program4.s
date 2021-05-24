.data
a:.word 10,20,30,40,50,60,70,80,90
b:.word 0,0,0

.text
ldr r0,=a
mov r1,#1
mov r2,#3
mov r3,#1
mov r4,#4
mla r5,r1,r2,r3
mul r5,r4,r5
ldr r6,=b
ldr r7,[r0,r5]
str r7,[r6],#4

mov r1,#2
mov r3,#1
mla r5,r1,r2,r3
mul r5,r4,r5
ldr r7,[r0,r5]
str r7,[r6],#4

mov r1,#0
mov r3,#0
mla r5,r1,r2,r3
mul r5,r4,r5
ldr r7,[r0,r5]
str r7,[r6],#4

swi 0x11