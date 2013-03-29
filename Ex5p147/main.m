#import "Fraction.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init]; //*sum2;
    
    [aFraction setTo: 10 over: 3];
    [bFraction setTo: -1 over: 2];
    
    [aFraction print: FALSE];
    
  //  sum2 = [aFraction add: bFraction];
  //  [sum2 print: TRUE];
    //when 'TRUE' there's a bug when f.numerator is negative and instead of -numerator/denominator it prints numerator/-denominator - the correct end-result, just with the
    //minus 'swapped'. in any other permutation of TRUE and minuses, when setting the fractions, everything's OK--as well as when print takes FALSE.
    
    [aFraction release];
    [bFraction release];
   // [sum2 release];
    [pool drain];
    return 0;
}