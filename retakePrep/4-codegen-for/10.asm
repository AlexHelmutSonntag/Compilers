global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1
label1: resd 1
label2: resd 1

segment .text
main:
call read_unsigned
mov [label0], eax
mov eax, [label0]
mov [label1], eax
label3:
mov eax, [label0]
push eax
mov eax, 2
pop ebx
mul ebx
cmp [label1], eax
jnb label4
mov eax, [label1]
push eax
call write_unsigned
add esp,4
inc dword [label1]
jmp label3
label4:

ret
