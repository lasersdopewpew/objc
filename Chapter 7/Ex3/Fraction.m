#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print: (BOOL) YesOrNo;
{
    if (YesOrNo == TRUE) {
        Fraction *reduced = [[Fraction alloc] init];
        reduced.numerator = numerator;
        reduced.denominator = denominator;
        
        [reduced reduce];
        NSLog (@"%i/%i", reduced.numerator, reduced.denominator);
        
    } else
        NSLog (@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else
        return NAN;
}

-(void) setTo: (int) n over: (int) d
{
        numerator = n;
        denominator = d;
}

-(Fraction *) add: (Fraction *) f
{
    //to add the two fractions expression is as follows:
    //a/b+ c/d = ((a*d) + (b*c)) / (b*d)
    Fraction *result = [[Fraction alloc] init];

    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    //gotta return the result
    return result;
}

-(Fraction *) subtract: (Fraction *) f
{
   Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
        
    return result;
}

-(Fraction *) multiply: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    return result;
}

-(Fraction *) divide: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
        
    return result;
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
@end