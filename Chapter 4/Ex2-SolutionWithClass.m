//Convert Celcius to Fahrenheit program

#import <Foundation/Foundation.h>

//start @interface section
@interface Temperature: NSObject
{
    int f;
    float c;
}
    //declare methods
-(void) setFahrenheit: (int) fh;
-(float) cls;
-(void) convert;

@end
//end @interface section

//start @implementation section
@implementation Temperature
-(void) setFahrenheit: (int) fh;
{
    f = fh;
}

-(float) cls;
{
    return c;
}

-(void) convert;
{
    c = (f - 32) / 1.8;
}

@end
//end @implementation


//start @main program
int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    //experiment with generating a class after sucessfully doing the classless try
    //conversion formula is C = (F - 32) / 1.8
    //go and generate @interface + @implementation, then return to @main ie. here:
    
    Temperature *converter = [[Temperature alloc] init];
    
    [converter setFahrenheit: 27];
    [converter convert];
    //print conversion
    NSLog (@"27F degress are %f", [converter cls]);
    
    [pool drain];
    return 0;
}