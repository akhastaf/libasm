section .text
global  ft_strdup
extern malloc
; rdi src
ft_strdup:
            mov r8, 0
            cmp rdi, 0
            je error
len:
            mov rcx, 0
            jmp len_compare
increment:
            inc rcx
            cmp r8, 1
            je copy_compare
len_compare:
            cmp BYTE[rdi + rcx], 0
            jne increment
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
            mov r8, 1
            jmp copy_compare

copy_compare:
            mov dl, BYTE[rdi + rcx]
            mov BYTE[rax + rcx], dl
            cmp BYTE[rdi + rcx], 0
            jne increment
            jmp return
return:
        ret
error:
        mov rax, 0
        ret