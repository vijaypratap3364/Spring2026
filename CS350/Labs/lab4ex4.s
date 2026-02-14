#***************************************
#
# Student Name: Vijay Pratap Singh
# Student Email: vpratapsingh@hawk.illinoistech.edu
# Course: CS 350 Computer Organization and Assembly Language Programming
# Assignment: Lab-04
#
# Summary of Assignment Purpose: Conversion of number from integer to Binary
#
# Date of Initial Creation: 2/9/2026
#
# Description of Program Purpose: This lab was based on conversion of integer value to its equivalent binary number using the shift and logical instructions. The answer should be between 0-15 values and binary output should be only 4 bits. 
# Functions and Modules in this file: .data, .text, .globl main, .main, la, lw, ecall, srli, addi, andi
#
# Additional Required Files:
#
#***************************************


.data
#integer value stored in memory
int: .word 13

#messages
msg: .asciiz "Number: "
newline: .asciiz "\n"
bin: .asciiz "Binary representation: "

.text
.globl main

main:
    #loading value from memory
    la t0, int
    lw t1, 0(t0)
    
    #printing msg
    li a0, 4
    la a1, msg
    ecall
    
    #printing number
    li a0, 1
    mv a1, t1
    ecall
    
    #printing msg
    li a0, 4
    la a1, newline
    ecall
    
    #printing msg
    li a0, 4
    la a1, bin
    ecall
    
    #Using shift right to convert it into Binary(0ne bit at a time)
    
    #printing 4th bit
    srli t2, t1, 3
    andi t2, t2, 1
    addi a1, t2, 48
    li a0, 11
    ecall
    
    #printing 3rd bit
    srli t2, t1, 2
    andi t2, t2, 1
    addi a1, t2, 48
    li a0, 11
    ecall
    
    #printing 2nd bit
    srli t2, t1, 1
    andi t2, t2, 1
    addi a1, t2, 48
    li a0, 11
    ecall
    
    #printing 1st bit
    andi t2, t1, 1
    addi a1, t2, 48
    li a0, 11
    ecall
    
    #exiting
    li a0, 10
    ecall