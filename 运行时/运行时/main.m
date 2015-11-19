//
//  main.m
//  运行时
//
//  Created by 葛聪颖 on 15/11/18.
//  Copyright © 2015年 聪颖不聪颖. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "CYPerson.h"

void getIvars()
{
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([CYPerson class], &count);
    
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i]; // *(ivars + i)
        NSLog(@"%s %s", ivar_getName(ivar), ivar_getTypeEncoding(ivar));
    }
    
    free(ivars);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int count = 0;
        objc_property_t *properties = class_copyPropertyList([CYPerson class], &count);
        
        for (int i = 0; i < count; i++) {
            objc_property_t property = properties[i];
            NSLog(@"%s   ----     %s", property_getName(property), property_getAttributes(property));
        }
        
        free(properties);
        
        //        method_exchangeImplementations(<#Method m1#>, <#Method m2#>)
    }
    return 0;
}
