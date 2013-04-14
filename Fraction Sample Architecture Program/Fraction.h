#import <Foundation/Foundation.h>

//Fraction class

@interface Fraction: NSObject
{
    int numerator, denominator;
}
    //set method-properties
@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(void) reduce;

@end