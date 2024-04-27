BITS 64
SECTION .text
global strncmp

strncmp:
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx
    xor r10, r10

    .loop:
        cmp rdx, rcx
        je .end
        mov bl, [rsi + rcx]
        cmp [rdi + rcx], bl
        jne .return
        cmp byte [rdi + rcx], 0
        je .end
        cmp byte [rsi + rcx], 0
        je .end
        inc rcx
        jmp .loop

    .return:
        mov bl, [rdi + rcx]
        mov r10b, [rsi + rcx]
        cmp bl, r10b
        jg .negative
        sub rbx, r10
        mov rax, rbx
        jmp .end

    .negative:
        sub r10, rbx
        neg r10
        mov rax, r10

    .end:
        ret
