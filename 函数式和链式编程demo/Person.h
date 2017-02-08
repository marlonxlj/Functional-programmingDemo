//
//  Person.h
//  函数式和链式编程demo
//
//  Created by m on 2017/2/8.
//  Copyright © 2017年 XLJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void)run;
- (void)eat;

- (Person *)run1;
- (Person *)eat1;

//实现函数式编程，需要返回block
- (Person *(^)())run2;

- (Person *(^)())eat2;

- (Person *(^)(NSString *food))eat3;
- (Person *(^)(double distance))run3;
@end
