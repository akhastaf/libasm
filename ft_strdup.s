section .text
global  ft_strdup
extern malloc
; rdi src
ft_strdup:
            cmp rdi, 0
            je error
len:
            mov rcx, 0
            jmp len_compare
len_increment:
            inc rcx
len_compare:
            cmp BYTE[rdi + rcx], 0
            jne len_increment
alloc:
            push rdi
            inc rcx
            mov rdi, rcx
            call malloc
            cmp rax, 0
            je error
            pop rdi
copy:
            mov rcx, 0
            jmp copy_compare
copy_increment:
                inc rcx
copy_compare:
            mov dl, BYTE[rdi + rcx]
            mov BYTE[rax + rcx], dl
            cmp BYTE[rdi + rcx], 0
            jne copy_increment
            jmp return
return:
        ret
error:
        mov rax, 0
        ret