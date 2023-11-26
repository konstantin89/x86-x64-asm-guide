section  .data
var1 dq 0 ; quad word = 8 bytes
var2 dq 0 ; quad word = 8 bytes

var3 db 0 ; byte

section .text
global main
main:
    mov rbp, rsp; for correct debugging
    
    ; ------- xchg command - exchange data --------
    mov rax, 6
    mov rbx, 7
    xchg rax, rbx      ;xchg [reg] [reg] 
    
    mov qword[var1], 3
    mov rax, 4
    xchg [var1], rax
    xchg rax, [var1]

    ; exchange memory content via register.
    ; This is not supported: xchg [var1], [var2]
    mov qword[var1], 3
    mov qword[var2], 4
    
    mov rax, [var1]
    xchg rax, [var2]
    mov [var1], rax
    
    ; ---- inc/dec commands (increase/decrease) ----
    mov rax, 0
    inc rax
    dec rax
    
    mov byte[var3], 0
    inc byte[var3]
    dec byte[var3]
    
    ; ------ neg command changes sign bit ------
    mov rax, -10
    neg rax
    neg rax
    
    mov qword[var1], -10
    neg qword[var1]
    neg qword[var1]
    
    
    ; --------------- add/sub ---------------
    mov rcx, 5
    add rcx, 6
    sub rcx, 2
    
    mov qword[var1], 4
    add qword[var1], 2
    sub qword[var1], 5

    mov rcx, 5
    mov qword[var1], 2
    add rcx, qword[var1]
    add qword[var1], rcx

    
    ; exit
    xor rax, rax
    ret