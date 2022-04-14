.model tiny
.data
DATA1 DB 23
DATA2 DW 9999H
DATA3 DW 9999
ARRAY DW 01,02,03,04,06,07,08
.code
.startup
        MOV BX, DATA2
        MOV CX, DATA3 ;CX now has the hexadecimal equivalent of 9999
        MOV DATA1,BL
        MOV DL,DATA1
        MOV DI,0002H ;DI now has 0002h
        MOV AX,ARRAY[DI] ;AX now contains the 2nd value of ARRAY
.exit
end
