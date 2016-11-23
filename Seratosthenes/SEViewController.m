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


@end
