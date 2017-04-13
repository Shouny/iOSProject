//
//  ViewController.m
//  抽屉(scrollView)
//
//  Created by admin on 2017/4/10.
//  Copyright © 2017年 Test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// 抽屉背景界面
@property (nonatomic,strong)UIScrollView *myScrollView;
// 左界面
@property (nonatomic,strong)UIView *leftView;
// 主界面
@property (nonatomic,strong)UIView *mainView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self createChouTiView];
    [self viewFrame];
}

#pragma mark - 抽屉界面
- (void)createChouTiView
{
    // 抽屉背景界面
    _myScrollView = [[UIScrollView alloc] init];
    _myScrollView.backgroundColor = [UIColor grayColor];
    _myScrollView.bounces = NO;
    _myScrollView.pagingEnabled = YES;
    [self.view addSubview: _myScrollView];
    
    // 左界面
    _leftView = [[UIView alloc] init];
    _leftView.backgroundColor = [UIColor whiteColor];
    [_myScrollView addSubview:_leftView];
    
    // 主界面
    _mainView = [[UIView alloc] init];
    _mainView.backgroundColor = [UIColor blackColor];
    [_myScrollView addSubview:_mainView];
}

- (void)viewFrame
{
    _leftView.frame = CGRectMake(0, 0, 150, self.view.frame.size.height);
    
    _mainView.frame = CGRectMake(150, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    _myScrollView.frame = self.view.bounds;
    _myScrollView.contentSize = CGSizeMake(self.view.frame.size.width + 150, self.view.frame.size.height);
    // 滚动到右边界
    CGPoint point = CGPointMake(150, 0);
    [_myScrollView setContentOffset:point animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
