mov r0,#3
mov r1,r0,lsl #5; *32
add r2,r0,r0,lsl #1 ;*3
add r1,r1,r2 ;*(32+3)
swi 0x11