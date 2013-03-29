#import "Fraction.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init], *sum2;
    
    [aFraction setTo: 1 over: 4];
    [bFraction setTo: -1 over: 2];
    
    sum2 = [aFraction add: bFraction];
    [sum2 print: TRUE];
    //when 'TRUE' there's a bug when f.numerator is negative and instead of -numerator/denominator it prints numerator/-denominator - the correct end-result, just with the
    //minus 'swapped'. in any other permutation of TRUE and minuses, when setting the fractions, everything's OK--as well as when print takes FALSE.
    
    
    /*
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
     */
    
    
    [aFraction release];
    [bFraction release];
    [sum2 release];
    [pool drain];
    return 0;
}