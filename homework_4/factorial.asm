%include "io64.inc"
section .text
global CMAIN
CMAIN:
    mov rax, 1
    mov rcx, 1
    GET_DEC 8, rbx
    .for:
        mul rcx
        inc rcx
        cmp rcx, rbx
        jne .for
    
    PRINT_DEC 8, rax
    xor rax, rax
    ret
