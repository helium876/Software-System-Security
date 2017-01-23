;program constants
SYS_WRITE equ 4
SYS_EXIT equ 1
STDOUT equ 1
SAFE_EXIT equ 0

section .data
	hellomsg db "Hello World From Assembly", 0xa
	msglength equ $ - hellomsg

section .bss
	varMsg resb 4
	varLen resb 4 

section .text
	
	global _start:

	;print fucnction
	printString:
		;Write routine below
		mov eax, SYS_WRITE
		mov ebx, STDOUT
		mov ecx, [varMsg]
		mov edx, [varLen]
		int 0x80

	ret 

	_start: 

		;setuparguement for function
		mov [varMsg], DWORD hellomsg
		mov [varLen], DWORD msglength

		call printString
		int 0x80

