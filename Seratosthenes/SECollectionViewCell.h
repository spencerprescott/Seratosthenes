//
//  SECollectionViewCell.h
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SEViewModel;

@interface SECollectionViewCell : UICollectionViewCell
- (void)updateWithViewModel:(SEViewModel *)viewModel;
@end
