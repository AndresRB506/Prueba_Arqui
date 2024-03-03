section .data

	variable:  db ?

	msj_1: db "Presione una tecla y luego enter:" ,0xa
	msj1_tam: equ $-msj_1

	msj_2: db "Usted presiono la tecla:" ,0xa
	msj2_tam: equ $-msj_2

	msj_3: db "Fin del Programa."
	msj3_tam: equ $-msj_3
section .text
	global _start
global _ingreso
global _validacion
global _mostrar
global _fin
_start:
	mov rax,1
	mov rdi,1
	mov rsi,msj_1
	mov rdx,msj1_tam
	syscall
_ingreso:
	mov rax,0
	mov rdi,0
	mov rsi,variable
	mov rdx,1
	syscall
_validacion:
	mov rax, 1
	mov rdi, 1
	mov rsi, msj_2
	mov rdx, msj2_tam
	syscall
_mostrar:
	mov rax,1
	mov rdi,1
	mov rsi,variable
	mov rdx,1
	syscall
_fin:
	mov rax,1
	mov rdi,1
	mov rsi,msj_3
	mov rdx,msj3_tam

	mov rax,60
	mov rdi,0
	syscall
