//
//  SEPrimesGenerator.m
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "SEPrimesGenerator.h"

@interface SEPrimesGenerator ()
@property (strong, nonatomic) NSArray<NSNumber *> *primeNumbers;
@end

@implementation SEPrimesGenerator

- (instancetype)init {
    self = [super init];
    if (self) {
        _primeNumbers = @[];
        _limit = @0;
    }
    
    return self;
}

#pragma mark - Setters

- (void)setLimit:(NSNumber *)limit {
    if (![limit isEqualToNumber:_limit]) {
        _limit = limit;
        [self generatePrimeNumbers];
    }
}

#pragma mark - Actions

- (void)generatePrimeNumbers {
    NSMutableArray *primes = [NSMutableArray new];
    NSMutableArray *numbers = [NSMutableArray new];
    
    [numbers addObject:@2];
    for (NSUInteger i = 3; i <= self.limit.integerValue ; i += 2) {
        [numbers addObject:@(i)];
    }
    
    while (numbers.count) {
        NSNumber *primeNumber = [numbers firstObject];
        [numbers removeObjectAtIndex:0];
        for(NSUInteger i = primeNumber.integerValue * primeNumber.integerValue; i <= self.limit.integerValue; i += primeNumber.integerValue) {
            [numbers removeObject:@(i)];
        }
        [primes addObject:primeNumber];
    }
    
    self.primeNumbers = [primes copy];
}

@end
