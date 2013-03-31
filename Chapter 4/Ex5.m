//evaluate big-ass long expression and convert into exp format omg why why omg xcode is taking my soul

/* expresion is:
 
 (3.31 * 10^(-18) + 2.01 * 10^(-7) / (7.16 * 10^(-6) + 2.01 * 10^(-8)
 
 print result in exponential form
 first try will be to solve normally and then convert results var type to exp type
 SO SMART YO 
 
 apparently didn't work
 so good process is:
 declare what variable type it'll be
 ekxorise to expression se ena variable, converting manually tis dinameis se obj-c udnerstandable form
 print me %Le gia na einai se exponential double long form (sketo %e doesn't work)
 
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