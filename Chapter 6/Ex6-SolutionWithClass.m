//ex6p120 - take int input, extract and display each digit as a word in english

#import <Foundation/Foundation.h>

//start @interface
@interface NumberToWord: NSObject
{
    int number1;
}
-(void) appendWord: (int) number;
@end
//end @interface

//start @implementation
@implementation NumberToWord
-(void) appendWord: (int) number
{
    if (number == 0)
        NSLog (@"zero");
    else if (number == 1)
        NSLog (@"one");
    else if (number == 2)
        NSLog (@"two");
    else if (number == 3)
        NSLog (@"three");
    else if (number == 4)
        NSLog (@"four");
    else if (number == 5)
        NSLog (@"five");
    else if (number == 6)
        NSLog (@"six");
    else if (number == 7)
        NSLog (@"seven");
    else if (number == 8)
        NSLog (@"eight");
    else if (number == 9)
        NSLog (@"nine");
}
@end

int main (int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NumberToWord *numbertoword = [[NumberToWord alloc] init];
    int input, right_digit;
    
    NSLog (@"Please type in an integer:");
    scanf ("%i", &input);
    
    do {
        if (input > 0) {
            right_digit = input % 10;
            [numbertoword appendWord: right_digit];
            input /= 10;
        } else if (input < 0) {
            while (input != 0) {
                right_digit = -(input % 10);
                [numbertoword appendWord: right_digit];
                input /= 10;
            }
            NSLog (@"minus");
        } else
            NSLog (@"zero");
    }
    while ( input != 0 );
    
    [numbertoword release];
    [pool drain];
    return 0;
}