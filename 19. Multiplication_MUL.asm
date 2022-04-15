.model tiny
.data
multiplicand dw 2040h
multiplier dw 2000h
product1 dw ? ;for lower word of the product
product2 dw ? ;for upper word of the product
.code
.startup
       MOV AX,MULTIPLICAND
       MUL MULTIPLIER
       MOV PRODUCT1,AX
       MOV PRODUCT2,DX ;since upper bytes are stored in the DX register
.exit
end
