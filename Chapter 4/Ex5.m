//evaluate big-ass long expression and convert into exp format omg why why omg xcode is taking my soul

/* expresion is:
 
 (3.31 * 10^(-18) + 2.01 * 10^(-7) / (7.16 * 10^(-6) + 2.01 * 10^(-8)
 
 process is:
 declare what variable type it'll be
 store the expression in a variable, converting manually its powers in obj-c form
 print with %Le in order to be in exponential double long form (plain %e doesn't work)
 
*/

#import <Foundation/Foundation.h>

//start @main 
int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    // (3.31 * 10^(-18) + 2.01 * 10^(-7) / (7.16 * 10^(-6) + 2.01 * 10^(-8)
    
    long double expression;

    expression = (3.31 * pow(10,-18) + 2.01 * pow(10,-7)) / (7.16 * pow(10,-6) + 2.01 * pow(10,-8));
    NSLog (@"e = %Le", expression);
    
    [pool drain];
    return 0;
}
//end @main