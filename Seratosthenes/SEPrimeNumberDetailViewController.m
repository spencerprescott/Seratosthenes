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
    self.view.backgroundColor = [UIColor colorWithHue:self.viewModel.hue saturation:self.viewModel.saturation brightness:self.viewModel.brightness alpha:1];
    self.primeNumberLabel.text = self.viewModel.numberString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setViewModel:(SEViewModel *)viewModel {
    [super setViewModel:viewModel];
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
