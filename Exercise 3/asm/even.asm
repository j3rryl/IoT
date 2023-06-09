section .data
    nl db 0x0A  ; Newline character

section .text
    global _start

_start:
    mov ecx, 1      ; Initialize counter

loop_start:
    cmp ecx, 11     ; Check if counter exceeds 10
    jg loop_end     ; If yes, exit loop

    test ecx, 1     ; Check if the number is odd (bitwise AND with 1)
    jnz next_num    ; If the result is not zero, it's odd, so skip printing

    ; Print even number
    mov eax, 4
    mov ebx, 1
    mov edx, 1
    mov esi, ecx
    add esi, 0x30    ; Convert the number to ASCII character
    int 0x80

next_num:
    inc ecx         ; Increment counter
    jmp loop_start  ; Loop back to start

loop_end:
    ; Print newline
    mov eax, 4
    mov ebx, 1
    mov ecx, nl
    mov edx, 1
    int 0x80

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80
