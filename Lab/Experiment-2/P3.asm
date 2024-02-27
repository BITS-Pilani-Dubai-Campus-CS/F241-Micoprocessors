// Write a program to multiply two 8-bit binary numbers stored in memory and also store the result in memory (both unsigned and signed operation).

.MODEL SMALL
.STACK 20
.DATA
ORG 1000H
N1 DB 35H 
N2 DB 82H 
Un_Sign_PROD DW ?
Sign_PROD DW ? 
.CODE
START:
MOV AX, @DATA 
MOV DS, AX
MOV AL, N1 
MUL N2 
MOV Un_Sign_PROD, AX 
MOV AL, N1 
IMUL N2 
MOV Sign_PROD, AX 
INT 3 
END START
