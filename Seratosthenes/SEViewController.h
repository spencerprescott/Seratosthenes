//
//  SEViewController.h
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SEScreens.h"
#import "UIColor+Utilities.h"
@class SEViewModel;

@interface SEViewController : UIViewController
/** View model that subclass must declare */
@property (strong, nonatomic) SEViewModel *viewModel;

- (void)presentScreen:(NSString *)screen withViewModel:(SEViewModel *)viewModel;
- (void)pushScreen:(NSString *)screen withViewModel:(SEViewModel *)viewModel;
- (void)dismissScreen;
@end
