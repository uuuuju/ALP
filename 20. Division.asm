MOV AL,04H
MOV BL, 02H
CBW  ;Now AX has 0004
DIV BL
;Remainder is stored in AH, Quotient is stored in AL
