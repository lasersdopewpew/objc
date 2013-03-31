//evaluate polyominal

#import <Foundation/Foundation.h>

//classless first try

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    //polyo is 3x^3 - 5x^2 + 6
    //x is 2.55
    
    float x;
    float polyo;

    x = 2.55;
    polyo = 3 * (x * x * x) - 5 * (x * x) + 6;
    
    NSLog (@"Polyo is %f", polyo);
    
    [pool drain];
    return 0;
}