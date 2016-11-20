//
//  SEPrimesViewController.m
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import "SEPrimesViewController.h"
#import "SEPrimesViewModel.h"
#import "SEPrimeNumberCollectionViewCell.h"

@interface SEPrimesViewController () <UICollectionViewDelegate, UICollectionViewDataSource, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *primesTextField;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (strong, nonatomic) SEPrimesViewModel *viewModel;
@end

@implementation SEPrimesViewController
static void *SEPrimesContext = &SEPrimesContext;

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.viewModel = [SEPrimesViewModel new];
    }
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.viewModel addObserver:self forKeyPath:NSStringFromSelector(@selector(primeNumberViewModels)) options:NSKeyValueObservingOptionNew context:SEPrimesContext];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // start at 100
    self.primesTextField.text = @"100";
    [self.viewModel updateLimit:self.primesTextField.text];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.viewModel removeObserver:self forKeyPath:NSStringFromSelector(@selector(primeNumberViewModels)) context:SEPrimesContext];
}


#pragma mark - UICollectionViewDelegate/ UICollectionViewDataSource

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SEPrimeNumberCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([SEPrimeNumberCollectionViewCell class]) forIndexPath:indexPath];
    [cell updateWithViewModel:self.viewModel.primeNumberViewModels[indexPath.item]];
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.viewModel.primeNumberViewModels.count;
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return [self.viewModel updateLimit:[NSString stringWithFormat:@"%@%@", textField.text, string]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.primesTextField resignFirstResponder];
    return YES;
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    // bail if wrong context of not selector we want
    if (context != SEPrimesContext || ![keyPath isEqualToString:NSStringFromSelector(@selector(primeNumberViewModels))]) {
        return;
    }
    [self.collectionView reloadData];
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
