#***************************************
#
# Student Name: Vijay Pratap Singh
# Student Email: vpratapsingh@hawk.illinoistech.edu
# Course: CS 350 Computer Organization and Assembly Language Programming
# Assignment: Lab-05
#
# Summary of Assignment Purpose: assemble and execute programs in RARS & understand how system calls handle console input and output
#
# Date of Initial Creation: 02/26/2026
#
# Description of Program Purpose: Learn to use RARS for assembling and executing RISC-V programs, understand system calls for console I/O, write interactive programs with integer input/output, and observe register behavior during execution.
#
# Functions and Modules in this file: syscall, andi, slli, srli
#
# Additional Required Files:
#
#***************************************


.data
prompt: .asciz "Enter an Integer: "
mask: .asciz "Result after masking lower 4 bits: "
left_shift: .asciz "After left shift by 1: "
right_shift: .asciz "After right shift by 1: "
newline:    .asciz "\n"

.text
.globl main

main:
    #Prompt for integer
    la a0, prompt
    li a7, 4
    ecall
    
    li a7, 5
    ecall
    mv t0, a0
    
    # Mask lower 4 bits (AND with -16)
    andi t1, t0, -16 
    
    # Print mask result message
    li a7, 4
    la a0, mask
    ecall
    
    # Print masked value
    li a7, 1
    mv a0, t1
    ecall
    
    # Print newline
    li a7, 4
    la a0, newline
    ecall
    
    # Left shift by 1
    slli t2, t1, 1     
    
    # Print left shift result message
    li a7, 4
    la a0, left_shift
    ecall
    
    # Print left shifted value
    li a7, 1
    mv a0, t2
    ecall
    
    # Print newline
    li a7, 4
    la a0, newline
    ecall
    
    # Right shift by 1
    srli t3, t1, 1      
    
    # Print right shift result message
    li a7, 4
    la a0, right_shift
    ecall
    
    # Print right shifted value
    li a7, 1
    mv a0, t3
    ecall
    
    # Print final newline
    li a7, 4
    la a0, newline
    ecall
    
    # Exit program
    li a7, 10             # exit syscall
    ecall