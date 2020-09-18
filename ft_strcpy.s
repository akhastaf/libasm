global ft_strcpy
section .text
;rdi dest
;rsi src
ft_strcpy:
            mov rcx, 0
            cmp rsi, 0
            je error
            jmp copy
increment:
            inc rcx
copy:
            mov dl, BYTE[rsi + rcx]
            mov BYTE[rdi + rcx], dl
            cmp BYTE[rsi + rcx], 0
            jne increment
            jmp return
return:
            mov rax, rdi
            ret
error:
        mov rax, rsi
        ret