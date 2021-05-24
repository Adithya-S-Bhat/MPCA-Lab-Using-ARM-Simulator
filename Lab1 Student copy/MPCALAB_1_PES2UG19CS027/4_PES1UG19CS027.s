mov r1,#0x05
and r2,r1,#1
cmp r2,#0
beq loop
mov r0,#0xFF
swi 0x11

loop: mov r0,#0
swi 0x11