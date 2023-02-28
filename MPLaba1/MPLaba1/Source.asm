.686
.model flat, stdcall
.stack 100h
.data
X dw 67
Y dw 2
Z dw 13
M dw ?
.code
ExitProcess PROTO STDCALL :DWORD
Start:
MOV dx,0
MOV ax,Z
SAR ax,5
DIV Y
MOV bx,X
SUB bx,ax
MOV cx,X
SAR cx,5
MOV dx,Z
SAR dx,5
XOR cx,dx
MOV ax,Y
SAR ax,5
AND cx,ax
ADD bx,cx
MOV M,bx
exit:
Invoke ExitProcess,M
End Start