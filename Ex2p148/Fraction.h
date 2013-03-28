//
//  Fraction.h
//  FractionTest
//
//  Created by Apostolos Papadopoulos on 3/25/13.
//  Copyright (c) 2013 apas. All rights reserved.
//

#import <Foundation/Foundation.h>

//Fraction class

@interface Fraction: NSObject
{
    int numerator, denominator;
}
    //set method-properties
@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f;
-(void) reduce;

@end