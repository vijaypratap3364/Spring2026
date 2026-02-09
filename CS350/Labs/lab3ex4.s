#***************************************
#
# Student Name: Vijay Pratap Singh
# Student Email: vpratapsingh@hawk.illinoistech.edu
# Course: CS 350 Computer Organization and Assembly Language Programming
# Assignment: Lab-03
#
# Summary of Assignment Purpose: RISC-V assembly language program
#
# Date of Initial Creation: 2/2/2026
#
# Description of Program Purpose: create a RISC-V assembly language program from C program which has same logic as C. Therefore, in this module, I created a program printing the sum  of first 10 natural numbers

# Functions and Modules in this file: .data, .text. loop, li, addi, loop, bne, ecall
#
# Additional Required Files:
#
#***************************************


.data
msg: .asciiz "Sum: "

.text
main:
    li x5, 10     # Assign x5 value 10
    li x6, 0      # Assign x6 value 0
    
loop:
    add x6, x6, x5    #sum the values of x6 and x5 and save it in x6
    addi x5, x5, -1   # decrement x5 by 1
    
    bne x5, x0, loop  # checks if x5 != 0 and then returns to loop
    
    # now we will print the result
    li a7, 4
    la a0, msg #prints the message Sum: 
    ecall
    
    li a7, 1
    addi a0, x6, 0 # assign a0 the value of a6
    ecall
    
    li a7, 10     # exits the code
    ecall