        [org 0x7c00]
        mov cx, 0
buffer:
        times 10 db 0
        mov bx, buffer
character:
        mov ah, 0
        int 0x16
        mov ah, 0x0e
        mov [bx], al
        int 0x10
        inc bx
        inc cx
        cmp cx, 10
        jne character
exit:
        jmp $
        times 510-($-$$) db 0
        dw 0xaa55
