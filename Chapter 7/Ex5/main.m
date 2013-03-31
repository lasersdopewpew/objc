#import "Fraction.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *aFraction = [[Fraction alloc] init];
    
    [aFraction setTo: 10 over: 3];
    
    [aFraction print: FALSE];
    
    [aFraction release];
    [pool drain];
    return 0;
}