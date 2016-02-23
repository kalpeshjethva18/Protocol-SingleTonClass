//
//  SecViewController.m
//  proto
//
//  Created by macpc on 24/04/15.
//  Copyright (c) 2015 macpc. All rights reserved.
//

#import "SecViewController.h"
#import "ViewController.h"

@interface SecViewController()

@end

@implementation SecViewController
@synthesize txtbox,delegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)btn_dismiss:(id)sender {
    [delegate Stringpassproto:txtbox.text];
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
