#import "Fraction.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init], *sum;
    int num1, denom1, num2, denom2;
    BOOL ReduceOrNot = FALSE;
    
    NSLog (@"Enter numerator and denominator for first fraction:");
    scanf (" %i %i", &num1, &denom1);
    NSLog (@"Enter numerator and denominator for second fraction:");
    scanf (" %i %i", &num2, &denom2);
    
    if ((denom1 == 0) || (denom2 == 0)) {
        NSLog (@"Denominators can't be zero. Please try again.");
    } else {
        
        [aFraction setTo: num1 over: denom1];
        [bFraction setTo: num2 over: denom2];
    
        //test operations
        sum = [aFraction subtract: bFraction];
        [sum print: ReduceOrNot];
        [sum release];
    }
    
    [aFraction release];
    [pool drain];
    return 0;
}