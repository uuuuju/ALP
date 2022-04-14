.model tiny
.data
ARRAY DB 91H,02H,83H,FFH,75H,06H,07H,47H,12H,90H ;array of bytes
RES DB ? ;Reserving place for result
.code
.startup
        LEA BX,ARRAY ;Offset value will be moved TO BX, BX is now going to be pointer register,BX now points to data 91h
        MOV CL,0AH
        MOV AL,[BX] ;Since contents of two memory locations cannot be compared, moving the first value of ARRAY to AL
        DEC CL
        INC BX ;now points to data 02h
        
X2: CMP AL,[BX] ;91h is compared with 02H, Aim of the routine is to ensure that AL always has the greatest number 
    JLE X1 ;Jump if less than or equal to to X1 location. 
    MOV AL,[BX] ;If it is not lesser than or equal to X1, the content of the memory is now transferred to AL, this ensures that AL has the least no.
   
X1: INC BX
    DEC CL
    JNZ X2
    MOV RES,AL
.exit
end
