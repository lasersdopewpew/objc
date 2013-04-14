/* first attempt for ex 7 p 49
 
define a class called XYPoint which holds Cartesian coords (x, y) (int)
define methods to individually set x and y coords of a point and retrieve their values
write the obj-c program

hide yo kids, hide yo wives

*/

#import <Foundation/Foundation.h>

//the @interface section

@interface XYPoint: NSObject
{
    int x1;
    int y1;
}

-(void) print;
-(void) setX: (int) x;
-(void) setY: (int) y;
-(int) x;
-(int) y;

@end

//end of @interface

//the @implementation section

@implementation XYPoint

-(void) print
{
    NSLog (@"x= %i, y= %i", x1, y1);
}

-(void) setX: (int) x
{
    x1 = x;
}

-(void) setY: (int) y
{
    y1 = y;
}

-(int) x
{
    return x1;
}

-(int) y
{
    return y1;
}

@end

//end of @implemention

//the @program section

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    XYPoint *xy1 = [[XYPoint alloc] init];
    
    //set xy coords
    [xy1 setX: 4];
    [xy1 setY: 5];
    
    //display coords
    //first way of calling the print instance method
    NSLog (@"The coords are:");
    [xy1 print];
    
    NSLog (@"\n \n");
    
    //second way of calling the instance variables
    NSLog (@"The coords of this instance are: x = %i and y = %i", [xy1 x], [xy1 y]);
    
    //release memory, kraken, drain them poolz
    [xy1 release];
    [pool drain];
    return 0;

}