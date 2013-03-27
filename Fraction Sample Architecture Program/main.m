#import "Fraction.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
    Fraction *resultFraction;
    
    //set
    [aFraction setTo: 1 over: 4];
    [bFraction setTo: 1 over: 2];
    
    //print
    [aFraction print];
    NSLog (@"+");
    [bFraction print];
    NSLog (@"=");
    
    //add a to b and print
    resultFraction = [aFraction add: bFraction];
    [resultFraction print];
    
    // NSLog (@"Test—bFraction.numerator is: %i", bFraction.numerator);
    
   // [[aFraction add: bFraction] print]; //creates mem leak

    //release memz
    [aFraction release];
    [bFraction release];
    [resultFraction release];
    [pool drain];
    return 0;
}