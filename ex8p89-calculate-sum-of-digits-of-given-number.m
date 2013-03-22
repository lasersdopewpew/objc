//ex 8 p 89
//calculate sum of digits of user's number

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int number, digit, digitSum = 0;
    
    NSLog (@"Please enter the number you want to compute its sum of digits:");
    scanf ("%i", &number);
    
    while (number != 0) {
        digit = number % 10;
        digitSum += digit;
        number /= 10;
    }
    
    NSLog (@"The sum is %i.", digitSum);
    
    [pool drain];
    return 0;
}