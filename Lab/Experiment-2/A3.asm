// Write a program to multiply two 32-bit binary numbers stored starting from 0300H and 0310H respectively. And also store the result starting from 0320H.

.model small
.stack 100h

.data
    num1 dd 0        ; First 32-bit number (dividend)
    num2 dd 0        ; Second 32-bit number (divisor)
    result dd 0      ; Result (product)

.code
    mov ax, @data
    mov ds, ax

    ; Load the 32-bit numbers from memory
    mov si, 0300H
    mov di, 0310H
    mov eax, [si]    ; Load num1 into EAX
    mov ebx, [di]    ; Load num2 into EBX

    ; Multiply the numbers
    mul ebx          ; EAX * EBX -> EDX:EAX
    mov [result], eax ; Store the lower 32 bits of the result

    ; Store the upper 32 bits of the result
    mov [result + 4], edx

    ; Terminate the program
    mov ah, 4Ch
    int 21h

end
