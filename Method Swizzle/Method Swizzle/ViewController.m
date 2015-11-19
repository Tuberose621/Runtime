//
//  ViewController.m
//  Method Swizzle
//
//  Created by 葛聪颖 on 15/11/18.
//  Copyright © 2015年 聪颖不聪颖. All rights reserved.
//

#import "ViewController.h"
#import "CYPerson.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//        Method method1 = class_getInstanceMethod([CYPerson class], @selector(run));
//        Method method2 = class_getInstanceMethod([CYPerson class], @selector(study));
//        method_exchangeImplementations(method1, method2);
//    
//    
//        CYPerson *p = [[CYPerson alloc] init];
//        [p run];
//    
//        [p study];
//
//    NSString *value = nil;
//    
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    //    dict[@"name"] = value;
//    
//    NSMutableArray *array = [NSMutableArray array];
//    [array addObject:value];
//    array[0] = value;
}

- (void)dealloc
{
    NSLog(@"-------dealloc");
    
//        self.data = nil;
//        self.images = nil;
//        
//        [self cancel];
}

@end
