//
//  SEViewController.h
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SEViewModel;

@interface SEViewController : UIViewController
@property (strong, nonatomic) SEViewModel *viewModel;

- (instancetype)initWithViewModel:(SEViewModel *)viewModel;
@end
