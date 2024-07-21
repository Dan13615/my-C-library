BITS 64
SECTION .text
global memset

memset:
    xor rax, rax

    .loop:
        cmp rax, rdx
        je .end
        mov [rdi + rax], rsi
        inc rax
        jmp .loop

    .end:
        mov rax, rdi
        ret