.model tiny
.386
.data
CounterRow dw ?
CounterCol dw ?
PixelRow dw ?
PixelColumn dw ?
IniX1 equ 40
IniY1 equ 40

IniX2 equ 140
IniY2 equ 140

.code
.startup
mov ah, 0Fh ;Get Display Mode
int 10h

mov ah, 00h ;Set Display Mode
mov al, 12h
int 10h

mov PixelRow, IniY1
mov PixelColumn, IniX1
mov CounterRow, 100

x1: mov CounterCol, 100
    mov PixelColumn, IniX1

x2: mov ah, 0Ch ;Fill a Pixel(Set Pixel)
mov al, 01h
mov cx, PixelColumn
mov dx, PixelRow
int 10h
inc PixelColumn
dec CounterCol
jnz x2
inc PixelRow
dec CounterRow
jnz x1

;second square
mov PixelRow, IniY2
mov PixelColumn, IniX2
mov CounterRow, 100

x3: mov CounterCol, 100
    mov PixelColumn, IniX2

x4: mov ah, 0Ch ;Fill a Pixel(Set Pixel)
mov al, 04h
mov cx, PixelColumn
mov dx, PixelRow
int 10h
inc PixelColumn
dec CounterCol
jnz x4
inc PixelRow
dec CounterRow
jnz x3

.exit
end