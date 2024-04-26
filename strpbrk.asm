BITS 64
SECTION .text
global strpbrk

strpbrk:
    xor rax, rax
    xor rcx, rcx
    xor rbx, rbx

    .loop:
        cmp byte [rdi], 0
        je .end
        jmp .reset_rcx

    .reset_rcx:
        xor rcx, rcx
        jmp .cond

    .incrdi:
        inc rdi
        jmp .loop

    .cond:
        cmp byte [rsi + rcx], 0
        je .incrdi
        mov bl, [rsi + rcx]
        cmp [rdi], bl
        je .return
        inc rcx
        jmp .cond

    .return:
        mov rax, rdi
        jmp .end

    .end:
        ret