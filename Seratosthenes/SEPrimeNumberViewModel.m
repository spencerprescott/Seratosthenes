//
//  SEPrimeNumberViewModel.m
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "SEPrimeNumberViewModel.h"

@interface SEPrimeNumberViewModel ()
@property (copy,  nonatomic) NSString *numberString;
@property (strong, nonatomic) NSNumber *primeNumber;
@property (nonatomic) float redValue;
@property (nonatomic) float blueValue;
@property (nonatomic) float greenValue;
@end

@implementation SEPrimeNumberViewModel

- (instancetype)initWithPrimeNumber:(NSNumber *)primeNumber {
    self = [super init];
    if (self) {
        _primeNumber = primeNumber;
        _numberString = [NSString stringWithFormat:@"%@", primeNumber];
    }
    
    return self;
}

@end
