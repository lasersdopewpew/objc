//ex6p120 - take int input, extract and display each digit as a word in english

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int number, right_digit;
    
    NSLog (@"Please type in an integer:");
    scanf ("%i", &number);
    
    do {
        if (number > 0) {
            right_digit = number % 10;
            if (right_digit == 0)
                NSLog (@"zero");
            else if (right_digit == 1)
                NSLog (@"one");
            else if (right_digit == 2)
                NSLog (@"two");
            else if (right_digit == 3)
                NSLog (@"three");
            else if (right_digit == 4)
                NSLog (@"four");
            else if (right_digit == 5)
                NSLog (@"five");
            else if (right_digit == 6)
                NSLog (@"six");
            else if (right_digit == 7)
                NSLog (@"seven");
            else if (right_digit == 8)
                NSLog (@"eight");
            else if (right_digit == 9)
                NSLog (@"nine");
            number /= 10;
        } else if (number < 0) {
            while (number != 0) {
                right_digit = -(number % 10);
                if (right_digit == 0)
                    NSLog (@"zero");
                else if (right_digit == 1)
                    NSLog (@"one");
                else if (right_digit == 2)
                    NSLog (@"two");
                else if (right_digit == 3)
                    NSLog (@"three");
                else if (right_digit == 4)
                    NSLog (@"four");
                else if (right_digit == 5)
                    NSLog (@"five");
                else if (right_digit == 6)
                    NSLog (@"six");
                else if (right_digit == 7)
                    NSLog (@"seven");
                else if (right_digit == 8)
                    NSLog (@"eight");
                else if (right_digit == 9)
                    NSLog (@"nine");
                number /= 10;
            }
            NSLog (@"minus");
        } else
            NSLog (@"zero");
    }
    while ( number != 0 );
    
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