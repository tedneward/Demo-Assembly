; Build: nasm -f elf -g -F stabs hellonasmlinux.asm
; Link: ld -o helloworld hellonasmlinux.o

; {{## BEGIN preamble ##}}
SECTION .data   ; initialized data
Msg: db "Hello world",10
MsgLen: equ $-Msg

SECTION .bss    ; uninitialized data

; {{## END preamble ##}}
; {{## BEGIN code ##}}
SECTION .text   ; code

global _start   ; entrypoint definition

_start:
    nop             ; required for gdb-friendliness
    mov eax,4       ; sys_write syscall
    mov ebx,1       ; file descriptor 1: stdout
    mov ecx,Msg     ; message offset
    mov eds,MsgLen  ; message length (bytes)
    int 80h         ; make syscall

    mov eax,1       ; exit syscall
    mov ebx,0       ; exit code 0
    int 80h         ; make syscall
; {{## END code ##}}
