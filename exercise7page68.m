//routines library for graphical objects exercise

#import <Foundation/Foundation.h>

//start @interface
@interface Rectangle: NSObject
{
    int width;
    int height;
}
    //declare methods
-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;
@end
//end @interface

//start @implementation
@implementation Rectangle
-(void) setWidth: (int) w
{
    width = w;
}

-(void) setHeight: (int) h
{
    height = h;
}

-(int) width
{
    return width;
}

-(int) height
{
    return height;
}

-(int) area
{
    return width*height;
}

-(int) perimeter
{
    return (width+height)*2;
}
@end
//end @implementation

//start @main
int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Rectangle *rec = [[Rectangle alloc] init];
    
    //start commands
    [rec setWidth: 3];
    [rec setHeight: 4];
    NSLog (@"The rectangle is of %i width and %i height.", [rec width], [rec height]);
    NSLog (@"Its area is %i and the perimeter is %i", [rec area], [rec perimeter]);
    
    //drain them poolz
    [rec release];
    [pool drain];
    return 0;
}