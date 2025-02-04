// Digital to Analog Converter
;memory interfacing
CODE SEGMENT
PORTA EQU 00H ;Address of Port A = 00H
Config EQU 06H ;Address of Config. Word = 06H
ORG 100H
MOV DX, Config
MOV AL, 10000000B; port C=output, port A=output in mode 0, PORT B=output in mode 0
OUT DX, AL
START:
MOV AL, 00000000B; All pins of port A will be (0)
MOV DX, PORTA
OUT DX,AL
;--------------------
MOV CX, 0ffh ; Small Delay
loopy1:
loop loopy1
;--------------------
MOV AL, 11111111B; All pins of port A will be (1)
MOV DX, PORTA
OUT DX,AL
;--------------------
MOV CX, 0ffh ; Small Delay again
loopy2:
loop loopy2
;--------------------
JMP START ; Loop forever
CODE ENDS
END
