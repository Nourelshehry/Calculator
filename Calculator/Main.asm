.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, deExitCode:DWORD

.data
   ;variables



.code
main PROC




INVOKE ExitProcess, 0

main ENDP
END main