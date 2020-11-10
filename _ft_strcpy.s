global _ft_strcpy
section .text
_ft_strcpy:
            xor rcx, rcx
            cmp rsi, 0
            je error
            mov rcx, -1
loop:
            inc rcx
            mov dl, BYTE[rsi + rcx]
            mov BYTE[rdi + rcx], dl
            cmp BYTE[rsi + rcx], 0
            jne loop
            mov rax, rdi
            ret
error:
        mov rax, rsi
        ret