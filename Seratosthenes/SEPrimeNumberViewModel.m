//
//  SEPrimeNumberViewModel.m
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "SEPrimeNumberViewModel.h"
#include <stdlib.h>

@interface SEPrimeNumberViewModel ()
@property (copy,  nonatomic) NSString *numberString;
@property (strong, nonatomic) NSNumber *primeNumber;
@property (nonatomic) float hue;
@property (nonatomic) float saturation;
@property (nonatomic) float brightness;
@end

@implementation SEPrimeNumberViewModel

- (instancetype)initWithPrimeNumber:(NSNumber *)primeNumber {
    self = [super init];
    if (self) {
        _primeNumber = primeNumber;
        _numberString = [NSString stringWithFormat:@"%@", primeNumber];
        
        // generate random color using prime number as max value, unless its greater than 255
        int max = MIN(128, _primeNumber.intValue);
        
        _hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
        _saturation = ( arc4random() % max / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
        _brightness = ( arc4random() % max / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    }
    
    return self;
}

@end
