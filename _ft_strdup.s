
section .text
global  _ft_strdup
extern _malloc
; rdi src
_ft_strdup:
            mov r8, 0
            cmp rdi, 0
            je error
            mov rcx, -1
len_loop:
            inc rcx
            cmp r8, 1
            cmp BYTE[rdi + rcx], 0
            jne len_loop
alloc:
            push rdi
            inc rcx
            mov rdi, rcx
            call _malloc
            cmp rax, 0
            je error
            pop rdi
copy:
            mov rcx, -1
            mov r8, 1
copy_loop:
            inc rcx
            mov dl, BYTE[rdi + rcx]
            mov BYTE[rax + rcx], dl
            cmp BYTE[rdi + rcx], 0
            jne copy_loop
            jmp return
return:
        ret
error:
        mov rax, 0
        ret