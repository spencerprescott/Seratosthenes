//
//  SEPrimesViewModel.m
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "SEPrimesViewModel.h"

@interface SEPrimesViewModel ()
@property (strong, nonatomic) NSArray<SEPrimeNumberViewModel *> *primeNumberViewModels;
@property (strong, nonatomic) SEPrimesGenerator *primeNumberGenerator;
@property (strong, nonatomic) NSNumberFormatter *formatter;
@end

@implementation SEPrimesViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _primeNumberViewModels = @[];
        _primeNumberGenerator = [SEPrimesGenerator new];
    }
    
    return self;
}

#pragma mark - Getters

- (NSNumberFormatter *)formatter {
    if (!_formatter) {
        _formatter = [NSNumberFormatter new];
        _formatter.numberStyle = NSNumberFormatterDecimalStyle;
    }
    
    return _formatter;
}

#pragma mark - Actions

- (BOOL)updateLimit:(NSString *)limitText {
    // bail early if text is nil
    if (!limitText) {
        return NO;
    }
    
    // get number from string and bail if unparsable
    NSNumber *limit = [self.formatter numberFromString:limitText];
    if (!limit) {
        return NO;
    }
    
    // we need to limit the range, otherwise it will take until the end of the universe to find all the prime numbers if the upperbound is to large
    if (limit.integerValue > 3000) {
        return NO;
    }
    
    // generate prime numbers using new limit
    self.primeNumberGenerator.limit = limit;
    
    // Take prime numbers from generator and make them ready for display
    NSMutableArray *viewModels = [NSMutableArray new];
    [self.primeNumberGenerator.primeNumbers enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [viewModels addObject:[[SEPrimeNumberViewModel alloc] initWithPrimeNumber:obj]];
    }];
    
    self.primeNumberViewModels = viewModels;
    
    return YES;
}

@end
