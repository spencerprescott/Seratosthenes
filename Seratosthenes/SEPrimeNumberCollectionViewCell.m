//
//  SEPrimeNumberCollectionViewCell.m
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "SEPrimeNumberCollectionViewCell.h"
#import "SEPrimeNumberViewModel.h"
#import "UIColor+Utilities.h"

@interface SEPrimeNumberCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@end

@implementation SEPrimeNumberCollectionViewCell

- (void)updateWithViewModel:(SEPrimeNumberViewModel *)viewModel {
    [super updateWithViewModel:viewModel];
    self.numberLabel.text = viewModel.numberString;
    self.backgroundColor = [UIColor se_colorFromPrimeNumberViewModel:viewModel];
}

@end
