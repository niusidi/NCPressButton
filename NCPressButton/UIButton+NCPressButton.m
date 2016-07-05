//
//  UIButton+NCPressButton.m
//  NCPressButton
//
//  Created by @n_city on 16/6/23.
//  Copyright © 2016年 TSINOVA. All rights reserved.
//

#import "UIButton+NCPressButton.h"
#import "NCPressButton.h"

@implementation UIButton (NCPressButton)

+ (UIButton *)pressButtonWithImage:(UIImage *)image frame:(CGRect)frame
{
    NCPressButton *button = [[NCPressButton alloc]initWithFrame:frame];
    button.pressButtonImage = image;
    return button;
}

+ (UIButton *)pressButtonWithImage:(UIImage *)image imageColor:(UIColor *)imageColor frame:(CGRect)frame
{
    NCPressButton *button = [[NCPressButton alloc]initWithFrame:frame];
    button.pressButtonImageColor = imageColor;
    button.pressButtonImage = image;
    return button;
}

+ (UIButton *)pressButtonWithColor:(UIColor *)color frame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor cornerRadius:(CGFloat)cornerRadius
{
    NCPressButton *button = [[NCPressButton alloc]initWithFrame:frame];
    button.backgroundColor = color;
    button.pressButtonCornerRadius = cornerRadius;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateHighlighted];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateHighlighted];
    return button;
}

+ (UIButton *)pressButtonWithColor:(UIColor *)color frame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth cornerRadius:(CGFloat)cornerRadius
{
    NCPressButton *button = [[NCPressButton alloc]initWithFrame:frame];
    button.backgroundColor = color;
    button.pressButtonCornerRadius = cornerRadius;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateHighlighted];
    [button setBorderWidth:borderWidth];
    [button setBorderColor:borderColor state:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateHighlighted];
    return button;
}

@end
