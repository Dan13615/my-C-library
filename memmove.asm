BITS 64
SECTION .text
global memmove

memmove:
    xor rax, rax
    xor r10, r10

    cmp rdx, 0
    je .end
    cmp rdi, rsi
    je .end
    jb .forward

    mov rcx, rdi
    sub rcx, rsi
    cmp rdx, rcx
    jb .forward

    dec rdx

    .backward:
        cmp rdx, -1
        je .end
        mov r10b, [rsi + rdx]
        mov [rdi + rdx], r10b
        dec rdx
        jmp .backward

    .forward:
        cmp rax, rdx
        je .end
        mov r10b, [rsi + rax]
        mov [rdi + rax], r10b
        inc rax
        jmp .forward

    .end:
        mov rax, rdi
        ret
