BITS 64
SECTION .text
global strstr

strstr:
    xor rax, rax
    xor rdx, rdx

    cmp byte [rsi], 0
    je .end

    .loop:
        cmp byte [rdi], 0
        je .end_null
        mov r10b, [rsi]
        cmp byte [rdi], r10b
        je .find
        inc rdi
        jmp .loop

    .reset_counter:
        xor rdx, rdx
        inc rdi
        jmp .loop

    .find:
        cmp byte [rsi + rdx], 0
        je .end
        mov r10b, byte[rsi + rdx]
        cmp byte[rdi + rdx], r10b
        jne .reset_counter
        inc rdx
        jmp .find

    .end_null:
        xor rax, rax
        ret

    .end:
        mov rax, rdi
        ret
