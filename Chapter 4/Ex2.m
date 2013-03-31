//Convert Celcius to Fahrenheit program

#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    //class-less first-try
    //conversion formula is C = (F - 32) / 1.8
    
    int f;
    float c;
    
    f = 27;
    c = (f - 32) / 1.8;
    
    NSLog (@"27F degrees are %f Celcius.", c);
    
    [pool drain];
    return 0;
}