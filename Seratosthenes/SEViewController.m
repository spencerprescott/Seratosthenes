//
//  SEViewController.m
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "SEViewController.h"
#import "SEViewModel.h"

@interface SEViewController ()
@end

@implementation SEViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.viewModel willBecomeActive];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.viewModel didBecomeActive];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.viewModel willResignActive];
}

- (void)setViewModel:(SEViewModel *)viewModel {
    _viewModel = viewModel;
}

#pragma mark - Navigation

- (void)presentScreen:(NSString *)screen withViewModel:(SEViewModel *)viewModel {
    SEViewController *viewController = [SEViewController viewControllerFromScreen:screen withViewModel:viewModel];
    [self.navigationController presentViewController:viewController animated:YES completion:nil];
}

- (void)pushScreen:(NSString *)screen withViewModel:(SEViewModel *)viewModel {
    SEViewController *viewController = [SEViewController viewControllerFromScreen:screen withViewModel:viewModel];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)dismissScreen {
    [self dismissViewControllerAnimated:YES completion:nil];
}

+ (SEViewController *)viewControllerFromScreen:(NSString *)screen withViewModel:(SEViewModel *)viewModel {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:[screen stringByReplacingOccurrencesOfString:@"ViewController" withString:@"Storyboard"] bundle:nil];
    SEViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:screen];
    if (viewModel) {
        viewController.viewModel = viewModel;
    }
    return viewController;
}


@end
