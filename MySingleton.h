//
//  MySingleton.h
//  DayTen
//
//  Created by Chris Risner on 10/30/12.
//  Copyright (c) 2012 Chris Risner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject{
    NSMutableDictionary *info;
}
+(MySingleton*) getInstance;
-(void)doSomethingWithString:(NSMutableDictionary*)parameter;
-(NSMutableDictionary*)getInfo;

@end
