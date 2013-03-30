//complex numbers exercise

#import <Foundation/Foundation.h>

//start @interface
@interface Complex: NSObject
{
    double a1;
    double b1;
}
@property double a1, b1;

//declare methods
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print; //display as a+bi
-(double) real;
-(double) imaginary;
-(Complex *) add: (Complex *) complexNum;
@end
//end @interface

//start @implementation
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
//end @implementation

//start @main
int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Complex *complexnumber = [[Complex alloc] init], *sum2;
    Complex *complexnumber2 = [[Complex alloc] init];
    
    [complexnumber setReal: 5.3];
    [complexnumber setImaginary: 7];
    [complexnumber2 setReal: 2.7];
    [complexnumber2 setImaginary: 4];
    
    sum2 = [complexnumber add: complexnumber2];
    [sum2 print];
        
    [complexnumber release];
    [complexnumber2 release];
    [sum2 release];
    [pool drain];
    return 0;
}