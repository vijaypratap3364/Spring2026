#***************************************
#
# Student Name: Vijay Pratap Singh
# Student Email: vpratapsingh@hawk.illinoistech.edu
# Course: CS 350 Computer Organization and Assembly Language Programming
# Assignment: Lab-07
#
# Summary of Assignment Purpose: implement jal and ret functions to sort the array using bubblesort.
#
# Date of Initial Creation: 03/09/2026
#
# Description of Program Purpose: Implement functions using jal and ret, implement parameterised functions, implement recursive functions, and understand stack usage in recursion 
#
# Functions and Modules in this file: jal, ret, li, lw, bge, slli
#
# Additional Required Files:
#
#***************************************



.data
array: .word 45, 12, 78, 23    # take an array of 4 integers to sort
size: .word 4                  # create size for that array

.text
.globl main

main:
    # Load array address and size into arguments
    la a0, array           # load address of the array
    lw a1, size            # a1 = size
    
    # Call bubble sort function
    jal ra, bubbleSort
    
    # Program exit call
    li a7, 10      
    ecall
    
bubbleSort:
    # Save return address on stack
    addi sp, sp, -8       
    sw ra, 4(sp)           
    sw s0, 0(sp)           
    
    # Initialize
    mv s0, a0            
    addi t5, a1, -1        
    
    # Outer loop 
    li t0, 0               # i = 0 
    
outer_loop:
    bge t0, t5, sortcomplete  
    
    # Inner loop 
    li t1, 0        # j = 0
    sub t6, t5, t0     # t6 = 3 - i
    
inner_loop:
    bge t1, t6, next_round   
    
    # Calculate address of array[j]
    slli t2, t1, 2          
    add t4, s0, t2          
    
    lw t2, 0(t4)           
    lw t3, 4(t4)           
    
    ble t2, t3, no_swap     # if t2 <=t3 then don't swap 
    
    # Swap elements
    sw t3, 0(t4)         
    sw t2, 4(t4)          
    
no_swap:
    addi t1, t1, 1           # j++
    j inner_loop
    
next_round:
    addi t0, t0, 1           # i++
    j outer_loop

sortcomplete:

    lw ra, 4(sp)         
    lw s0, 0(sp)           
    addi sp, sp, 8           
    ret                         # Return to main
