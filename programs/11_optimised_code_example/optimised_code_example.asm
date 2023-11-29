section .text
global main

; param1: rcx
; param2: rdx
; param3: rsi (source index)
; param4: rdi (destination index)
add_4_nums:
    add rdx, rcx
    add rdi, rsi
    lea rax, [rdx+rdi]
    ret
main:
    mov rbp, rsp; for correct debugging

    mov rcx, 1
    mov rdx, 2
    mov rsi, 3
    mov rdi, 4
    call add_4_nums

    ;write your code here
    xor rax, rax
    ret