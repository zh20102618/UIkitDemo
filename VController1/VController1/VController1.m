//
//  VController1.m
//  UIkitDemo
//
//  Created by 张晗 on 2016/10/13.
//  Copyright © 2016年 kuangxiang. All rights reserved.
//

#import "VController1.h"

@interface VController1 ()

@end

@implementation VController1

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"VController1 初始化");
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        NSLog(@"VController1 从归档初始化");
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
//        self.view.backgroundColor = [UIColor whiteColor];
        NSLog(@"VController1 从xib初始化");
    }
    return self;
}

- (void)loadView {
    [super loadView];
    NSLog(@"VController1 开始加载视图");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"VController1 已经加载视图");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"VController1 开始布局子视图");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"VController1 完成布局子视图");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"VController1 即将显示");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"VController1 已经显示");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"VController1 即将消失");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"VController1 已经消失");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"VController1 收到内存警告");
}

@end
