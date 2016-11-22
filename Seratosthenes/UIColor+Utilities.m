//
//  UIColor+Utilities.m
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/21/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "UIColor+Utilities.h"
#import "SEPrimeNumberViewModel.h"

@implementation UIColor (Utilities)
+ (UIColor *)se_colorFromPrimeNumberViewModel:(SEPrimeNumberViewModel *)viewModel {
    return [UIColor colorWithHue:viewModel.hue saturation:viewModel.saturation brightness:viewModel.brightness alpha:1];
}
@end
