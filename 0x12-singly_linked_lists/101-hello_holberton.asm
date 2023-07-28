section .data
    hello_message db "Hello, Holberton", 0
    format db "%s", 0

section .text
    global main
    extern printf

main:
    ; Prepare the arguments for printf
    mov rdi, format
    mov rsi, hello_message

    ; Call printf
    call printf

    ; Exit the program
    mov rdi, 0
    call exit

