//
//  main.m
//  Exercise7
//
//  Created by Tống Đăng Tình on 11/22/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//-----------------------------------------------------
/* - Suppose you are developing a library of routines to manipulate graphical objectives. Start by defining a new class call Rectangle. For now, just keep track of rectangle's width and height. Develop methods to set rectangle's width and height, retrieve these values, and calculate the rectangle's area and perimeter. Assume that these rectangle objects describle rectangles on an integral grid, such as a computer screen. In this cass, assume the the width and heigt of the rectangle ar integer values.
 
 Here is the @interface section for the Rectangle class:
 @interface Rectangle: NSObject
 {
 int width;
 int height; }
 -(void) setWidth: (int) w;
 -(void) setHeight: (int) h;
 -(int) width;
 -(int) height;
 -(int) area;
 -(int) perimeter;
 @end
 
 Write the implementation section adn a test your new class and methods
 */

#import <Foundation/Foundation.h>

//----------interface section
@interface Rectangle :NSObject
{
    int width;
    int height;
}
-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int)  width;
-(int)  height;
-(int) area;
-(int) perimeter;


@end



//---------implementation section


@implementation Rectangle

-(void) setWidth:(int)w
{
    width = w;
}

-(void) setHeight:(int)h
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
    return  (width + height)*2;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        Rectangle *myRectangle =[[Rectangle alloc] init];
        // SetWidth and setHeight
        [myRectangle setWidth:10];
        [myRectangle setHeight:16];
        // Display area and perimeter;
        NSLog(@"The area %i and %i is %i",[myRectangle width],[myRectangle height],[myRectangle area]);
        NSLog(@"The perimeter %i and %i is %i",[myRectangle width],[myRectangle height],[myRectangle perimeter]);
    }
    return 0;
}
