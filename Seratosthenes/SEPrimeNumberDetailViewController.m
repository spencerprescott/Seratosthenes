//
//  SEPrimeNumberDetailViewController.m
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/21/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "SEPrimeNumberDetailViewController.h"
#import "SEPrimeNumberViewModel.h"

@interface SEPrimeNumberDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *primeNumberLabel;
@property (strong, nonatomic) SEPrimeNumberViewModel *viewModel;
@end

@implementation SEPrimeNumberDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setViewModel:(SEPrimeNumberViewModel *)viewModel {
    [super setViewModel:viewModel];
    self.view.backgroundColor = [UIColor se_colorFromPrimeNumberViewModel:viewModel];
    self.primeNumberLabel.text = viewModel.numberString;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
