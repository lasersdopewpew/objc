//Reverse digits of number

#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int number, right_digit;
    
    NSLog (@"Enter number to be reversed:");
    scanf ("%i", &number);
    
    
    if (number != 0) {
        while (number != 0) {
            right_digit = number % 10;
            NSLog (@"%i", right_digit);
            number /= 10;
        }
    }
    else {
        NSLog (@"Number is %i", number); //number is always zero but using %i just for its sake, if not zero then negative
    }                                    //which can't be computed properly unless tinkering with data types
    
    
    [pool drain];
    return 0;
}