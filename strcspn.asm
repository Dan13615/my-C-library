BITS 64
SECTION .text
global strcspn

strcspn:
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
        je .next
        cmp [rdi + rax], bl
        je .end
        inc rcx
        jmp .cond

    .next :
        inc rax
        jmp .loop

    .end :
        ret