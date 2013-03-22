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
    //implementing math conditional exps 'just because'
    //instead of 'if == x', which'd be a lot more straightforward as in the
    //original implementation, this is like a guessing game
    //guessing game semi-worked, implementing 'if == x' until figuring it out
    //ALL YOUR REGULAR EXPRESSIONS ARE BELONG TO US
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

/* THINKING ABOUT MORE EFFICIENT WAYS TO DO THIS
 
 Way #1
 can abstract the two instances of the if-block in a class and call it as an object
 so instead of n-lines there'll be only one (plus the class init = 2, doh)
 
 Way #2
 rewrite the if-block as 'switch' -- but still no big a deal on being more elegant
 
 Way #3
 to make the if-block as a for so incremental ++i on the '== number' conditional
 and then abstract it with way #1
 
 */