//calculate 200th triangular number

#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n, number, triangularnumber;
    
    triangularnumber = 0;
    
    NSLog (@"Which triangular number do you want to computer?");
    scanf ("%i", &number);
    
    NSLog (@"Triangular numbers table");
    NSLog (@"n   Sum from 1 to %i", number);
    NSLog (@"--  ----------------");
    
    for (n = 1; n <= number; ++n)
    {
        triangularnumber += n;
        NSLog (@"%2i          %i", n, triangularnumber);
    }
    
    [pool drain];
    return 0;
}