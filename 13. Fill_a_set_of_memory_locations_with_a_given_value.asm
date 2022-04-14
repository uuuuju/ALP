.model tiny
.data
DAT1 DB 100DUP(?) ;reserving 100 bytes of memory
.code
.startup
        MOV DI,OFFSET DAT1 ;offset of dat1 is transferred to DI, Could use LEA instead
        MOV AL, 0F6H ;No data can start with an alphabet thats why 0F6. any data must start with a numeric value  
        MOV CX, 100
        CLD
        REP STOSB
 .exit
 .end
        
;Write an ALP to fill a set of 100 memory locations starting at displacement 'DISI' with the value F6H
