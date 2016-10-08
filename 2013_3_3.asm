DATA SEGMENT
    BUFF1   DW  9922H,5F00H,00FFH,8A56H,5544H
    BUFF2   DW  5 DUP (?)
CNT1    EQU 5
CNT2    EQU 8
DATA    ENDS
CODE    SEGMENT
ASSUME  CS:CODE,DS:DATA
START:  MOV AX,DATA
        MOV DS,AX
        
        MOV SI,OFFSET BUFF1
        MOV DI,OFFSET BUFF2
        MOV BX,0
        MOV CH,CNT1
NEXT:   MOV AX,[BX+SI]
        MOV CL,CNT2
        RCL AX,CL
        MOV [BX+DI],AX
        INC BX
        INC BX
        DEC CH
        JNZ NEXT
        
        HLT
CODE    ENDS
        END
