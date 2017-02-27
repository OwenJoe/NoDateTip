//
//  ZOffInternetTip.m
//  断网提示
//
//  Created by imac on 2017/2/27.
//  Copyright © 2017年 imac. All rights reserved.
//

#import "ZNoDateTip.h"



#define ZWidth        [UIScreen mainScreen].bounds.size.width
#define ZHeight       [UIScreen mainScreen].bounds.size.height


//包含按钮/文字/图片的View的size
#define conWidth      ZWidth/3
#define conHeight     ZHeight/5

//图片的size
#define tipViewWidth  conWidth
#define tipViewHeight conHeight-30

@implementation ZNoDateTip


+(UIView *)OffInternetWithTipImgStr:(NSString *)tipImgStr  TipLabStr:(NSString *)tipLabStr TipLabColor:(UIColor *)tipLabColor TipLabFont:(NSInteger )tipLabFont {

    UIView *conView = [[UIView alloc]initWithFrame:CGRectMake((ZWidth-conWidth)/2,  (ZHeight-conHeight)/2+22, conWidth, conHeight)];

    
    UIImageView *tipView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, tipViewWidth, tipViewHeight)];
    tipView.image = [UIImage imageNamed:tipImgStr];
    [conView addSubview:tipView];

    
    UILabel *tipLab = [[UILabel alloc]initWithFrame:CGRectMake(0, tipViewHeight+30, conWidth, conHeight-tipViewHeight)];
    [conView addSubview:tipLab];
    tipLab.text = tipLabStr;
    tipLab.textColor = tipLabColor;
    tipLab.textAlignment = NSTextAlignmentCenter;
    tipLab.font = [UIFont systemFontOfSize:tipLabFont];

    return conView;
}


-(UIView *)OffInternetWithTipImgStr:(NSString *)tipImgStr  TipBtnStr:(NSString *)tipBtnStr TipBtnColor:(UIColor *)tipBtnColor TipBtnBgColor:(UIColor *)tipBtnBgColor tipButtonBlock:(void(^)(UIButton *btn))tipButton{
    
    UIView *conView = [[UIView alloc]initWithFrame:CGRectMake((ZWidth-conWidth)/2,  (ZHeight-conHeight)/2+22, conWidth, conHeight)];
    
    
    UIImageView *tipView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, tipViewWidth, tipViewHeight)];
    tipView.image = [UIImage imageNamed:tipImgStr];
    [conView addSubview:tipView];
    
    
    UIButton *tipBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, tipViewHeight+30, conWidth, conHeight-tipViewHeight)];
    [conView addSubview:tipBtn];
    [tipBtn setTitle:tipBtnStr forState:UIControlStateNormal];
    [tipBtn setTitleColor:tipBtnColor forState:UIControlStateNormal];
    [tipBtn setBackgroundColor:tipBtnBgColor];
    
    //按钮回调
    if (tipButton) {
        
        tipButton(tipBtn);
    }
    
    return conView;
}





@end
