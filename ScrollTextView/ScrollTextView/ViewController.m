//
//  ViewController.m
//  ScrollTextView
//
//  Created by suning on 2018/10/30.
//  Copyright © 2018年 suning. All rights reserved.
//

#import "ViewController.h"
#import "ZSScrollTextView.h"

@interface ViewController ()

@property (nonatomic, strong) ZSScrollTextView *scrollTextView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    NSString *text = @"iOS跑马灯效果,实现文字水平无间断滚动; 使用步骤: ";
    
    self.scrollTextView = [[ZSScrollTextView alloc] init];
    
    CGSize size = [self.scrollTextView getSizeForText:text numberOfLines:4 sizeThatFits:CGSizeMake(self.view.bounds.size.width - 20, MAXFLOAT)];
    self.scrollTextView.frame = CGRectMake(10, 100, size.width, size.height);
    
    self.scrollTextView.scrollText =text;
    [self.view addSubview:self.scrollTextView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
