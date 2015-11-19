//
//  UIViewController+CYExtention.m
//  Method Swizzle
//
//  Created by 葛聪颖 on 15/11/18.
//  Copyright © 2015年 聪颖不聪颖. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@implementation UIViewController (CYExtension)
+ (void)load
{
    Method method1 = class_getInstanceMethod(self, NSSelectorFromString(@"dealloc"));
    Method method2 = class_getInstanceMethod(self, @selector(CY_dealloc));
    method_exchangeImplementations(method1, method2);
}

- (void)CY_dealloc
{
    NSLog(@"%@ - CY_dealloc", self);
    
        [self CY_dealloc];
}
@end
