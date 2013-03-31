//ex1p88 - generate a table of n and n^2 for integers values ranging from 1 to 10
//this version includes some extra sauce with the scanf command

#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int loopindex, counter, number, lastpower; //declare them Vz
    
    loopindex = 1;
    while (loopindex <= 5){ //the bigass loop
        NSLog (@"Cycle %i", loopindex);
        NSLog (@"Please enter a number to generate its 10 next numbers' table of the second power…");
        scanf ("%i", &number); //stealin yo keyboard input… thug life
        
        NSLog (@"%i's Table of its Second Power", number);
        NSLog (@"n    n^2");
        NSLog (@"-- --------");
        for (counter = 1; counter <= 10; ++counter, ++number){ //the smallass loop dealin with MATH *ali g move
            NSLog (@"%2i    %g", number, pow(number,2));
            lastpower = pow(number,2); //storin' them lastpower in them memoriez
        }
        NSLog (@"\n");
        ++loopindex; //advancing ONWARDS
    }
    
    NSLog (@"Last power number was %i", lastpower); //just because 
    
    [pool drain];
    return 0;
}