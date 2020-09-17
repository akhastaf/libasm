section .text
global  ft_strcmp

;rdi s1
;rsi s2
;rcx i
ft_strcmp:
            mov rcx, 0
            cmp rdi, 0
            je check_null  ; rsi slm rdi sl 
            cmp rsi, 0
            je check_null
            jmp check
check_null:
            cmp rdi, rsi
            jz  equal
            jg  grether
            jmp less
compare:
            mov dl, BYTE[rsi + rcx]
            cmp dl, BYTE[rdi + rcx]
            jne last_char
increment:
            inc rcx


check:
            cmp  BYTE[rdi + rcx], 0
            je last_char
            cmp  BYTE[rsi + rcx], 0
            je last_char
            jmp compare

last_char:
            mov dl, BYTE[rdi + rcx]
            cmp dl, BYTE[rsi + rcx]
            je equal
            jg grether
            jmp less
            
equal:
            mov rax, 0
            ret
less:
            mov rax, -1
            ret
grether:
            mov rax, 1
            ret