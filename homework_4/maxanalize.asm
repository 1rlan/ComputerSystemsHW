%include "io64.inc"
section .text
global CMAIN
CMAIN:
    mov rax, 1
    mov rcx, 1
    .for:
        mul rcx
        inc rcx
        cmp rax, 0
        jg .for

    dec rcx
    PRINT_DEC 8, rcx
    xor rax, rax
    ret
