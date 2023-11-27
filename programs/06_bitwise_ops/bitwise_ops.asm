section .text
global main
main:
    mov rbp, rsp; for correct debugging
    
; AND
    mov rbx, 01010101b
    mov rcx, 01010000b
    and rbx, rcx
    and rbx, 01000000b
    
; OR
    mov rbx, 0101b
    mov rcx, 1000b
    or rbx, rcx
   
; XOR
    mov rbx, 0101b
    mov rcx, 0001b
    xor rbx, rcx 
    
; NOT
    mov rax, 1111b
    not rax
    
    xor rax, rax
    ret