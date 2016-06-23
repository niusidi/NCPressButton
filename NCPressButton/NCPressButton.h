//
//  NCPressButton.h
//  NCPressButton
//
//  Created by @n_city on 16/6/23.
//  Copyright © 2016年 TSINOVA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NCPressButton : UIButton

@property (nonatomic, strong) UIImage *pressButtonImage;
@property (nonatomic, strong) UIColor *pressButtonImageColor;
@property (nonatomic, assign) CGFloat pressButtonCornerRadius;

@end
