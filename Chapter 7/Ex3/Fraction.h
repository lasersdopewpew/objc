#import <Foundation/Foundation.h>

//Fraction class

@interface Fraction: NSObject
{
    int numerator, denominator;
    BOOL printYN;
}
    //set method-properties
@property int numerator, denominator;

-(void) print: (BOOL) printYN;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;


@end