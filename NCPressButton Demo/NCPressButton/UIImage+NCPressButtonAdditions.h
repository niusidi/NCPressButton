//
//  UIImage+NCPressButtonAdditions.h
//  NCPressButton
//
//  Created by @n_city on 16/6/23.
//  Copyright © 2016年 @onevcat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (NCPressButtonAdditions)

- (UIImage *)imageWithTintColor:(UIColor *)tintColor;
- (UIImage *)imageWithGradientTintColor:(UIColor *)tintColor;
- (UIImage *)imageWithTintColor:(UIColor *)tintColor blendMode:(CGBlendMode)blendMode;

@end
