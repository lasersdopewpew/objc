//ex 2 p 88 triangular numbers again this time with different formula
//formula is triangularNumber = n (n + 1) / 2
//generate every fifth triangular number between 5 and 50 (that is 5, 10, 15, 20… …50)

#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n, triangularNumber, lastTriangular;
    
    n = 5;
    
    NSLog (@"Table of every 5th triangular number between 5 and 50");
    NSLog (@"n      Triangular");
    NSLog (@"--    -------------");
    
    while (n <= 50) {
        triangularNumber = n * (n + 1) /2;
        NSLog (@"%2i    %i", n, triangularNumber);
        n = n + 5;
        lastTriangular = triangularNumber;
    }
    NSLog (@"\n");
    NSLog (@"Last triangular is %i", lastTriangular);
    [pool drain];
    return 0;
}