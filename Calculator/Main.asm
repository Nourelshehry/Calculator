INCLUDE Irvine32.inc

.data
   ;variables
msg byte "insert the expression:",0
msg1 byte "=",0
buffer byte 30 DUP(0)
var DWORD ?
sign WORD 1
i DWORD 0
n DWORD 0
nr DWORD 0
co WORD 0
result DWORD 0
aux DWORD 0


.code
main PROC




INVOKE ExitProcess, 0

main ENDP
END main