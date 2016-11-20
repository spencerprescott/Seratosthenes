//
//  SEViewModel.h
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SEViewModel : NSObject

#pragma mark - Life Cycle Hooks
/** Called when view model will become the main view model */
- (void)willBecomeActive;
/** Called when view model is the main view model */
- (void)didBecomeActive;
/** Called when view model will give up the role of the main view model */
- (void)willResignActive;
@end
