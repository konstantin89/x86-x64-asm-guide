
section .data 
counter dq 0 ; quad word (2 * 4 bytes = 8 bytes = 8*8 bits)

;constant
LOOP_ITERATIONS equ 4

section .text

global main
main:
    mov rbp, rsp; for correct debugging
    
    mov qword [counter], LOOP_ITERATIONS

loop:
    mov rax, [counter]      ;rax <- [counter]
    sub rax, 1              ;rax--
    
    mov [counter], rax      ;[counter] <- rax
    
    cmp rax, 1              ;
    jge loop
    
    
    xor rax, rax
    ret