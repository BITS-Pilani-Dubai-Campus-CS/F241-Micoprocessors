// Write a program to divide one 8-bit binary number by another 8-bit number stored in memory and also store the result in memory. (Perform both unsigned and signed operation)

.model small
.stack 100h

.data
    dividend db 50   ; First 8-bit number (dividend)
    divisor db 5     ; Second 8-bit number (divisor)
    quotient db ?    ; Quotient (result)
    remainder db ?   ; Remainder

.code
    mov ax, @data
    mov ds, ax

    ; Unsigned division
    xor ah, ah        ; Clear AH register
    mov al, dividend  ; Load dividend into AL
    div divisor       ; Divide AL by divisor
    mov quotient, al  ; Store quotient
    mov remainder, ah ; Store remainder

    ; Signed division
    mov al, dividend  ; Load dividend into AL
    cbw              ; Convert AL to AX (sign extension)
    idiv divisor      ; Divide AX by divisor (signed division)
    mov quotient, al  ; Store quotient
    mov remainder, ah ; Store remainder

    ; Terminate the program
    mov ah, 4Ch
    int 21h

end
