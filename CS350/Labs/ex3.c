#***************************************
#
# Student Name: Vijay Pratap Singh
#
# Student Email:vpratapsingh@hawk.illinoistech.edu
#
# Course: CS 350 Computer Organization and Assembly Language Programming
# Assignment: Lab-01
#
# Summary of Assignment Purpose: Simple Loop Practice
#
# Date of Initial Creation: 01/23/2026
#
# Description of Program Purpose: Successfully written and executed program to prompt user to enter a positive integer and print all numbers from 1 and also prinţ the sum of all numbers.

# Functions and Modules in this file:
		# Function/Module Name: LAB 1 exercise 3
		# Summary of Purpose: Loop Practice
		# Input/Stored Value Requirements: int, printf, scanf and  for loop functions used
		# Values Stored/Returned: prints all numbers and sum of those numbers

# Additional Required Files:
#
#***************************************


#include <stdio.h>

int main()
{
    int pnumber;
    
    printf("Enter a positive pnumber: ");
    scanf("%d",&pnumber);
    
    int sum=0;
    printf("Numbers: ");
    for(int i=1;i<=pnumber;i++){
        printf(" %d",i);
        sum=sum+i;
    }
    printf("\n");
    printf("Sum: %d",sum);
    
    return 0;

}