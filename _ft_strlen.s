section .text
global _ft_strlen

_ft_strlen:
        mov rax, -1
loop:
        inc rax
        cmp BYTE[rdi + rax], 0
        jne loop
done:
        ret

