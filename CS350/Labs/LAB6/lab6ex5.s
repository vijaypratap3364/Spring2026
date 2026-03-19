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
prompt: .asciz "Enter a positive integer N: "
newline: .asciz "\n"

.text
.globl main

main:
    # Print prompt
    li a7, 4
    la a0, prompt
    ecall
    
    # Read integer 
    li a7, 5
    ecall
    mv t0, a0       
    
    # start loop counter
    li t1, 1    
    
    # check loop condition 
    j loop_check

loop_start:
    # Print current number
    li a7, 1
    mv a0, t1
    ecall
    
    # Print newline
    li a7, 4
    la a0, newline
    ecall
    
    # Increment counter
    addi t1, t1, 1
    
loop_check:
    # Check if counter <= N
    ble t1, t0, loop_start
    
    # Loop finished, go to exit now
    j exit

exit:
    # Exit program
    li a7, 10
    ecall