BITS 64
SECTION .text
global memcpy

memcpy:
    xor rax, rax

    .loop:
        cmp rax, rdx
        je .end
        mov bl, [rsi + rax]
        mov [rdi + rax], bl
        inc rax
        jmp .loop

    .end:
        mov rax, rdi
        ret