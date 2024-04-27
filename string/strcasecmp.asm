BITS 64
SECTION .text
global strcasecmp

strcasecmp:
    xor rax, rax
    xor rcx, rcx
    xor r10, r10
    xor r11, r11

    cmp rdi, 0
    je .end
    cmp rsi, 0
    je .end

    .loop:
        mov r10b, byte [rdi + rcx]
        mov r11b, byte [rsi + rcx]

    .r10bislower:
        cmp r10b, 'A'
        jb .r11bislower
        cmp r10b, 'Z'
        ja .r11bislower
        add r10b, 32

    .r11bislower:
        cmp r11b, 'A'
        jb .next
        cmp r11b, 'Z'
        ja .next
        add r11b, 32

    .next:
        cmp r10b, r11b
        jne .end
        cmp r10b, 0
        je .end_null
        cmp r11b, 0
        je .end_null
        inc rcx
        jmp .loop

    .end:
        movzx rax, r10b
        movzx rcx, r11b
        sub rax, rcx
        ret

    .end_null:
        xor rax, rax
        ret
