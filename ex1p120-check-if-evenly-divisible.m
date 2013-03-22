//ex1p120 - enter 2 integers, test if evenly divisible, display msg

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int a, b;
    
    NSLog (@"Please enter two numbers:");
    scanf(" %i %i", &a, &b);
    
    //c = (a % b);
    
    if ((a % b) == 0) {
        NSLog (@"%i and %i are evenly divisible.", a, b);
    } else {
        NSLog (@"%i and %i are not evenly divisible.", a, b);
    }
    
    [pool drain];
    return 0;
}