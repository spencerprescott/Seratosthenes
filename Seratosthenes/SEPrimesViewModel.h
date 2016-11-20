//
//  SEPrimesViewModel.h
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "SEViewModel.h"
#import "SEPrimeNumberViewModel.h"
#import "SEPrimesGenerator.h"
@interface SEPrimesViewModel : SEViewModel
@property (strong, nonatomic, readonly) NSArray<SEPrimeNumberViewModel *> *primeNumberViewModels;

/** Load new prime numbers based on the limit and returns YES if the limit is valid (i.e a number less than 3000) */
- (BOOL)updateLimit:(NSString *)limitText;
@end
