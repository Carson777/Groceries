//
//  AddItemsViewController.m
//  Groceries
//
//  Created by Carson Capper on 7/5/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import "AddItemsViewController.h"

@interface AddItemsViewController ()

@end

@implementation AddItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(IBAction) close {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)saveButtonPressed:(id)sender {
    [self.delegate saveButtonWasPressed: self.itemName.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
