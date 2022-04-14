.model tiny
.data
ARRAY DB 91H,02H,83H,FFH,75H,06H,07H,47H,12H,90H
RES DB ?
.code
.startup
        LEA BX,ARRAY
        MOV CL,0AH
        MOV AL,[BX]
        DEC CL
        INC BX
X2: CMP AL,[BX]
    MOV AL,[BX]
    JGE X1
X1: INC BX
    DEC CL
    JNZ X2
    MOV RES,AL
.exit
end
