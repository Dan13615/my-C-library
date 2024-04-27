BITS 64
SECTION .text
global strlen

strlen:
    xor rax, rax

    .loop:
        cmp byte [rdi + rax], 0
        je .end
        inc rax
        jmp .loop

    .end:
        ret