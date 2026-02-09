#***************************************
#
# Student Name: Vijay Pratap Singh
#
# Student Email:vpratapsingh@hawk.illinoistech.edu
#
# Course: CS 350 Computer Organization and Assembly Language Programming
# Assignment: Lab-02
#
# Summary of Assignment Purpose: Use of separate array to find maximum value
#
# Date of Initial Creation: 01/26/2026
#
# Description of Program Purpose: Prompts user to enter 5 integers and then find the maximum number from those integers by using separate function for finding max value.

# Functions and Modules in this file:
		# Function/Module Name: LAB 2 exercise 5
		# Summary of Purpose: Use of separate array function to find maximum value
		# Input/Stored Value Requirements: int, printf, scanf and  array function
		# Values Stored/Returned: maximum value out of all values

# Additional Required Files:
#
#***************************************


#include <stdio.h>

int Max(int arr[], int size) {
    int max = arr[0]; 
    for(int i = 1; i < size; i++) {
        if(arr[i] > max) {
            max = arr[i];
        }
    }
    return max;
}

int main() {
    int numbers[5];
    
    printf("Enter 5 integers:\n");
    for(int i = 0; i < 5; i++) {
        scanf("%d", &numbers[i]);
    }
    int maxValue = Max(numbers, 5);
    printf("Maximum value in the array: %d\n", maxValue);
    
    return 0;
}