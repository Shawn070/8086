DATA	SEGMENT

LIS	DW	-1，3，-5，4
CNT	DW	$-LIS
NUM	DW	LIS,S+4

DATA	ENDS

CODE	SEGMENT
ASSUME	CS:CODE,DS:DATA
START:	MOV	AX,DATA
	MOV	DS,AX
				
	MOV AX,LIS
	MOV	BX,OFFSET NUM
	MOV	CX,CNT
	MOV DX,NUM+2
	LEA	SI,LIS
	
	MOV	AH,4CH
	INT	21H
			
CODE	ENDS
	END	START
