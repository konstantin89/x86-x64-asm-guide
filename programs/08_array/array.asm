section .data

array dd 1,1,2,3,5,8 ; array of 4 byte long nums (32 bits)
array_size equ 6

section .text
global main
main:
    mov rbp, rsp; for correct debugging

; ------------ Direct addressing -----------

    mov rcx, array_size       ; counter
    mov rdx, array            ; element pointer
loop:

    mov R10D, dword[rdx] ; Here we have array element content
    
    add rdx, 4 ; Point to next element, each element is 4 bytes long.

    dec rcx      
    cmp rcx, 1
    jge loop


; ------------ Indirect addressing -----------
    
    mov rax, array
    mov rcx, 0
    
loop2:
    mov ebx, dword [array+rcx*4]  ; Here we have array element content
    
    inc rcx
    cmp rcx, array_size-1
    jle loop2

    ;write your code here
    xor rax, rax
    ret