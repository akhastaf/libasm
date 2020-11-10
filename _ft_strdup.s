section .text
global  _ft_strdup
extern _malloc
extern _ft_strcpy
extern _ft_strlen
_ft_strdup:
            mov r8, 0
            cmp rdi, 0
            je error
            mov rcx, -1
            call _ft_strlen
            push rdi
            inc rax
            mov rdi, rax
            call _malloc
            cmp rax, 0
            je error
            mov rdi, rax
            pop rsi
            call _ft_strcpy
            jmp return
error:
        mov rax, 0
        ret
return:
        ret