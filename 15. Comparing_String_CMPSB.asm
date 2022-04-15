MOV SI, OFFSET STRING FIRST
MOV DI, OFFSET STRING SECOND
CLD
MOV CX,100
REPE CMPSB ;repeat until end of string(CX!=0) or until compared bytes are not equal
