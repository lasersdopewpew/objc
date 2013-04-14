//ex 6 p 89 - rewrite programs 5.2 to 5.5 replacing all for loops with whiles
//to test, copy paste into main.m one program at a time run + build

//program 5.2
//calculate 200th triangular #

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n, triangularNumber = 0;
    
 // this is the for loop to be converted to while
 //   for (n = 1; n <= 200; n += 1) {
 //      triangularNumber += n;
 //   }
 
//should init first n because it's 0 but goes thru the while condition
    n = 1;
    while (n <= 200) {
        triangularNumber += n;
        n += 1;
    }
    
    NSLog (@"The 200th triangular number is %i", triangularNumber);
    
    [pool drain];
    return 0;
}

//program 5.3
//generate table of triangular

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n = 1, triangularNumber = 0;
    
    NSLog (@"Table of Triangulars");
    NSLog (@"n      Sum of 1 to n");
    NSLog (@"--     -------------");
    
    //for loop
    //for (n = 1; n<= 10; ++n) {
    //      triangularNumber += n;
    //      NSLog (@"%i             %i", n, triangularNumber);
    //}
    
    while (n <= 10) {
        triangularNumber += n;
        NSLog (@"%2i             %i", n, triangularNumber);
        ++n;
    }
    
    [pool drain];
    return 0;    
}


//program 5.4
//ask user what triangularnumber wants to compute

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n = 1, number, triangularNumber = 0;
    
    NSLog (@"What triangular number do you want to compute?");
    scanf ("%i", &number);
    
    //for loop
    //for (n = 1; n <= number; ++n) {
    //      triangularNumber += n;
    //}
    
    //initialize n in int command only when using while loop -- otheriwse it gets init'd by for loop
    while (n <= number) {
        triangularNumber += n;
        ++n;
    }
    
    NSLog (@"Triangular number %i is %i.", number, triangularNumber);
    
    [pool drain];
    return 0;
}

//program 5.5
//compute n-times aka show n-times prompt to compute triangular number aka nested fors, aka nested whiles

#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n = 1, number, triangularNumber = 0, counter = 1;
    
    //nested fors - all lines commented out
    //for (counter = 1; counter <= 5; ++counter) {
    //      NSLog (@"What triangular number do you want?");
    //      scanf ("%i", &number);
    //
    //      triangularNumber = 0;
    //              for (n = 1; n <= number; ++n) {
    //                      triangularNumber += n;
    //              }
    //      NSLog (@"Triangular number %i is %i", number, triangularNumber");
    //}
    
    while (counter <= 5) {
        NSLog (@"What triangular number do you want?");
        scanf ("%i", &number);
        
        while (n <= number) {
                triangularNumber += n;
                ++n;
            }
        NSLog (@"Triangular number %i is %i.", number, triangularNumber);
        n = 1;
        triangularNumber = 0;
        
        ++counter;
    }
    
    
    [pool drain];
    return 0;
}