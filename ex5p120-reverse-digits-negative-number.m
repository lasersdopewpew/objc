//ex5p120 - reverse digits of number with correction if number < 0
//Program to reverse the digits of a number

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int number, right_digit;
    
    NSLog (@"Enter your number.");
    scanf ("%i", &number);
    
    do {
        if (number > 0) {
            right_digit = number % 10;
            NSLog (@"%i", right_digit);
            number /= 10;
        } else if (number < 0) {
            while (number != 0) {
                right_digit = -(number % 10);
                NSLog (@"%i", right_digit);
                number /= 10;
            }
            NSLog (@"-");
        } else
            NSLog (@"%i", number);
    }
    while ( number != 0 );
    
    [pool drain];
    return 0;
}