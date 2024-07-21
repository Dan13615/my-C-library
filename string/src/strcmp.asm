BITS 64
SECTION .text
global strcmp

strcmp:
    xor rax, rax
    xor rdx, rdx
    xor rcx, rcx
    xor r10, r10

    .loop:
        mov dl, [rsi + rcx]
        cmp [rdi + rcx], dl
        jne .return
        cmp byte [rdi + rcx], 0
        je .end
        cmp byte [rsi + rcx], 0
        je .end
        inc rcx
        jmp .loop

    .return:
        mov dl, [rdi + rcx]
        mov r10b, [rsi + rcx]
        cmp dl, r10b
        jg .negative
        sub rdx, r10
        mov rax, rdx
        jmp .end

    .negative:
        sub r10, rdx
        neg r10
        mov rax, r10

    .end:
        ret
