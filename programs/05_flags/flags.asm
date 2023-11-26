section .data
    var1 dd 2147483647   ; Maximum signed 32-bit integer value
    var2 dd 1            ; Adding 1 to the maximum value will cause overflow

    var3 dd 4294967295   ; Maximum unsigned 32-bit integer value
    var4 dd 1            ; Adding 1 to the maximum value will cause a carry
    
section .text
global main
main:
    mov rbp, rsp; for correct debugging


;ZF (Zero Flag): Set if the result of an operation is zero.
    mov rax, 0
    add rax, 0
    
    jz sign_flag        ; js - jump if zero
    
;SF (Sign Flag): Set if the result of an operation is negative.
sign_flag:
    mov rax, 0
    sub rax, 1
    
    js overflow_flag    ;js - jump if signed
     
    
;OF (Overflow Flag): Set if there is signed arithmetic overflow.
overflow_flag:
    mov eax, [var1]
    add eax, [var2]
    
    jo carry_flag ; jump if overlflow
    
;CF (Carry Flag): Set if there is an unsigned arithmetic carry-out or borrow.
carry_flag:    
             
    mov eax, [var3]
    adc eax, [var4]  ; Use adc (add with carry) instead of add
     
           
    ;write your code here
    xor rax, rax
    ret