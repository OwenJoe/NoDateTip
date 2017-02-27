//
//  ZOffInternetTip.h
//  断网提示
//
//  Created by imac on 2017/2/27.
//  Copyright © 2017年 imac. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ZNoDateTip : NSObject


/**
 断网/无数据提示 (文字+图片)

 @param tipImgStr 图片名称
 @param tipLabStr 断网/无数据 文字说明
 @param tipLabColor 文字颜色
 @param tipLabFont 文字大小
 @return 返回内容View
 */
+(UIView *)OffInternetWithTipImgStr:(NSString *)tipImgStr  TipLabStr:(NSString *)tipLabStr TipLabColor:(UIColor *)tipLabColor TipLabFont:(NSInteger )tipLabFont;




/**
  断网/无数据 (按钮+文字)

 @param tipImgStr 图片名称
 @param tipBtnStr 断网/无数据 按钮文字
 @param tipBtnColor 断网/无数据 按钮文字颜色
 @param tipBtnBgColor 断网/无数据 按钮文字颜色
 @param tipButton 断网/无数据 按钮背景颜色
 @return 返回内容View
 */
-(UIView *)OffInternetWithTipImgStr:(NSString *)tipImgStr  TipBtnStr:(NSString *)tipBtnStr TipBtnColor:(UIColor *)tipBtnColor TipBtnBgColor:(UIColor *)tipBtnBgColor tipButtonBlock:(void(^)(UIButton *btn))tipButton;


@end
