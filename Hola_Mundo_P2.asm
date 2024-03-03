;--------------------Segmento de datos--------------------
section .data
 linea_uno: db 'Hola mundo! Primera linea',0xa
 l1_tamano: equ $-linea_uno
 linea_dos: db 'Hola mundo! Segunda linea',0xa
 l2_tamano: equ $-linea_dos
;--------------------Segmento de codigo--------------------
section .text
 global _start ;Definicion de la etiqueta inicial
 global _segunda ;Etiqueta para depurar el programa
 global _tercera ; Etiqueta para depurar el programa
_start:
 ;Imprimir la primera linea
 mov rax,1 ;rax = sys_write (1)
 mov rdi,1 ;rdi = 1
 mov rsi,linea_uno ;rsi = linea_uno
 mov rdx,l1_tamano ;rdx = tamano de linea_uno
 syscall ;Llamar al sistema
 ;Imprimir la segunda línea
 mov rax,1 ;rax = sys_write (1)
 mov rdi,1 ;rdi = 1
 mov rsi,linea_dos ;rsi = linea_dos
 mov rdx,l2_tamano ;rdx = tamano de linea_uno
_segunda:
 syscall ;Llamar al sistema
 ;liberar los recursos
 mov rax,60 ;rax=sys_exit (60)
 mov rdi,0 ;rdi=0
_tercera:
 syscall ;Llamar al sistema
 ;fin del programa

