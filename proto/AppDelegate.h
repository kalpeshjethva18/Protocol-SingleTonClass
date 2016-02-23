//
//  AppDelegate.h
//  proto
//
//  Created by macpc on 24/04/15.
//  Copyright (c) 2015 macpc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(nonatomic,retain)ViewController *viewctrl;
@property(nonatomic,retain)UINavigationController *nav;
@property(nonatomic, retain)IBOutlet UIActivityIndicatorView *actloader;

@end

