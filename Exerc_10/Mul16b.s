        PUBLIC Mul16b

        SECTION .text:CODE:REORDER(1)

        THUMB

Mul16b
        PUSH {R0, R1, R3}
        MOV R2, #0
        MOV R3, #16
loop
        CBZ R3, exit
        LSRS R1, R1, #1
        IT CS
        ADDCS R2, R2, R0
        BEQ exit
        LSL R0, R0, #16
        SUB R3, R3, #1
        B loop
exit
        POP {R0, R1, R3}
        BX LR
        
        END