section .data
	hellomsg db "Hello World From Assembly", 0xa
	msglength equ $ - hellomsg

section .text 
	global _start:

_start: 

	;Write routine

	mov eax, 4
	mov ebx, 1
	mov ecx, hellomsg
	mov edx, msglength
	int 0x80


	;size program
	mov eax, 1
	mov ebx, 0
	int 0x80

