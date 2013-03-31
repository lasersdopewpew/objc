//calculate 200th triangular number

#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n, number, triangularnumber, counter, lasttriangular;
    
    triangularnumber = 0;

    for (counter = 1; counter <= 5; ++counter)
    {
        NSLog (@"Cycle #%i", counter);
        NSLog (@"Which triangular number do you want to compute?");
        scanf ("%i", &number);
    
        NSLog (@"Triangular numbers table");
        NSLog (@"n   Sum from 1 to %i", number);
        NSLog (@"--  ----------------");

            for (n = 1; n <= number; ++n)
            {
                triangularnumber += n;
                NSLog (@"%2i         %i", n, triangularnumber);
                lasttriangular = triangularnumber;
            }
            
        NSLog (@"\n");
        triangularnumber = 0;
    }

    NSLog (@"End of Triangular Computations Cycles.");
    NSLog (@"Last triangular was %i", lasttriangular);
    [pool drain];
    return 0;
}