#***************************************
#
# Student Name: Vijay Pratap Singh
# Student Email: vpratapsingh@hawk.illinoistech.edu
# Course: CS 350 Computer Organization and Assembly Language Programming
# Assignment: Lab-06
#
# Summary of Assignment Purpose: The purpose was to implement conditional branching using beq, bne, blt, bge and use loop counter to print integers
#
# Date of Initial Creation:03/02/2026
#
# Description of Program Purpose: To implement if and if-else logic in RISC-V, implement switch-case logic using branch instructions,implement switch without fall through behavior, implement switch with fall through behavior, write loop constructs using labels and branches, use system calls with conditional logic, build programs suitable for automated I/O grading
#
# Functions and Modules in this file: beq, bne, blt, bge
#
# Additional Required Files:
#
#***************************************



.data
prompt: .asciz "Enter grade number(1-4): "
a: .asciz "A\n"
b: .asciz "B\n"
c: .asciz "C\n"
d: .asciz "D\n"
invalid_msg: .asciz "Invalid input"

.text
.globl main

main:
    # print prompt
    li a7, 4
    la a0, prompt
    ecall
    
    # Read integer input
    li a7, 5
    ecall
    mv t0, a0 
    
    # Check if input is valid (1-4)
    li t1, 1
    blt t0, t1, invalid
    li t1, 4
    bgt t0, t1, invalid
    
    # Jump to appropriate case based on input
    li t1, 1
    beq t0, t1, case1
    li t1, 2
    beq t0, t1, case2
    li t1, 3
    beq t0, t1, case3
    li t1, 4
    beq t0, t1, case4
    
    case1:
    # Print grade A
    li a7, 4
    la a0, a
    ecall
    
case2:
    # Print grade B
    li a7, 4
    la a0, b
    ecall
    
case3:
    # Print grade C
    li a7, 4
    la a0, c
    ecall
    
case4:
    # Print grade D
    li a7, 4
    la a0, d
    ecall
    # Only this case jumps to exit
    j exit

invalid:
    # Print invalid message
    li a7, 4
    la a0, invalid_msg
    ecall

exit:
    # Exit program
    li a7, 10
    ecall
    
    
    
    