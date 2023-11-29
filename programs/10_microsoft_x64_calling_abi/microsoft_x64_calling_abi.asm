;The first four arguments are placed onto the registers. 
;That means RCX, RDX, R8, R9 (in that order) for integer, 
;struct or pointer arguments, 
;and XMM0, XMM1, XMM2, XMM3 for floating point arguments.

;Additional arguments are pushed onto the stack (right to left). 

;Integer return values (similar to x86) are returned in RAX if 64 
;bits or less. Floating point return values are returned in XMM0.


section .text
global main

add_two_numbers:
    ; Parameters:
    ;   - First parameter:  rcx
    ;   - Second parameter: rdx

    ; Perform the addition
    mov     rax, rcx        ; Move the first parameter to rax
    add     rax, rdx        ; Add the second parameter to rax

    ; The result is now in rax

    ret

main:
    mov rbp, rsp; for correct debugging

    mov rcx, 3
    mov rdx, 5
    
    ; What does call does:
    ; * Push return address
    ; * Jump to the given subroutine 
    call add_two_numbers

    mov rcx, 3
    mov rdx, 2
    call add_two_numbers
    
    ;write your code here
    xor rax, rax
    ret