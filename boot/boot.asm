mov ah, 0x0e

mov al, 'H' 
int 0x10 
mov al, 'e'
int 0x10 
mov al, 'l'
int 0x10 
mov al, 'l'
int 0x10 
mov al, 'o'
int 0x10

loop:
    jmp loop

; Fill with 510 zeros minus the size of the previous code
times 510-($-$$) db 0
; This need to the bios recognize this as a bootable file
dw 0xaa55 