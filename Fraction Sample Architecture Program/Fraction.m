//
//  Fraction.m
//  FractionTest
//
//  Created by Apostolos Papadopoulos on 3/25/13.
//  Copyright (c) 2013 apas. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
    NSLog (@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else
        return NAN;
}

-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}

-(void) add: (Fraction *) f
{
    //to add the two fractions expression is as follows:
    //a/b+ c/d = ((a*d) + (b*c)) / (b*d)
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
}
@end