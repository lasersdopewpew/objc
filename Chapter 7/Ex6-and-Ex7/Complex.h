#import <Foundation/Foundation.h>

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