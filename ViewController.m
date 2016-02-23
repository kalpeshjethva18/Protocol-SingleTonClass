//
//  ViewController.m
//  proto
//
//  Created by macpc on 24/04/15.
//  Copyright (c) 2015 macpc. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"
#import "MySingleton.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lbltemp;


- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *salesCountLabel = [NSString stringWithFormat:@"Yesterday you sold %@ apps", @(1000000)];
    
    
}
-(void)viewWillAppear:(BOOL)animated
{
}
- (IBAction)btn_ok:(UIButton *)sender{
    
    SecViewController *sec = [[SecViewController alloc]initWithNibName:@"SecViewController" bundle:nil];
    sec.delegate = self;
    [self.navigationController pushViewController:sec animated:YES];
}
-(void) Stringpassproto:(NSString *)str
{
    NSLog(@"pass string %@",str);
    lbltemp.text = str;
}

- (IBAction)tappedSaveData:(id)sender {
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"1" forKey:@"1"];
    [dict setObject:@"2" forKey:@"2"];
    [dict setObject:@"3" forKey:@"3"];
    [dict setObject:@"4" forKey:@"4"];
    
    MySingleton* singleton = [MySingleton getInstance];
    [singleton doSomethingWithString:dict];
}
- (IBAction)tappedLoadData:(id)sender {
    
    MySingleton* singleton = [MySingleton getInstance];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    dict = [singleton getInfo];
    
   
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nil message:[NSString stringWithFormat:@"%@",dict] delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
    NSLog(@"dictionary %@",dict);
    
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
