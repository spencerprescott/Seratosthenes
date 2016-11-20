//
//  SEPrimesGenerator.h
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SEPrimesGenerator : NSObject
/** Array of prime numbers generated from the sieve of eratosthenes algorithm */
@property (strong, nonatomic, readonly) NSArray<NSNumber *> *primeNumbers;
/** Upperbound of prime number generation*/
@property (strong, nonatomic) NSNumber *limit;
@end
