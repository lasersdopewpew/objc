//evaluate simple math exps of the form 'value operator value'

#import <Foundation/Foundation.h>

//start @interface
@interface Calculator: NSObject
{
    double accumulator;
}
//declare accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(void) accumulator;
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

-(void) accumulator
{
    NSLog (@"%.2f", accumulator);
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

int main (int argc, char *argv[]) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	Calculator *deskCalc = [[Calculator alloc] init];
    
	double value1, value2;
	char operator;
    
	NSLog (@"Type in your expression.");
	scanf (" %lf %c %lf", &value1, &operator, &value2);
    
	[deskCalc setAccumulator: value1];
    
    /*
	if (operator == '+') {
		[deskCalc add: value2];
        NSLog (@"%.2f", [deskCalc accumulator]);
    }
	else if (operator == '-') {
		[deskCalc subtract: value2];
           NSLog (@"%.2f", [deskCalc accumulator]);
    }
	else if (operator == '*') {
		[deskCalc multiply: value2];
           NSLog (@"%.2f", [deskCalc accumulator]);
    }
	else if (operator == '/') {
		if (value2 == 0)
			NSLog (@"Division by zero.");
		else {
			[deskCalc divide: value2];
            NSLog (@"%.2f", [deskCalc accumulator]);
        }
    }
        else
            NSLog (@"Unknown operator.");
    */
    
    
    //this ver is: have the NSLog inside [deskCalc accumulator]; and change it from double to void
    //could also add NSLog inside the add/subtract/multiply/divide methods, thus eliminating the 1 extra call to print the result
    //per line. essentially this and previous way are kinda the same since in both we write one extra call per operator.
    //i'm not sure though if one should add the print inside the add/subtract/etc because then what happens when you only want to
    //add numbers, etc.
    //ALSO: could update code with one extra method 'print' thus removing the NSLog from [deskCalc accumulator]; and have
    //a specific [deskCalc print]; method
    if (operator == '+') {
		[deskCalc add: value2];
        [deskCalc accumulator];
    }
	else if (operator == '-') {
		[deskCalc subtract: value2];
        [deskCalc accumulator];
    }
	else if (operator == '*') {
		[deskCalc multiply: value2];
        [deskCalc accumulator];
    }
	else if (operator == '/') {
		if (value2 == 0)
			NSLog (@"Division by zero.");
		else {
			[deskCalc divide: value2];
            [deskCalc accumulator];
        }
    }
    else
        NSLog (@"Unknown operator.");


	[deskCalc release];
	[pool drain];
	return 0;
}