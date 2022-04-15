SAL BX,1 ;Shifts the contents of BX register left by 1 [Shift Arithmetic Left]
MOV CL,02
SAL BP,CL
SAL BYTE PTR[BX], 1
SAL EAX,12

SHL BP,1 ;Shift Logic Left
MOV BL,AL  ;BL had 43,
AND BL,0FH  ;And with 0, so masks the upper nibble, BL will now have 03
MOV CL,04H
SHR AL,CL
MOV BH,AL ;BH now has 04

;This program seperates out the digits of a number 
;SAR-Arithmetic Shift Right and SHR-logic shift right

SAR DI,1
MOV CL,02H
SAR WORD PTR[BP],CL

;SHR of 1000 1111 is 0100 0111
;SAR of 1000 1111 is 1100 0111 ,sign is retained
