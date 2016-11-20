//
//  SEPrimeNumberViewModel.h
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "SEViewModel.h"

@interface SEPrimeNumberViewModel : SEViewModel
/** Display text for prime number */
@property (copy, nonatomic, readonly) NSString *numberString;
/** Color values */
@property (nonatomic, readonly) float redValue;
@property (nonatomic, readonly) float blueValue;
@property (nonatomic, readonly) float greenValue;


- (instancetype)initWithPrimeNumber:(NSNumber *)primeNumber;

@end
