//
//  ViewController.m
//  断网提示
//
//  Created by imac on 2017/2/27.
//  Copyright © 2017年 imac. All rights reserved.
//

#import "ViewController.h"
#import "ZNoDateTip.h"


#define ZWidth [UIScreen mainScreen].bounds.size.width
#define ZHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"无数据显示";

    [self noDateCarryOut];
    
}


-(void)noDateCarryOut{

//    [self.view addSubview: [ZNoDateTip OffInternetWithTipImgStr:@"off" TipLabStr:@"请重新加载" TipLabColor:[UIColor grayColor] TipLabFont:16]];
    
    
    ZNoDateTip *noDateView = [[ZNoDateTip alloc]init];
    [self.view addSubview: [noDateView OffInternetWithTipImgStr:@"off" TipBtnStr:@"点击重试" TipBtnColor:[UIColor blackColor] TipBtnBgColor:[UIColor yellowColor] tipButtonBlock:^(UIButton *btn) {
      
         NSLog(@"%@",btn);
         [btn addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
    }]];

}


#pragma mark -- 按钮点击事件
-(void)test:(UIButton *)btn{

    NSLog(@"按钮点击事件");
}









@end
