  .model tiny
  .386
  .data
  array1 db 0ah, bch, deh, 0fh, 56h, ffh, ffh, 23h, 4ah
  array2 db dup(0)
  .code
  .startup
          mov cx,32h
          lea si,array1 ;loads the offset of array1 into SI
          lea di,array2 ;effective address of the destination is moved into the DI register
  
  ;Previously,
  ;x1: MOV BL,[SI] ;[SI] points to the first memory location which has 0a, 0a is now transferred into BL register
     ; MOV [DI],BL ;From here, I transferred it into the destination's first location
     ; INC SI ;Incrementing Source address
     ; INC DI
     ; DEC CX
     ; JNZ X1 ;Check whether count has reached 0
     
;using string instructions
CLD ;clears the direction flag, meaning that after every move operation, the SI and DI must be incremented. If I set the clear flag, by using STD, the address would've been incremented
REP MOVSB ;MOVSB would transfer the data from first location of the source to the first location in the destination. It'll increment the SI and DI. REP ensures that it does this 32 times until count value reaches 0
;REP is not an instruction, it is an INSTRUCTION PREFIX. This prefix causes this instruction to be executed until CX reaches 0.
  
          
