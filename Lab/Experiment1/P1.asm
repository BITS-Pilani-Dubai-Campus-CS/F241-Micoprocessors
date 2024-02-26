//Write a program to add two 2-digit hexadecimal numbers available in memory and store the result in memory.
DATA SEGMENT
ORG 1000H
NUM1 DB 89H 
NUM2 DB 7CH 
RES DW ? 
ASSUME CS: CODE, DS: DATA 
START:
MOV AX, DATA
MOV DS, AX
MOV AH, 0 
MOV AL, NUM1
ADD AL, NUM2 
ADC AH, 0 
MOV RES, AX 
INT 3 
CODE ENDS
END START
