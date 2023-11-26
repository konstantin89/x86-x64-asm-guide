# x86-x64-asm-guide

## Data sizes

Retard, remember that byte is 8 bits long!

Architecture data sizes:  
```
x86 word  = 2 bytes
x86 dword = 4 bytes (double word)
x86 qword = 8 bytes (quad word)
```

Defining data in .data segment:  
``` asm
section .data

; Data type sizes
byte_var db 1        ; db - Byte        (1 bytes)
word_var dw 2        ; dw - Word        (2 bytes)
double_word_var dd 3 ; dd - Double Word (4 bytes)
quad_word_var dq 4   ; dq - Quad Word   (8 bytes)
```