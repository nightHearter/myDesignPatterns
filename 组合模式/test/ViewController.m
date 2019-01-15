//
//  ViewController.m
//  test
//
//  Created by 张一奇 on 2019/1/15.
//  Copyright © 2019年 张一奇. All rights reserved.
//

#import "ViewController.h"
#import "testProtocal.h"
#import "model1.h"
#import "model2.h"
#import "model3.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray<testProtocal> *arr1;

@property (nonatomic, strong) NSMutableArray<NSObject<testProtocal> *> *arr2;

@property (nonatomic, strong) NSMutableArray *arr3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arr1 = [NSMutableArray<testProtocal> array];
    self.arr2 = [NSMutableArray array];
    self.arr3 = [NSMutableArray array];
    
    
    model1 *m1 = [model1 new];
    model2 *m2 = [model2 new];
    model3 *m3 = [model3 new];
    
//    [self.arr1 addObject:m1];
//    [self.arr1 addObject:m2];
//    [self.arr1 addObject:m3];
//
//    [self.arr1 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//
//        if ([obj respondsToSelector:@selector(heihei)]) {
//            [obj heihei];
//        }
//
//    }];
    
    [self.arr2 addObject:m1];
    [self.arr2 addObject:m2];
    [self.arr2 addObject:m3];

    [self.arr2 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {

        if ([obj respondsToSelector:@selector(heihei)]) {
            [obj heihei];
        }

    }];
    
//    [self.arr3 addObject:m1];
//    [self.arr3 addObject:m2];
//    [self.arr3 addObject:m3];
//
//    [self.arr3 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//
//        if ([obj respondsToSelector:@selector(heihei)]) {
//            [obj heihei];
//        }
//
//    }];
    
}

@end
