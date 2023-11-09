; The code here is NASM assembler

; Here we can define constants
MY_CONSTANT equ 543

section .data

; Data type sizes
byte_var db 1        ; db - Byte        (1 bytes)
word_var dw 2        ; dw - Word        (2 bytes)
double_word_var dd 3 ; dd - Double Word (4 bytes)
quad_word_var dq 4   ; dq - Quad Word   (8 bytes)

MY_VAR dq 10

section .text
global main

; main is a label
main:
    mov rbp, rsp; for correct debugging
    ; Comment format
    
    mov rax, qword[MY_VAR]  ; Move content of MY_VAR variable to RAX
    
    mov rbx, MY_CONSTANT    ; Move content of constant value to RBX
    
    xor rax, rax
    ret