//
//  CYPerson.m
//  Method Swizzle
//
//  Created by 葛聪颖 on 15/11/18.
//  Copyright © 2015年 聪颖不聪颖. All rights reserved.
//

#import "CYPerson.h"
@implementation CYPerson

- (void)run
{
    NSLog(@"%s", __func__);
}

- (void)study
{
    NSLog(@"%s", __func__);
}

@end
