.model tiny
.data
dat1 db 'a' ;storing a in dat1
     align 2  ;aligns data to the even boundary, any data that follows this assembler directive is stored in an even memory location
dat2 db 'b' ;storing b in dat2
.code
.startup
        mov al,dat1 ;61 is moved into AL register, ASCII value of A
        add dat2, al
.exit
end
