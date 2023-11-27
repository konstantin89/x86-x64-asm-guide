section .data
loc dq 0

section .text
global main
main:
    mov rbp, rsp; for correct debugging
    
; ----------- JMP -----------------
; jmp label
; jmp reg
; jmp mem

    mov qword[loc], label_1
    jmp qword[loc]
    
    mov rax, 1
    
label_1:
   
; ----------- test (logical AND) --------------
; test operation does AND between the operands.
; It does not modify the operands, only the flags register.

    mov rax,  0001b
    test rax, 1001b
    test rax, 1000b ;Zero flag is on after this command

; ----------- cmp (subtraction operation) ----------

    mov rax, 3
    cmp rax, 2
    cmp rax, 3

    xor rax, rax
    ret