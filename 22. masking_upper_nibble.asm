.model tiny
.data
dat1 db '1','2','3','4',5','6','7','8','9','10'
res db 10dup(0)
stack1 dw 10dup(?)
top_stack1 label word
.code 
.startup
        lea sp,top_stack1
        lea si,dat1
        lea di,res
        mov cx,100
x1: lodsb
    call mask
    loop x1
.exit

mask proc near
     and al,0fh
     stosb
     ret
mask endp
end
