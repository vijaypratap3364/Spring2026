#***************************************

# Student Name: Vijay Pratap Singh

# Student Email:vpratapsingh@hawk.illinoistech.edu

# Course: CS 350 Computer Organization and Assembly Language Programming
# Assignment: Lab-01

# Summary of Assignment Purpose: Use of Switch function
# Date of Initial Creation: 01/23/2026

# Description of Program Purpose: Successfully programmed and executed the code using switch function to prompt user to enter a choice to display different word messages and exit the program on specific choice.
#
# Functions and Modules in this file:
		# Function/Module Name: LAB 1 exercise 4
		# Summary of Purpose: Use of Switch Function
		# Input/Stored Value Requirements: int, while, printf, scanf and swtich functions used 
		# Values Stored/Returned: specific word messages linked with specific choices made by user

# Additional Required Files:
#
#***************************************


#include <stdio.h>

int main() {
    int choice = 0;
    
    while(choice != 3) {
        printf("\n MENU \n");
        printf("1. Print Hello\n");
        printf("2. Print Your Name\n");
        printf("3. Exit\n");
        printf("Enter your choice (1-3): ");
        
        scanf("%d", &choice);
        
        switch(choice) {
            case 1:
                printf("Good Morning\n");
                break;
            case 2:
                printf("How are you today?\n");
                break;
            case 3:
                printf("Exiting program. Have a nice day!\n");
                break;
            default:
                printf("Invalid choice! Please enter a number from 1 to 3.\n");
                break;
        }
    }
    return 0;
}