//
//  MySingleton.m
//  DayTen
//
//  Created by Chris Risner on 10/30/12.
//  Copyright (c) 2012 Chris Risner. All rights reserved.

#import "MySingleton.h"
@implementation MySingleton

static MySingleton *singletonInstance;

+ (MySingleton*)getInstance{
    if (singletonInstance == nil) {
        singletonInstance = [[super alloc] init];
    }
    return singletonInstance;
}
-(void)doSomethingWithString:(NSMutableDictionary*)parameter {
    info = parameter;
}
-(NSMutableDictionary*)getInfo {
    return info;
}
@end