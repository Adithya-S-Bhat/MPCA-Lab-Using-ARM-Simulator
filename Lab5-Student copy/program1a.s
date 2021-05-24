.data
a:.asciz "The result is:\nSubject Code Marks\nSubject1 90\nSubject2 93\nSubject3 78\n\nTotal Marks Scored: 261/300\nPercentage: 87%\n"

.text
ldr r0,=a
swi 0x02
swi 0x11