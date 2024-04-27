BITS 64
SECTION .text
global strchr
global index

index:
strchr:
    xor rax, rax

    cmp rsi, 0
    je .loopnull

    .loop:
        cmp byte [rdi], 0
        je .endnull
        cmp byte [rdi], sil
        je .end
        inc rdi
        jmp .loop

    .loopnull:
        cmp byte [rdi], 0
        je .end
        inc rdi
        jmp .loopnull

    .endnull:
        xor rax, rax
        ret

    .end:
        mov rax, rdi
        ret

