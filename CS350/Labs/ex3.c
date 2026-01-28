#***************************************
#
# Student Name: Vijay Pratap Singh
#
# Student Email:vpratapsingh@hawk.illinoistech.edu
#
# Course: CS 350 Computer Organization and Assembly Language Programming
# Assignment: Lab-02
#
# Summary of Assignment Purpose: Introduction to C Programming Basics (datatypes, declaring variables∙input/output and loop operations)
#
# Date of Initial Creation: 01/23/2026
#
# Description of Program Purpose: able to learn declaring variables, basic 	data type operations, input/output operations,
	writing a conditional statement, and basic loop operations.
#
# Functions and Modules in this file:
		# Function/Module Name:
		# Summary of Purpose:
		# Input/Stored Value Requirements:
		# Values Stored/Returned:

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