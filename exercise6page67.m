//complex numbers exercise

#import <Foundation/Foundation.h>

//start @interface
@interface Complex: NSObject
{
    double a1;
    double b1;
}
    //declare methods
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print; //display as a+bi
-(double) real;
-(double) imaginary;
@end
//end @interface

//start @implementation
@implementation Complex
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
}

-(double) real
{
    return a1;
}

-(double) imaginary
{
    return b1;
}
@end
//end @implementation

//start @main 
int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Complex *complexnumber = [[Complex alloc] init];
    
    //start commands
    [complexnumber setReal: 5.1];
    [complexnumber setImaginary: 6.2];
    [complexnumber print];
    NSLog (@"\n");
    NSLog (@"Real is %f and imaginary is %f", [complexnumber real], [complexnumber imaginary]);
    
    [complexnumber release];
    [pool drain];
    return 0;
}
//end @main