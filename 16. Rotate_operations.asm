ROL AX,1 ; Rotate left 
ROR byteptr[si],1 ;Rotate right-memory location by 1, we indicate that its 8 bits of data using 'byte'ptr
;To rotate more than once in a 8086 or 80286b processor, a count value is first loaded into a register and then use ROL
MOV CL,04H
ROL AX,CL
ROR byteptr[si],cl ;Rotating the contents of a memory location
ROL ECX,12 ;can directly specify no. of times you want to rotate in 80386b processor even if its greater than 1

;MSB will be copied into the carry flag in ROL
;LSB will be copied into the Carry flag in ROR
ROL BL,04 ;Initially BL had 1001 1100, 1. 0011 1001, 2. 0111 0010, 3. 1110 0100, 4. 1100 1001 (effectively the upper nibble has been swapped with the lower nibble)
ROR WORD PTR[BX], 04
