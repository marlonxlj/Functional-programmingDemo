//
//  ViewController.m
//  函数式和链式编程demo
//
//  Created by m on 2017/2/8.
//  Copyright © 2017年 XLJ. All rights reserved.
//
// 使用
// 1.自己封装框架
// 2.阅读他人的框架

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    Person *person = [Person new];
    
    [person run];
    [person eat];
    
    id obj = [person run1];
    [obj eat1];
    
    id obj2 = [person eat1];
    [obj2 run1];
    
    NSLog(@"**************链式编程***************");
    
    //1.链式编程
    [[person run1] eat1];
    
    //2.函数式编程
    //person.run2().eat2();
    
    person.run2().run2().eat2().run2();
    
    NSLog(@"***************");
    person.run3(500).eat3(@"食物").run3(1000).eat3(@"能量石");
    
}

@end
