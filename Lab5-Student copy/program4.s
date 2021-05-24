.data
String:.asciz "Hello world"
Character:.asciz "o"
Char:.asciz "Character '"
Success:.asciz"' is Present\n"
Failure:.asciz "' is not Present\n"
Occurence:.asciz ""
.text
ldr r1,=String
ldr r2,=Character
ldrb r9,[r2]
ldr r3,=Char
ldr r4,=Success
ldr r5,=Failure
ldr r8,=Occurence
loop:
        ldrb r6,[r1],#1
        cmp r6,r9
        addeq r7,r7,#1
        cmp r6,#0
        bne loop
cmp r7,#0
beq failure
success:
        mov r0,r3
        swi 0x02
        mov r0,r2
        swi 0x02
        mov r0,r4
        swi 0x02
        ;add r7,r7,#48
        ;strb r7,[r8]
        ;mov r0,r8
        ;swi 0x02
	mov r0,#1;r0 must contain value 1
	mov r1,r7
	swi 0x6B
        b exit
        

failure:
        mov r0,r3
        swi 0x02
        mov r0,r2
        swi 0x02
        mov r0,r5
        swi 0x02
exit:
        swi 0x011