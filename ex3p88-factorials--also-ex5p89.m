//ex 3 p 88 - factorials: write a program to generate and print a table of the first 'n' factorials

#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int i, factorial, index, input;
    
    //get user input
    NSLog (@"Enter up to how many factorials you want to calculate:");
    scanf ("%i", &input);
    
    //print table
    NSLog (@"The first 10 factorials Table");
    NSLog (@"n      n!");
    NSLog (@"--    ----");
    
    //start factorial loops
    //first for is the 'n' printer, aka index
    for (index = 1; index <= input; ++index) {
        //second for is the factorial expression, should be interconnected w/ 1st w input + output
        factorial = 1;
        for (i = 1; i <= index; ++i) {
            factorial *= i;
        }
        NSLog (@"%2i        %i", index, factorial);
    }
    
    //μα τα σήμαντρα του βαγιαδολίδ βγήκε το καταραμένο το factorial expression
    
    [pool drain];
    return 0;
}