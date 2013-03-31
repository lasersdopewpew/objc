#import "Fraction.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *sum = [[Fraction alloc] init], *sum2;
    int i, n, pow2;
    
    [sum setTo: 0 over: 1];
    NSLog (@"Enter value for n:");
    scanf ("%i", &n);
    
    pow2 = 2;
    for (i = 1; i <= n; ++i) {
        [aFraction setTo: 1 over: pow2];
        sum2 = [sum add: aFraction];
        [sum release];
        sum = sum2;
        pow2 *= 2;
    }
    
    NSLog (@"After %i iterations, the sum is %g", n, [sum convertToNum]);
    NSLog (@"Or: ¬");
    [sum print: FALSE];
    
    
    [aFraction release];
    [pool drain];
    return 0;
}