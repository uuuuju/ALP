.model tiny
.data
BLOCK1 DW 100DUP(?)
BLOCK2 DW 100DUP(?)
COUNT DW 100
.code
.startup
        CLD
        MOV CX,COUNT
        MOV SI,OFFSET BLOCK1
        MOV DI,OFFSET BLOCK2
 X1: LODSW  ; AX<-DS:[SI], SI+2
     ADD AX,[SI]
     STOSW ; ES:[DI]<-AX,DI+2
     LOOP X1 ;Loop decrements the CX register
.exit
end
