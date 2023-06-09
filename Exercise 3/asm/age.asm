section .data
    prompt db 'Enter your age: '
    len_prompt equ $ - prompt

    adult db 'You are an adult.', 0
    minor db 'You are a minor.', 0

section .bss
    age resb 2   ; Reserve 2 bytes for the age input

section .text
    global _start

_start:
    ; Write prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, len_prompt
    int 0x80

    ; Read age
    mov eax, 3
    mov ebx, 0
    mov ecx, age
    mov edx, 2
    int 0x80

    ; Convert ASCII input to integer
    mov al, byte [age]
    sub al, 0x30
    movzx eax
