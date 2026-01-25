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