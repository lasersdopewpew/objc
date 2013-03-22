//program 5.8 with a negative number
//reverse them digits, yo

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int number, right_digit;
    
    NSLog (@"Enter number:");
    scanf ("%i", &number);
    
    while (number != 0) {
        right_digit = number % 10;
        NSLog (@"%i", right_digit);
        number /= 10;
    }
    
    [pool drain];
    return 0;
}