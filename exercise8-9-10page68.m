//calculator

#import <Foundation/Foundation.h>

//start @interface
@interface Calculator: NSObject
{
    double accumulator;
    double mem;
}
    //declare accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
    //declare calculator methods
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
-(double) changeSign; //change sign of accumulator
-(double) reciprocal; //1/accumulator
-(double) xSquared; //accumulator squared
    //declare memory methods
-(double) memoryClear; //clear memory
-(double) memoryStore; //set memory to accumulator
-(double) memoryRecall; //set accumulator to memory
-(double) memoryAdd: (double) value; //add value into memory
-(double) memorySubtract: (double) value; //subtract value from memory
@end
//end @interface

//start @implementation
@implementation Calculator
-(void) setAccumulator: (double) value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(double) add: (double) value
{
    accumulator += value;
    return accumulator;
}

-(double) subtract: (double) value
{
    accumulator -= value;
    return accumulator;
}

-(double) multiply: (double) value
{
    accumulator *= value;
    return accumulator;
}
-(double) divide: (double) value
{
    accumulator /= value;
    return accumulator;
}
-(double) changeSign
{
    accumulator = -accumulator;
    return accumulator;
}
-(double) reciprocal
{
    accumulator = 1/accumulator;
    return accumulator;
}
-(double) xSquared
{
    accumulator = pow(accumulator,2);
    return accumulator;
}
        //implement memory methods
-(double) memoryClear
{
    mem = 0;
    return mem;
}
-(double) memoryStore
{
    accumulator = mem;
    return accumulator;
}
-(double) memoryRecall
{
    mem = accumulator;
    return accumulator;
}
-(double) memoryAdd: (double) value
{
    mem += value;
    return accumulator;
}
-(double) memorySubtract: (double) value
{
    mem -= value;
    return accumulator;
}
@end
//end @implementation

//start @main
int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Calculator *deskCalc = [[Calculator alloc] init];
    
    [deskCalc setAccumulator: 100.0];
    NSLog (@"Adding… Now the value of the accumulator is: %g", [deskCalc add: 200.0]);
    NSLog (@"Dividing… Now the value of the accumulator is: %g", [deskCalc divide: 15.0]);
    NSLog (@"Subtracting… Now the value of the accumulator is: %g", [deskCalc subtract: 10.0]);
    NSLog (@"Multiplying… Now the value of the accumulator is: %g", [deskCalc multiply: 5]);
    NSLog (@"The end result is %g.", [deskCalc accumulator]);
    [deskCalc memoryRecall];
    [deskCalc memoryAdd: 100];
    [deskCalc memoryStore];
    NSLog (@"Test mem %g", [deskCalc accumulator]);
        
    [deskCalc release];
    [pool drain];
    return 0;
}