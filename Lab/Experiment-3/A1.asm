.MODEL SMALL
.STACK 20
.DATA ; Data segment starts here
ORG 1000H ; Memory address initialization
NUM DB 95H, 85H, 75H, 65H, 55H, 45H, 35H, 25H ; Eight 2-digit hex numbers input
SUM DW ? ; Variable to store the sum
COUNT DW 0008H ; Count variable to store the count of 8

.CODE ; Code starts here
START:
    MOV AX, @DATA ; Initializing DS: segment register
    MOV DS, AX
    MOV CX, COUNT ; Reg CX is initializing to COUNT=8
    MOV SI, 0000H ; Initializing Source Index Register SI=0000
    MOV AX, 0000H ; move AX=0000

REPEAT: ; Loop starts here
    ADD AL, NUM[SI] ; Moving the 1st array value to AL register
    JNC NEXT ; Jump If not Carry, here Next is a 16-bit address.
    ADD AH, 01 ; Add 01 to AH

NEXT: ; Next address reference
    INC SI ; Increment SI
    LOOP REPEAT ; Repeat loop reference

    MOV SUM, AX ; Moving the AX value to the Sum variable memory
    INT 3 ; Breakpoint interrupt

END START ; Stopping the program
