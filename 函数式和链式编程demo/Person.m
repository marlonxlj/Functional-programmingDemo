//
//  Person.m
//  函数式和链式编程demo
//
//  Created by m on 2017/2/8.
//  Copyright © 2017年 XLJ. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)run
{
    NSLog(@"%s",__FUNCTION__);
}

- (void)eat
{
    NSLog(@"%s",__FUNCTION__);
}

- (Person *)run1
{
    NSLog(@"%s",__FUNCTION__);
    return self;
}

- (Person *)eat1
{
    NSLog(@"%s",__FUNCTION__);
    
    return self;
}

- (Person *(^)())run2
{
//    NSLog(@"%s",__FUNCTION__);
    Person * (^runBlock)() = ^ {
        NSLog(@"run2");
        return self;
    };
    return runBlock;
}

- (Person *(^)())eat2
{
    return ^{
        NSLog(@"吃");
        return self;
    };
}

- (Person *(^)(NSString *food))eat3{
    return ^(NSString *food){
        NSLog(@"吃3,%@",food);
        return self;
    };
}

- (Person *(^)(double distance))run3
{
    return ^(double distance){
        NSLog(@"跑3");
        return self;
    };
}

@end
