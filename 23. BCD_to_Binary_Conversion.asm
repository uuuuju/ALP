.model tiny
.data
BCD_IMPUT EQU 46H
.code
.startup
MOV AL, BCD_INPUT; Passing parameter using register
CALL BCD_BIN
.exit

BCD_BIN PROC NEAR
        PUSHF
        PUSH BX
        PUSH CX
        MOV BL,AL
        AND BL,0FH ;masking upper nibble
        AND AL,0F0H ;masking lower nibble
        MOV CL,04H
        ROR AL,CL ;Rotating left/right by 4 units to exchange nibbles
        MOV BH,0AH
        MUL BH
        ADD AL,BL
        POP CX
        POP BX
        POPF
        RET
BCD_BIN ENDP
end
