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
prompt_size: .asciz "Enter array size: "
numbers: .asciz "Enter numbers:\n"
max_value: .asciz "Maximum value: "
newline: .asciz "\n"
array: .space 160  

.text
.globl main

main:
    # Prompt user to enter size
    la a0, prompt_size         
    li a7, 4                   
    ecall
    
    li a7, 5                  
    ecall
    mv s0, a0                  
    
    # Read N integers into array
    la s1, array      # load the address of the array
    li t0, 0      # t0 = 0
    
    # Print numbers
    la a0, numbers
    li a7, 4
    ecall
    
read_loop:
    bge t0, s0, loop_done      
    
    # Read integer from user
    li a7, 5                  
    ecall
    
    # Store in array[i]
    slli t1, t0, 2              
    add  t2, s1, t1              
    sw   a0, 0(t2)               
    
    addi t0, t0, 1               
    j read_loop
    
loop_done:
    # Call findMax function
    mv a0, s1                 
    mv a1, s0                  
    jal ra, findMax            
    
    #Print the maximum value
    mv s2, a0                  
    
    la a0, max_value          
    li a7, 4
    ecall
    
    mv a0, s2                  
    li a7, 1                  
    ecall
    
    # Print newline
    la a0, newline
    li a7, 4
    ecall
    
    # Exit program
    li a7, 10                
    ecall

findMax:
    lw t0, 0(a0)     
    li t1, 1      
    
loop:
    bge t1, a1, done        
    
    slli t2, t1, 2          
    add t3, a0, t2          
    lw t4, 0(t3)           
    
    ble t4, t0, skip        
    mv t0, t4
    
skip:
    addi t1, t1, 1           
    j loop
    
done:
    mv a0, t0
    ret