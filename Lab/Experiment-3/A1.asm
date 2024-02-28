//Write a program to arrange the given array of 8-bit binary numbers stored in the memory in ascending order (NUM DB 95H, 85H, 75H, 65H, 55H, 45H, 35H, 25H)

.model small
.data
NUM DB 95H, 85H, 75H, 65H, 55H, 45H, 35H, 25H
SIZE EQU $ - NUM ; Calculate the size of the array

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Outer loop for bubble sort
    mov cx, SIZE
outerLoop:
    mov si, 0
innerLoop:
    mov al, NUM[si]
    cmp al, NUM[si + 1]
    jbe noSwap ; If not greater or equal, skip swapping
    xchg al, NUM[si + 1]
    mov NUM[si], al
noSwap:
    inc si
    loop innerLoop

    dec cx
    jnz outerLoop

    ; Display the sorted array
    mov si, 0
displayLoop:
    mov dl, NUM[si]
    add dl, 30h ; Convert to ASCII
    mov ah, 02h ; Display character
    int 21h
    inc si
    loop displayLoop

    mov ah, 4Ch ; Exit program
    int 21h
main endp
end main
