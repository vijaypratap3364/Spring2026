#***************************************
#
# Student Name: Vijay Pratap Singh
#
# Student Email:vpratapsingh@hawk.illinoistech.edu
#
# Course: CS 350 Computer Organization and Assembly Language Programming
# Assignment: Lab-02
#
# Summary of Assignment Purpose: function with user input and loop function
#
# Date of Initial Creation: 01/26/2026
#
# Description of Program Purpose: Prompts user to enter number of integers they want to print and then ask the user for the input integers and print the sum of the given integers
# Functions and Modules in this file:
		# Function/Module Name: LAB 2 exercise 4
		# Summary of Purpose: user input, loop function and print sum
		# Input/Stored Value Requirements: int, printf, scanf and  while loop functions used
		# Values Stored/Returned: sum of the numbers provided by user

# Additional Required Files:
#
#***************************************


#include <stdio.h>

int main() {
    int integer;
    int numbers;
    int sum=0;
    
    printf("Enter how many numbers: ");
    scanf("%d",&integer);
    
    int i=1;
    while(i<=integer){
        printf("Enter number %d: ",i);
        scanf("%d",&numbers);
        sum=sum+numbers;
        i++;
    }
    printf("Sum: %d",sum);
    
    return 0;
}