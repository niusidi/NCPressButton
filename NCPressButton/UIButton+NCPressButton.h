//
//  UIButton+NCPressButton.h
//  NCPressButton
//
//  Created by @n_city on 16/6/23.
//  Copyright © 2016年 TSINOVA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (NCPressButton)

/**
 * @brief The image button with original colors has the effect of pressing.
 * @param image - Button image
 * @param frame - Button frame
 * @return NCPressButton
 */
+ (UIButton *)pressButtonWithImage:(UIImage *)image frame:(CGRect)frame;

/**
 * @brief The image button has the effect of pressing, you can also set the color to the button image
 * @param image - Button image
 * @param imageColor - Set image color
 * @param frame - Button frame
 * @return NCPressButton
 */
+ (UIButton *)pressButtonWithImage:(UIImage *)image imageColor:(UIColor *)imageColor frame:(CGRect)frame;

/**
 * @brief The button has the effect of pressing, you can also set the background color & title & corner radius to the button
 * @param color - Button color
 * @param frame - Button frame
 * @param title - Button Title
 * @param cornerRadius - Button Corner Radius
 * @return NCPressButton
 */
+ (UIButton *)pressButtonWithColor:(UIColor *)color frame:(CGRect)frame title:(NSString *)title cornerRadius:(CGFloat)cornerRadius;

@end
