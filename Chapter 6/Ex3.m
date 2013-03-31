//fract!!!!!!!!!!!

#import <Foundation/Foundation.h>

//start @interface
@interface Fraction: NSObject
{
    int numerator, denominator;
    int zero;
}
//declare accumulator methods
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) n;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
@end
//end @interface

//start @implementation
@implementation Fraction
-(void) print
{
    if (denominator == 1) {
        NSLog (@"%2i", numerator);
    }
    else if (numerator == 0) {
        zero = 0;
        NSLog (@"%2i", zero);
    }
    else
        NSLog (@"%i/%i ", numerator, denominator);
}
-(void) setNumerator: (int) n
{
    numerator = n;
}
-(void) setDenominator: (int) d
{
    denominator = d;
}
-(int) numerator
{
    return numerator;
}
-(int) denominator
{
    return denominator;
}
-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
@end
//end @implementation

int main (int argc, char *argv[]) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
    
    [aFraction setNumerator: 10]; //1st frac is 1/4
    [aFraction setDenominator: 2];
    
    [aFraction print];
    NSLog (@" =");
    NSLog (@"%2g", [aFraction convertToNum]);
    
    [bFraction setNumerator: 0]; //1st frac is 1/4
    [bFraction setDenominator: 150];
    [bFraction print]; //never assigned a value
    NSLog (@" =");
    NSLog (@"%2g", [bFraction convertToNum]);
    
    
    [aFraction release];
    [bFraction release];
	[pool drain];
	return 0;
}