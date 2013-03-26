//program to generate table of primers

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int p, d;
    BOOL isPrime;
    
    NSLog (@"2");
    for (p = 3; p <= 50; p += 2) {
        isPrime = TRUE;
        
        for (d = 3; d < p; d += 2) {
            if (p % d == 0) {
                isPrime = FALSE;
            }
        }
        if (isPrime == TRUE); {
            NSLog (@"%i", p);
        }
    }
    
    [pool drain];
    return 0;
}