//evaluate polyominal

#import <Foundation/Foundation.h>

//experiment with generating a class after sucessfully doing the classless try
//polyo is 3x^3 - 5x^2 + 6
//x is 2.55
//evaluate it

//start @interface
@interface Polyominal: NSObject
{
    float x1;
    float poly;
}
    //declare methods
-(void) setX1: (float) x;
-(void) solvePoly;
-(float) returnPolyo;
@end
//end @interface

//start @implementation
@implementation Polyominal

-(void) setX1: (float) x;
{
    x1 = x;
}

-(float) returnPolyo;
{
    return poly;
}

-(void) solvePoly
{
    poly = 3*(x1*x1*x1)-5*(x1*x1)+6;
}
@end
//end @implementation

//start @main 
int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Polyominal *solveforx = [[Polyominal alloc] init];
    
    [solveforx setX1: 2.55];
    [solveforx solvePoly];
    //print results
    NSLog (@"Polyo is %f", [solveforx returnPolyo]);
    
    [solveforx release];
    [pool drain];
    return 0;
}
//end @main