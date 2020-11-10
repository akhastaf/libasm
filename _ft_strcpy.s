global _ft_strcpy
section .text
;rdi dest
;rsi src
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
            jmp return
return:
            mov rax, rdi
            ret
error:
        mov rax, rsi
        ret