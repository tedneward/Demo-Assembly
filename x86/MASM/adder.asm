        .386
        .model flat, c
        .stack 100h

        .data
num1    sdword ?
num2    sdword 10

        .code
main    proc
        mov num1, 5
        mov eax, num1
        add eax, num2
        ret
main    endp
        end