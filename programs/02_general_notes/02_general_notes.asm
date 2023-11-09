section .text
global main

main:
    mov rbp, rsp; for correct debugging

immidiate_values:

    ; Immidiate values are generally 32 bits.
    ; Only MOV command supports 64 bit immidiate values;
    
    mov rax, 0x0102030405060708 ; 8 byts (64 bits)
    ; RAX = 0x0102030405060708

    xor rax, rax
    
    add rax, 0x0102030405060708
    ; RAX = 0x5060708 !!!

    ; If you want to use 64 bit immidiates, first move them
    ; in to register and then use
    
    xor rax, rax
    mov rbx, 0x0102030405060708
    add rax, rbx
    ; RAX = 0x102030405060708
    

using_32_bit_registers:

    mov eax, 0x0102030405060708
    ; RAX = 0x5060708

    xor rax, rax

    mov ax, 0x0102030405060708
    ; RAX = 0x708
    
    mov R10, -1
    ; R10 = 0xffffffffffffffff
    mov R10W, 0
    ; R10 = 0xffffffffffff0000


push_pop:

    ; Important! PUSH/POP operations swupport only 64 and 16 bit data
    ;push eax ;This is error!
    
    push rax ;OK - 64 bit
    pop rax
    push AX  ;OK - 16 bit
    pop AX
    
exit:
    xor rax, rax
    ret