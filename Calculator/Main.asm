INCLUDE Irvine32.inc
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, deExitCode:DWORD


.data
   ;variables
msg byte "insert the expression:",0 
msg1 byte "=",0
buffer byte 30 DUP(0)  ;array to get string from user          
sign   WORD 1            ;the sign of the number
nr     DWORD 0             
co     WORD 0              ; flag to know the operation (multiplication  or Division)
result DWORD 0         
aux    DWORD 0            ; store the number that will be multiplied or divided


.code
main PROC




INVOKE ExitProcess, 0

main ENDP
END main