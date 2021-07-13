        PUBLIC Fat32b

        SECTION .text:CODE:REORDER(1)

        THUMB

Fat32b
        PUSH {R1}
        MOV R1, R0
loop
        SUBS R1, R1, #1
        BEQ exit
        MUL R0, R0, R1
        B loop
exit
        POP {R1}
        BX LR
        
        END