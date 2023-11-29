section .data
var dq 10

section .text
global main

main:
    mov rbp, rsp; for correct debugging

; LEA - load effective address
    
    lea rax, [var]              ; Now rax has address of var
    mov rbx, qword[rax]         ; RBX <- var
    
    ; lea allows arithmetic operations of the address
    lea rdx,[rax+10]

    xor rax, rax
    ret