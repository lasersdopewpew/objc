#import "Fraction.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
    
    //set
    [aFraction setTo: 1 over: 4];
    [bFraction setTo: 1 over: 2];
    
    //print
    [aFraction print];
    NSLog (@"+");
    [bFraction print];
    NSLog (@"=");
    
    //add a to b and print
    [aFraction add: bFraction];
    [aFraction print];
    
    NSLog (@"bFraction.numerator is: %i", bFraction.numerator);
    
    //release memz
    [aFraction release];
    [bFraction release];
    [pool drain];
    return 0;
}