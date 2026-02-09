#***************************************
#
# Student Name: Vijay Pratap Singh
# Student Email: vpratapsingh@hawk.illinoistech.edu
# Course: CS 350 Computer Organization and Assembly Language Programming
# Assignment: Lab-03
#
# Summary of Assignment Purpose: C program involving arthmetic and loop
#
# Date of Initial Creation: 2/2/2026
#
# Description of Program Purpose: create a high level C program involving arthmetic and loop. In this code, I used for loop to print the sum of first 10 natural numbers.
#
# Functions and Modules in this file: for loop, sum and int variable
#
# Additional Required Files:
#
#***************************************


#include <stdio.h>

int main() {
    int sum = 0;
    for(int i =10;i>=0;i--){
        sum=sum+i;
    }
    printf("The sum of numbers: %d\n",sum);

    return 0;
}