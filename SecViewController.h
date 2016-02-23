//
//  SecViewController.h
//  proto
//
//  Created by macpc on 24/04/15.
//  Copyright (c) 2015 macpc. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol passstring <NSObject>

-(void)Stringpassproto:(NSString *)str;

@end


@interface SecViewController : UIViewController

@property(nonatomic,retain)id<passstring> delegate;

@property (strong, nonatomic) IBOutlet UITextField *txtbox;


@end
