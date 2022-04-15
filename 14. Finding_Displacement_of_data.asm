;write an ALP to find the displacement at which the data 0Dh is present from an array of data stored from location DAT1. The number of bytes of data in the array is 80.
;one prefix used with SCASB is REPNE- Repeat if not equal (causes the instr to repeat until count value is 0)

.model tiny
.data
DAT1 DB 80 DUP(?)
.code
.startup
        MOV DI,OFFSET DAT1
        MOV AL,0DH
        MOV CX,80 ;Number of memory locations that I'm going to scan
        CLD ;Clearing the direction flag will cause the DI register to be incremented by 1 after every string instruction has been executed
        REPNE SCASB ;Compares the value in AL with one memory location after the other, if it gets a match,it exits
.exit
end

;the spot where SCASB stopped can be known by examining the DI register 

