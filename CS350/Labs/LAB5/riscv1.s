.data
msg: .asciz "Hello from RARS!\n"
.text
.globl main
main:
    # Print string
    la a0, msg
    li a7, 4
    ecall
    
    # Print integer 25
    li a0, 25
    li a7, 1
    ecall
    
    # Exit
    li a7, 10
    ecall