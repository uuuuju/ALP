;Write a program that counts  the number of 1's in a byte in a location DATA1 and writes it into location RES1

.model tiny
.data
DATA1 DB 0A7H ; 1010 0111
RES1 DB ?
.code
.startup
SUB BL,BL  ;Clears BL Register, equivalent to MOV BL,0 ,XOR BL,BL (0 when something is XORed with itself)
MOV DL,8 ;moving to a register to rotate 8 times
MOV AL,DATA1
AGAIN: ROL AL,1  ;rotating it once gives 0100 1111 and CF=1
       JNC NEXT ;Checking whether the carry is set or not, if the carry is set, transfer control to a location called Next
       INC BL; if previous line is ignored i.e., if CF=1 then inc count 
NEXT: DEC DL ;go through this 8 times
      JNZ AGAIN  ;jump if no zero, if not finished go back
      MOV RES1,BL
.exit
end
