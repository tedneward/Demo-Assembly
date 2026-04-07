; Assemble with "ml win32hello.asm /c"
; Link with "link win32hello.asm kernel32.lib /subsystem:console /entry:main"

; {{## BEGIN header ##}}
        .386
        .model flat

        extern _ExitProcess@4:near
        extern _GetStdHandle@4:near
        extern _WriteConsoleA@20:near

        public _main

; data declarations
        .data
msg     byte 'Hello, world!', 10
handle  dword ?
written dword ?

        .stack
; {{## END header ##}}

; {{## BEGIN main ##}}
        .code
_main:
        push -11
        call _GetStdHandle@4
        mov handle, eax

        push 0
        push offset written
        push 13
        push offset msg
        push handle
        call _WriteConsoleA@20

        push 0
        call _ExitProcess@4
        
        end
; {{## END main ##}}
