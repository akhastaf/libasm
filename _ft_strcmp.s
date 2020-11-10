section .text
global  _ft_strcmp

; rdi s1
; rsi s2
_ft_strcmp:
            xor rbx, rbx
            xor rax, rax
            mov r15, -1
looop:   
            inc r15
            mov al, [rdi + r15]
            mov bl, [rsi + r15]
            cmp al, 0
            je done
            cmp bl, 0
            je done
            cmp al, bl
            je looop
            jmp done
done:
            sub rax, rbx
            ret