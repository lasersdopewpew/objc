//calculator

#import <Foundation/Foundation.h>

//start @interface
@interface Calculator: NSObject
{
    double accumulator;
}
    //declare accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(void) printTotal;
-(double) accumulator;
    //declare calculator methods
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
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

-(void) printTotal
{
    NSLog (@"= %lf", accumulator);
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
@end
//end @implementation

//start @main
int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Calculator *deskCalc = [[Calculator alloc] init];
    double number;
    char operator;
    BOOL calcInstance = TRUE;
    
   // NSLog (@"Enter your desired \"number operator\" expression to be calculated (Waiting for input…):");
    
    NSLog (@"Begin Calculations -- Set accumulator and operator");
       
    while (calcInstance == TRUE) {
        scanf (" %lf %c", &number, &operator);
        if (operator == 'S') {
            [deskCalc setAccumulator: number];
            [deskCalc printTotal];
        }
        else if (operator == '+') {
            [deskCalc add: number];
            [deskCalc printTotal];
        }
        else if (operator == '-') {
            [deskCalc subtract: number];
            [deskCalc printTotal];
        }
        else if (operator == '*') {
            [deskCalc multiply: number];
            [deskCalc printTotal];
        }
        else if (operator == '/') {
            if (number == 0)
                NSLog (@"Oops. Division by zero.");
            else {
                    [deskCalc divide: number];
                    [deskCalc printTotal];
                }
            }
        else if (operator == 'E') {
            [deskCalc printTotal];
            NSLog (@"End of Calculations.");
            calcInstance = FALSE;
        }
        else
            NSLog (@"Unknown operator.");
    }

    [deskCalc release];
    [pool drain];
    return 0;
}