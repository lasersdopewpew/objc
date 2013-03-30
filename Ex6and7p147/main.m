//ex 7 page 147 based on ex 6 of same page
//which itself is based on ex 6 from chapter 4

#import "Complex.h"

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