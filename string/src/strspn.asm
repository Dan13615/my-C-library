BITS 64
SECTION .text
global strspn

strspn:
    xor rax, rax
    xor rcx, rcx

    cmp rdi, 0
    je .end
    cmp rsi, 0
    je .end

    .loop:
        cmp byte [rdi + rax], 0
        je .end

    xor rcx, rcx

    .cond:
        mov bl, [rsi + rcx]
        cmp bl, 0
        je .end
        cmp [rdi + rax - 1], bl
        je .inc_rax
        inc rcx
        jmp .cond

    .inc_rax:
        inc rax
        jmp .loop

    .end:
        ret