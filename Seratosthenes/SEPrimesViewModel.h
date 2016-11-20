//
//  SEPrimesViewModel.h
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "SEViewModel.h"
#import "SEPrimeNumberViewModel.h"

@interface SEPrimesViewModel : SEViewModel
@property (strong, nonatomic, readonly) NSArray<SEPrimeNumberViewModel *> *primeNumberViewModels;
@end
