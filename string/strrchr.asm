BITS 64
SECTION .text
global strrchr
global rindex

rindex:
strrchr:
    xor rax, rax
    xor rbx, rbx

    cmp rsi, 0
    je .end_null

    .loop:
        cmp byte [rdi], 0
        je .end
        cmp byte [rdi], sil
        je .save
        inc rdi
        jmp .loop

    .save:
        mov rax, rdi
        inc rdi
        jmp .loop

    .end_null:
        cmp byte [rdi], 0
        je .return_null
        inc rdi
        jmp .end_null

    .return_null:
        mov rax, rdi

    .end:
        ret
