INCLUDE Irvine32.inc

.data
   ;variables
msg byte "insert the expression:",0 
msg1 byte " result =",0
buffer byte 30 DUP(0)  ;array to get string from user          
sign   WORD 1            ;the sign of the number
nr     DWORD 0             
co     WORD 0              ; flag to know the operation (multiplication  or Division)
result DWORD 0         
aux    DWORD 0            ; store the number that will be multiplied or divided


.code
main PROC

start : 
  mov edx, offset msg        ;get the offest of the variable msg
  call WriteString           ;print the text in the variable msg to the user
  mov edx, offset buffer     ;get the offest of buffer
  mov ecx, sizeof buffer     ;put the size of the array in register ecx
  call ReadString            ;take input from user
  mov ebp,0                  ;put zero to ebp register ( index of the buffer array )

loop1 :                      ;while loop
  cmp ebp, ecx               ;compare ebp  register (index) with ecx register (string length)
  jae answer                 ;if (ebp >= ecx) then jump to label answer
  
digit :  
  cmp buffer[ebp],'0'
  jb switch                  ;jump to switch label if this char is less than cahr '0'
  cmp buffer[ebp],'9'
  ja switch                  ;jump to switch label if this char is greater than cahr '9' 
  mov bl,buffer[ebp]         ;store the char in ith index(ebp) into bl "char is BYTE" 
  sub bl,'0'                 ;convert char number to int number (v[i]-'0')
  movzx ebx, bl              ;convert 8-bit register to 32-bit(to adding the same size)
  mov ax ,10                 ;ax = 10
  mul nr                     ;eax = ax*nr => eax = 10*nr
  add eax , ebx              ;eax = eax+ebx => eax = 10*nr + (v[i]-'0')
  mov nr , eax               ;nr=nr*10 + (v[i]-'0')
  inc ebp                    ;i++ => ebp++
  jmp digit                  ;jump to get the second number like (123)


INVOKE ExitProcess, 0

main ENDP
END main
