//
//  CYPerson.h
//  运行时
//
//  Created by 葛聪颖 on 15/11/18.
//  Copyright © 2015年 聪颖不聪颖. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CYCat;

@interface CYPerson : NSObject
{
    int _money;
}
@property (nonatomic, assign, readonly) int age;
@property (nonatomic, assign) double height;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSArray *books;
@property (nonatomic, strong) id test;
@property (nonatomic, assign) Rect rect;
@property (nonatomic, copy) void (^block)();
@property (nonatomic, assign) int *p;
@property (nonatomic, strong) CYCat *cat;
@end