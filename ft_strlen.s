section .text
global ft_strlen
ft_strlen:
        mov rax, 0
        jmp compare

increment:
        inc rax
compare:
        cmp BYTE[rdi + rax], 0
        jne increment
done:
        ret