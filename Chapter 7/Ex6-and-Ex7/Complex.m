#import "Complex.h"

@implementation Complex

@synthesize a1, b1;

-(void) setReal: (double) a
{
    a1 = a;
}

-(void) setImaginary: (double) b
{
    b1 = b;
}

-(void) print
{
    NSLog (@"Complex number is: %f+%fi", a1, b1);
    //NSLog (@"Complex number is: %i+%ii", (int) a1, (int) b1); if you want to print only integers
}

-(double) real
{
    return a1;
}

-(double) imaginary
{
    return b1;
}

-(Complex *) add: (Complex *) complexNum
{
    Complex *ComplexSum = [[Complex alloc] init];
    
    ComplexSum.a1 = a1 + complexNum.a1;
    ComplexSum.b1 = b1 + complexNum.b1;
    
    return ComplexSum;
}

@end