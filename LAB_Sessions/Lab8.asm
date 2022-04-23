.model tiny
.data
.386

string1 db 'JANVI $',0
string2 db '2020A8PS0901P $',0

.code
.startup

;set display mode
MOV AH,00H
MOV AL,03h
INT 10H

mov  ah, 02h  ;SetCursorPosition
mov  dl, 00  ;Column
mov  dh, 01   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'J'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 01  ;Column
mov  dh, 01   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'A'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 02  ;Column
mov  dh, 01   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'N'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 03  ;Column
mov  dh, 01   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'V'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 04  ;Column
mov  dh, 01   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'I'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 79  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'P'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 78  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'1'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 77  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'0'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 76  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'9'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 75  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'0'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 74  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'S'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 73  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'P'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 72  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'8'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 71  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'A'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 70  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'0'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 69  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'2'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

mov  ah, 02h  ;SetCursorPosition
mov  dl, 68  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'0'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h


mov  ah, 02h  ;SetCursorPosition
mov  dl, 67  ;Column
mov  dh, 23   ;Row
mov  bh, 0    ;Display page
int  10h

mov ah,09h
mov al,'2'
mov bh,00h
mov bl,00001110b
mov cx,01h
int 10h

.EXIT
END
