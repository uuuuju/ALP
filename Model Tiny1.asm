.Model Tiny
.386 
.data
COUNT EQU 32H ;Replace count by 32h wherever encountered
VAL1 EQU 0030H  ;Replace Val with 0030h wherever encountered
DAT1 DB 45H,67H,100,'A' ;Define DAT1 byte starting with 45h
WRD DW 10H, 3500H,0910H  ;Define WRD word starting with 10h (will take 2 blocks of memory)
DAT2 DD 0902H ;Define double word DAT2 that will take 4 blocks of memory
DAT3 DW 2 DUP(0) ;Define word DAT3 that will have 0000,2 DUP-replicate twice
DAT4 DB 56H ;Define DAT4 Byte with 56h
RES DB 10 DUP(?) ;Reserve-RES 10 bytes
DWRD DD 01020304H ;Define DWRD double word with 01020304
.CODE
.STARTUP
MOV SI,DAT3 ;SI now has 0000-Direct Addressing
MOV AL, DAT1 + 1 ;AL now has 67h since DAT1 points to 45h and the next block contains 67h
MOV BX,WORD PTR DAT1 + 4 ;BX now has 10h
ADD BX,20H ;BX now is 30h
MOV AL,[BX] ;Move whatever is stored at 0030h to AL(56 is stored at 0030h)
LEA BX,DAT4 ;loads offset of DATA4 into BX that is now BX points to 0030h
MOV AL,[BX] ;AL now has whatever is stored at the location pointed by BX and that is 56
MOV BX,VAL1 ;Now BX=0030h
MOV AL,FS:[BX]
MOV EBX, DWRD
.EXIT
END
